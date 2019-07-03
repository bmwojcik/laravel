<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
//use Hash;
class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $row_amount = Config::get('constans.constant.table_seeder_big_row');
        $faker = Faker::create();
        foreach(range(1,$row_amount) as $index) {
            DB::table('users')->insert([
            'id' => $index,   
            'login' => str_random(5),
            'password' => '$2y$10$wZtp8u4BskPBGxg6o7ZjJOwFaYUrer2STIB7JMLWZYv01fRwWCwri',
            'nick' => $faker->name,
            'role' => rand(0,3)
        ]);
        }
    }
}
