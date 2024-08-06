<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\User;

class GenerateAdmin extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::updateOrCreate([
            'id'    => 1,
        ], [
            'nama'     => 'Admin',
            'email'    => 'superadmin@sipad.com',
            'password' => bcrypt('superadmin'),
            'avatar'   => asset('stisla/assets/img/avatar/avatar-1.png'),
        ]);
    }
}
