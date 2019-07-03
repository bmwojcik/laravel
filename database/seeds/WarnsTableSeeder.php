<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class WarnsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $row_amount =  Config::get('constans.constant.table_seeder_middle_row');
        $faker = Faker::create();
        $authorsIds = DB::table('users')->pluck('id');
        foreach(range(1,$row_amount) as $index) {
            DB::table('warns')->insert([
            'idWarns' => $index,   
            'user_warned' => $faker->randomElement($authorsIds),
            'moderator' => $faker->randomElement($authorsIds),
            'reason' => $faker->company
        ]);
        }
    }
}
