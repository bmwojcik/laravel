<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class InterestsTableSeeder extends Seeder
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
        foreach(range(1,$row_amount+2) as $index) {
            DB::table('interests')->insert([
            'idInterests' => $index,   
            'interest_name' => $faker->colorName
        ]);
        }
    }
}
