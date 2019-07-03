<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGroupMessagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('group_messages', function (Blueprint $table) {
            $table->integer('idGroup_messages');
            $table->primary('idGroup_messages')->increment();
            $table->integer('members_id');
            $table->foreign('members_id')->references('idMembers')->on('members');
            $table->string('content',300);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('group_messages');
    }
}
