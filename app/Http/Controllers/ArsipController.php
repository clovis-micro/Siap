<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Arsip;

class ArsipController extends Controller
{

	private $modul;

	public function __construct()
	{
		// $this->modul = \App\Models\Modul::where('nama', $this->jenis_dokumen)->first();
		$this->middleware(\App\Http\Middleware\HanyaAdmin::class)->except('index', 'unduh');
	}

	public function index($jenis_dokumen)
	{
		$jd = \App\JenisDokumen::where('route', $jenis_dokumen)->first();
		if(!$jd)
			abort(404);
		$data = Arsip::where('jenis_dokumen_id', $jd->id);
		if(\Auth::user()->role == 'admin')
			$data = $data->where('kantor_id', \Auth::user()->kantor->id);
		$data = $data->orderBy('tanggal', 'DESC')->get();
		return view('stisla.arsip.index', [
			'data'				=> $data,
			'active'			=> 'arsip/'.$jenis_dokumen,
			'jenis_dokumen'		=> $jenis_dokumen,
			'action_tambah'		=> route('arsip.create', [$jenis_dokumen]),
		]);
	}

	public function create($jenis_dokumen)
	{
		$jd = \App\JenisDokumen::where('route', $jenis_dokumen)->first();
		if(!$jd)
			abort(404);
		return view('stisla.arsip.tambah', [
			'action'		=> route('arsip.store', [$jenis_dokumen]),
			'active'		=> 'arsip/'.$jenis_dokumen,
			'modul'			=> $this->modul,
			'jenis_dokumen'	=> $jenis_dokumen,
		]);
	}

	public function store($jenis_dokumen, Request $request)
	{
		$jd = \App\JenisDokumen::where('route', $jenis_dokumen)->first();
		if(!$jd)
			abort(404);
		$rules = [
			'no_surat'		=> 'required',
			'tanggal'		=> 'required',
			'berkas'		=> 'required|file',
		];
		if($jenis_dokumen == 'surat_masuk'){
			$rules['pengirim'] = 'required';
		}
		else if($jenis_dokumen == 'surat_keluar'){
			$rules['penerima'] = 'required';
		}
		else if($jenis_dokumen == 'pegawai'){
			$rules['pegawai'] = 'required';
		}
		$request->validate($rules);
		$nama_berkas = $request->berkas->getClientOriginalName();
		$berkas_array = explode('.', $nama_berkas);
		$ektensi_berkas = end($berkas_array);
		$data = [
			'no_surat'			=> $request->no_surat,
			'jenis_dokumen_id'	=> $jd->id,
			'pengirim'			=> $request->pengirim,
			'penerima'			=> $request->penerima,
			'tanggal'			=> $request->tanggal,
			'berkas'			=> $request->file('berkas')->store(\Auth::user()->email.'/'.$jenis_dokumen),
			'nama_berkas'		=> $nama_berkas,
			'ekstensi_berkas'	=> $ektensi_berkas,
			'kantor_id'			=> \Auth::user()->kantor->id,
		];

		Arsip::create($data);

		$modul = \App\Models\Modul::where('nama', $jenis_dokumen)->first();

		return redirect()->back()->with('success_msg', $modul->label.' berhasil disimpan');
	}

	public function unduh($jenis_dokumen, Arsip $arsip)
	{
		$jd = \App\JenisDokumen::where('route', $jenis_dokumen)->first();
		if(!$jd)
			abort(404);
		if($arsip->jenis_dokumen_id != $jd->id)
			abort(404);
		if($arsip->berkas)
			return \Storage::download($arsip->berkas, $arsip->nama_berkas);
		abort(404);
	}

	public function show(Arsip $Arsip)
	{
		return view('stisla.arsip.tambah', [
			'title'			=> $this->modul->label.' Detail',
			'action'		=> null,
			'active'		=> 'arsip.index',
			'modul'			=> $this->modul,
			'd'				=> $Arsip,
		]);
	}

	public function edit(Arsip $Arsip)
	{
		return view('stisla.arsip.tambah', [
			'title'			=> $this->modul->label.' Ubah',
			'action'		=> route('arsip.update', ['Arsip'=>$Arsip->id]),
			'active'		=> 'arsip.index',
			'modul'			=> $this->modul,
			'd'				=> $Arsip,
		]);
	}

	public function update(Request $request, Arsip $Arsip)
	{
		$request->validate([
			'ini_text'			=> 'required',
			'ini_email'			=> 'required',
			'ini_datepicker'	=> 'required',
			'ini_gambar'		=> 'required',
			'ini_excel'			=> 'required',
			'ini_file'			=> 'required',
			'ini_textarea'		=> 'required',
			'ini_select'		=> 'required',
			'ini_select2'		=> 'required',
			'ini_password'		=> 'required',
		]);

		$data = [
			'ini_text'			=> $request->ini_text,
			'ini_email'			=> $request->ini_email,
			'ini_datepicker'	=> $request->ini_datepicker,
			'ini_gambar'		=> $request->file('ini_gambar')->store('public/ini_gambar'),
			'ini_excel'			=> $request->file('ini_excel')->store('public/ini_excel'),
			'ini_file'			=> $request->file('ini_file')->store('public/ini_file'),
			'ini_textarea'		=> $request->ini_textarea,
			'ini_select'		=> $request->ini_select,
			'ini_select2'		=> $request->ini_select2,
			'ini_password'		=> $request->ini_password,
		];

		$Arsip->update($data);

		return redirect()->back()->with('success_msg', $this->modul->label.' berhasil diperbarui');
	}

	public function destroy(Arsip $Arsip)
	{
		$Arsip->delete();
		return redirect()->back()->with('success_msg', $this->modul->label.' berhasil dihapus');
	}

}
