<?php

namespace App\Http\Controllers\Stisla;

use App\Arsip;
use App\Http\Controllers\Controller;
use App\Kantor;
use Illuminate\Http\Request;
use App\User;
use App\Models\Pengaturan;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class AutentikasiController extends Controller
{

    public function index()
    {
        return view('stisla.welcome', [
            'title'    => config('stisla.nama_aplikasi'),
        ]);
    }

    public function formMasuk()
    {
        return view('stisla.autentikasi.masuk', ['title' => 'Masuk']);
    }

    public function masuk(Request $request)
    {
        $request->validate([
            'email'        => 'required|exists:users',
            'password'    => 'required',
        ]);
        $user = User::where('email', $request->email)->first();
        $validator = Validator::make($request->all(), [
            'password'    => [
                function ($attribute, $value, $fail) use ($request, $user) {
                    if (!Hash::check($request->password, $user->password))
                        $fail('Password yang anda masukkan salah');
                }
            ]
        ]);

        if (!Hash::check($request->password, $user->password)) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        Auth::login($user, $request->filled('remember'));
        if ($request->query('redirect'))
            return redirect($request->query('redirect'));
        return redirect()->route('dashboard');
    }

    public function formDaftar()
    {
        return view('stisla.autentikasi.daftar', ['title' => 'Daftar']);
    }

    public function daftar(Request $request)
    {
        $request->validate([
            'nama'     => 'required',
            'email'    => 'required|unique:users',
            'password' => 'required',
        ]);

        $user = User::create([
            'nama'     => $request->nama,
            'email'    => $request->email,
            'password' => bcrypt($request->password),
            'avatar'   => asset('stisla/img/avatar/avatar-1.png'),
            'role'     => 'admin',
        ]);

        Kantor::create([
            'user_id' => $user->id,
            'nama'    => $request->nama,
        ]);

        Auth::login($user, $request->filled('remember'));
        if ($request->query('redirect'))
            return redirect($request->query('redirect'));
        return redirect()->route('dashboard');
    }

    public function dashboard()
    {
        return view('stisla.dashboard.index', [
            'title'  => 'Dashboard',
            'active' => 'dashboard',
        ]);
    }

    public function keluar()
    {
        Auth::logout();
        return redirect('');
    }

    public function profil()
    {
        return view('stisla.profil.index', [
            'title'  => 'Profil',
            'active' => 'profil',
            'd'      => Auth::user(),
            'action' => route('profil.update'),
        ]);
    }

    public function perbaruiProfil(Request $request)
    {
        $user = Auth::user();
        $rules = [
            'nama'   => 'required',
            'avatar' => 'nullable|file|mimes:jpeg,png',
        ];
        if (!env('IS_HEROKU', true)) {
            $rules['email']            = 'required|unique:users,email,' . $user->id;
            $rules['password']        = 'nullable|min:5';
            $user->email = $request->email;
            if ($request->filled('password'))
                $user->password = bcrypt($request->password);
        }
        $request->validate($rules);
        $user->nama = $request->nama;
        if ($request->file('avatar')) {
            $user->avatar = asset(Storage::url($request->file('avatar')->store('public/avatar')));
        }
        $user->save();
        return redirect()->back()->with('success_msg', 'Profil berhasil diperbarui');
    }

    public function pengaturan()
    {
        $pengaturan = \App\Models\Pengaturan::all()->groupBy('grup_label')->all();
        return view('stisla.pengaturan.index', [
            'title'      => \App\Models\Modul::where('nama', 'pengaturan')->first()->label,
            'action'     => route('pengaturan'),
            'active'     => 'pengaturan',
            'pengaturan' => $pengaturan,
        ]);
    }

    public function updatePengaturan(Request $request)
    {
        $pengaturan = Pengaturan::all();
        $rules = $pengaturan->each(function ($item) {
            if ($item->form_type == 'image')
                $item->rule = 'nullable|file|mimes:jpeg,png';
            else
                $item->rule = 'required';
            return $item;
        })->pluck('rule', 'key')->toArray();
        $request->validate($rules);
        $pengaturan = Pengaturan::all();
        foreach ($pengaturan as $p) {
            if ($p->form_type == 'image') {
                if ($request->file($p->key)) {
                    $gambar = asetku(Storage::url($request->file($p->key)->store('public/' . $p->key)));
                    $p->update([
                        'value' => $gambar,
                    ]);
                }
            } else {
                $p->update([
                    'value' => $request[$p->key],
                ]);
            }
        }
        return redirect()->back()->with('success_msg', 'Pengaturan berhasil diperbarui');
    }

    public function downloadFile($uuid)
    {
        $arsip = Arsip::query()->where('uuid', $uuid)->firstOrFail();
        return Storage::download($arsip->berkas, $arsip->nama_berkas);
    }
}
