<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class MembersTableSeeder extends Seeder
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
        $usersIds = DB::table('users')->pluck('id');
        $groupsIds = DB::table('groups')->pluck('idGroups');
        foreach(range(1,$row_amount) as $index) {
            DB::table('members')->insert([
            'idMembers' => $index,   
            'id_user' => $faker->randomElement($usersIds),
            'id_group' => $faker->randomElement($groupsIds)
        ]);
        }
    }
}
