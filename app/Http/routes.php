<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::group(['prefix' => 'api', 'middleware' => 'api'], function() {
    Route::group(['prefix' => 'v1'], function () {
        Route::resource('hero', 'Api\HeroController', ['names' => [
            'index' => 'hero.index',
            'show' => 'hero.show'
        ]]);
        Route::resource('ability', 'Api\AbilityController', ['names' => [
            'index' => 'ability.index',
            'show' => 'ability.show'
        ]]);
        Route::resource('achievement', 'Api\AchievementController', ['names' => [
            'index' => 'achievement.index',
            'show' => 'achievement.show'
        ]]);
        Route::resource('map', 'Api\MapController', ['names' => [
            'index' => 'map.index',
            'show' => 'map.show'
        ]]);
        Route::resource('reward', 'Api\RewardController', ['names' => [
            'index' => 'reward.index',
            'show' => 'reward.show'
        ]]);
    });
});
