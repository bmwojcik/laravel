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
            $table->integer('idUser_interests');
            $table->primary('idUser_interests')->increment();
            $table->integer('id_user');
            $table->integer('id_interest');
            $table->foreign('id_user')->references('idUsers')->on('users');
            $table->foreign('id_interest')->references('idInterests')->on('interests');
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
