<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    protected $table = 'menu';

    protected $fillable = [
    	'ikon', 'route', 'parent_id', 'nama', 'is_blank', 'url', 'roles',
    ];

    public $timestamps = false;

    public $casts = [
        'roles' => 'array',
    ];

    public function sub()
    {
        return $this->hasMany('App\Models\Menu', 'parent_id');
    }
}
