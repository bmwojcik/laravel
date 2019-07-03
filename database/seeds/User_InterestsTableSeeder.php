<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class User_InterestsTableSeeder extends Seeder
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
        $usersIds = DB::table('users')->pluck('id');
        $interestsIds = DB::table('interests')->pluck('idInterests');
        foreach(range(1,$row_amount) as $index) {
            DB::table('user_interests')->insert([
            'idUser_interests' => $index,   
            'id_user' => $faker->randomElement($usersIds),
            'id_interest' => $faker->randomElement($interestsIds)
        ]);
        }
    }
}
