<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGroupInterestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('group_interests', function (Blueprint $table) {
            $table->integer('idGroup_interests');
            $table->primary('idGroup_interests')->increment();
            $table->integer('id_interest');
            $table->integer('id_group');
            $table->foreign('id_interest')->references('idInterests')->on('interests');
            $table->foreign('id_group')->references('idGroups')->on('groups');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('group_interests');
    }
}
