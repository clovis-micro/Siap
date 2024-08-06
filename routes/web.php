<?php

use Illuminate\Support\Facades\Route;

Route::middleware(\App\Http\Middleware\Masuk::class)->group(function () {
    Route::get('/qr-view', function () {
        $arsip = \App\Arsip::query()->where('uuid', request('uuid'))->firstOrFail();
        return '<center style="margin-top: 20px;">' . $arsip->qr_url2 . '</center>';
    })->name('arsip.qr1');
    Route::get('/arsip/{jenis_dokumen}', 'ArsipController@index')->name('arsip');
    Route::get('/arsip/{jenis_dokumen}/tambah', 'ArsipController@create')->name('arsip.create');
    Route::get('/arsip/{jenis_dokumen}/laporan', 'ArsipController@laporan')->name('arsip.laporan');
    Route::get('/arsip/{jenis_dokumen}/laporan/pdf', 'ArsipController@laporanPdf')->name('arsip.laporan.pdf');
    Route::post('/arsip/{jenis_dokumen}', 'ArsipController@store')->name('arsip.store');
    Route::get('/arsip/{jenis_dokumen}/unduh/{arsip}', 'ArsipController@unduh')->name('arsip.unduh');
    Route::get('/arsip/{jenis_dokumen}/preview/{arsip}', 'ArsipController@preview')->name('arsip.preview');
    Route::get('/arsip/{jenis_dokumen}/ubah/{arsip}', 'ArsipController@edit')->name('arsip.edit');
    Route::put('/arsip/{jenis_dokumen}/perbarui/{arsip}', 'ArsipController@update')->name('arsip.update');
    Route::delete('/arsip/{jenis_dokumen}/hapus/{arsip}', 'ArsipController@destroy')->name('arsip.destroy');
    Route::resource('kantor', 'KantorController')->middleware(\App\Http\Middleware\HanyaSuperAdmin::class);
});

Route::get('backupAllDb', 'KantorController@backupAllDb')->name('backupAllDb');

Route::get('downloadBackupAllDb', 'KantorController@downloadBackupAllDb')->name('downloadBackupAllDb');


// Route::get('/phpinfo', function () {
//     phpinfo();
// });
