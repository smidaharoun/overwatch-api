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
        Route::get('/', ['uses' => 'Api\IndexController@index', 'as' => 'index']);
        Route::resource('hero', 'Api\HeroController', ['only' => ['index', 'show'], 'names' => [
            'index' => 'hero.index',
            'show' => 'hero.show'
        ]]);
        Route::resource('ability', 'Api\AbilityController', ['only' => ['index', 'show'], 'names' => [
            'index' => 'ability.index',
            'show' => 'ability.show'
        ]]);
        Route::resource('achievement', 'Api\AchievementController', ['only' => ['index', 'show'], 'names' => [
            'index' => 'achievement.index',
            'show' => 'achievement.show'
        ]]);
        Route::resource('map', 'Api\MapController', ['only' => ['index', 'show'], 'names' => [
            'index' => 'map.index',
            'show' => 'map.show'
        ]]);
        Route::resource('reward', 'Api\RewardController', ['only' => ['index', 'show'], 'names' => [
            'index' => 'reward.index',
            'show' => 'reward.show'
        ]]);
    });
});
