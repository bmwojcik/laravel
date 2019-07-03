<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class GroupsTableSeeder extends Seeder
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
        foreach(range(1,$row_amount) as $index) {
            DB::table('groups')->insert([
            'idGroups' => $index,   
            'group_name' => $faker->company
        ]);
        }
    }
}
