<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Arsip extends Model
{

    protected $table = 'arsip';

    protected $appends = [
        'ekstensi_berkas_label',
        'qr_url',
        'qr_url2',
    ];

    protected $fillable = [
        'no_surat',
        'judul_surat',
        'jenis_dokumen_id',
        'pengirim',
        'penerima',
        'tanggal',
        'berkas',
        'nama_berkas',
        'ekstensi_berkas',
        'kantor_id',
        'disk',
        'keterangan',
        'maksud_surat',
        'acara',
        'tempat',
        'pengundang',
        'delegasi_hadir',
        'uuid',
    ];

    public function getEkstensiBerkasLabelAttribute()
    {
        if (in_array($this->ekstensi_berkas, ['pdf', 'ppt']))
            return '<span class="badge badge-danger">' . $this->ekstensi_berkas . '</span>';
        if (in_array($this->ekstensi_berkas, ['xls', 'xlsx']))
            return '<span class="badge badge-success">' . $this->ekstensi_berkas . '</span>';
        if (in_array($this->ekstensi_berkas, ['doc', 'docx']))
            return '<span class="badge badge-primary">' . $this->ekstensi_berkas . '</span>';
        return '<span class="badge badge-info">' . $this->ekstensi_berkas . '</span>';
    }

    // public function getQrUrlAttribute()
    // {
    //     return 'data:image/png;base64,' . \Milon\Barcode\Facades\DNS2DFacade::getBarcodePNG(route('download-file', $this->uuid), 'QRCODE', 3, 3);
    //     return route('download-file', ['uuid' => $this->uuid]);
    // }

    // public function getQrUrl2Attribute()
    // {
    //     return 'data:image/png;base64,' . \Milon\Barcode\Facades\DNS2DFacade::getBarcodePNG(route('download-file', $this->uuid), 'QRCODE', 10, 10);
    //     return route('download-file', ['uuid' => $this->uuid]);
    // }

    public function getQrUrlAttribute()
    {
        return \Milon\Barcode\Facades\DNS2DFacade::getBarcodeHTML(route('download-file', $this->uuid), 'QRCODE', 3, 3);
    }

    public function getQrUrl2Attribute()
    {
        return \Milon\Barcode\Facades\DNS2DFacade::getBarcodeHTML(route('download-file', $this->uuid), 'QRCODE', 10, 10);
    }
}
