<?php
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class Group_InterestsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $row_amount= Config::get('constans.constant.table_seeder_huge_row');
        $faker = Faker::create();
        $groupsIds = DB::table('groups')->pluck('idGroups');
        $interestsIds = DB::table('interests')->pluck('idInterests');
        foreach(range(1,$row_amount) as $index) {
            DB::table('group_interests')->insert([
            'idGroup_interests' => $index,   
            'id_group' => $faker->randomElement($groupsIds),
            'id_interest' => $faker->randomElement($interestsIds)
        ]);
        }
    }
}
