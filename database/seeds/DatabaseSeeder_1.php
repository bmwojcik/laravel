<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
         $this->call([
             UsersTableSeeder::class,
             MessagesTableSeeder::class,
             GroupsTableSeeder::class,
             InterestsTableSeeder::class,
             WarnsTableSeeder::class,
             User_InterestsTableSeeder::class,
             Group_InterestsTableSeeder::class,
             MembersTableSeeder::class,
             Group_messagesTableSeeder::class,
                 ]);
      
    }
}
