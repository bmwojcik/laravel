<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersInterestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_interests', function (Blueprint $table) {
             $table->increments('idUser_interests');
//            $table->integer('idUser_interests');
//            $table->primary('idUser_interests')->increment();
            $table->integer('id_user')->unsigned();
            $table->integer('id_interest')->unsigned();
            $table->foreign('id_user')->references('id')->on('users');
            $table->foreign('id_interest')->references('idInterests')->on('interests');
            $table->timestamp('date');
             $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_interests');
    }
}
