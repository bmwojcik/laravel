<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class Group_messagesTableSeeder extends Seeder
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
        $membersIds = DB::table('members')->pluck('idMembers');
        foreach(range(1,$row_amount) as $index) {
            DB::table('group_messages')->insert([
            'idGroup_messages' => $index,   
            'members_id' => $faker->randomElement($membersIds),
            'content' => $faker->text
        ]);
        }
    }
}
