<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWarnsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('warns', function (Blueprint $table) {
             $table->increments('idWarns');
//            $table->integer('idWarns');
//            $table->primary('idWarns')->increment();
            $table->integer('user_warned')->unsigned();
            $table->integer('moderator')->unsigned();
            $table->foreign('user_warned')->references('id')->on('users');
            $table->foreign('moderator')->references('id')->on('users');
            $table->string('reason',150);
            $table->timestamp('date');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('warns');
    }
}
