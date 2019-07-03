<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMembersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('members', function (Blueprint $table) {
             $table->increments('idMembers');
//            $table->integer('idMembers');
//            $table->primary('idMembers')->increment();
            $table->integer('id_user')->unsigned();
            $table->integer('id_group')->unsigned();
            $table->foreign('id_user')->references('id')->on('users');
            $table->foreign('id_group')->references('idGroups')->on('groups');
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
        Schema::dropIfExists('members');
    }
}
