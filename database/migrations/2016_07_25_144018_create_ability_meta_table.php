<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAbilityMetaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ability_meta', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->integer('ability_id')->unsigned();
            $table->integer('ability_meta_type_id')->unsigned();
            $table->integer('ability_meta_unit_id')->unsigned()->nullable();
            $table->decimal('min_value', 10, 1);
            $table->decimal('max_value', 10, 1);

            $table->foreign('ability_id')->references('id')->on('abilities');
            $table->foreign('ability_meta_type_id')->references('id')->on('ability_meta_types');
            $table->foreign('ability_meta_unit_id')->references('id')->on('ability_meta_units');

            $table->unique(['ability_id', 'ability_meta_type_id', 'min_value', 'max_value'], 'ability_meta_type_value_unique');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('ability_meta');
    }
}
