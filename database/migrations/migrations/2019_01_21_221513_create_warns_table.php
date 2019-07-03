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
            $table->integer('idWarns');
            $table->primary('idWarns')->increment();
            $table->integer('user_warned');
            $table->integer('moderator');
            $table->foreign('user_warned')->references('idUsers')->on('users');
            $table->foreign('moderator')->references('idUsers')->on('users');
            $table->string('reason',150);
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
