<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('username',100)->unique();
            $table->string('firstname',50)->nullable();
            $table->string('lastname',50)->nullable();
            $table->string('email',100)->unique();
            $table->string('mobile',10)->default('');
            $table->string('password');
            $table->boolean('email_verified')->default(0)->comment('0-Not Verified, 1- Verified');
            $table->boolean('status')->default(1)->comment('1-Active, 2-Block');
            $table->rememberToken();
            $table->softDeletes();
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
        Schema::dropIfExists('users');
    }
}
