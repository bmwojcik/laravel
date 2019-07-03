<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class MessagesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $row_amount =  Config::get('constans.constant.table_seeder_huge_row');
        $faker = Faker::create();
        $authorsIds = DB::table('users')->pluck('id');
        foreach(range(1,$row_amount) as $index) {
            DB::table('messages')->insert([
            'idMessages' => $index,   
            'id_author' => $faker->randomElement($authorsIds),
            'message' => $faker->text
        ]);
        }
    }
}
