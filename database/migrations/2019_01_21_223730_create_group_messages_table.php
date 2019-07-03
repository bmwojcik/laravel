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
             $table->increments('idGroup_messages');
//            $table->integer('idGroup_messages');
//            $table->primary('idGroup_messages')->increment();
//             $table->increments('idGroup_messages');
            $table->integer('members_id')->unsigned();
            $table->foreign('members_id')->references('idMembers')->on('members')->onDelete('cascade');
            $table->string('content',300);
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
        Schema::dropIfExists('group_messages');
    }
}
