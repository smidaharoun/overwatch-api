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

Route::group(['middleware' => 'web'], function() {
    Route::get('/', ['uses' => 'IndexController@index', 'as' => 'web.index']);

    /**
     * @todo  FIX
     *        http://api.overwatch.dev/docs - shouldnt return API response
     */
    Route::group(['prefix' => 'docs'], function () {
        Route::get('/{version}', ['uses' => 'DocumentationController@index', 'as' => 'web.docs']);
    });
});

Route::group(['prefix' => 'api', 'middleware' => 'api'], function() {
    Route::group(['prefix' => 'v1'], function () {
        Route::get('/', ['uses' => 'Api\IndexController@index', 'as' => 'api.index']);
        Route::resource('hero', 'Api\HeroController', ['only' => ['index', 'show'], 'names' => [
            'index' => 'api.hero.index',
            'show' => 'api.hero.show'
        ]]);
        Route::resource('ability', 'Api\AbilityController', ['only' => ['index', 'show'], 'names' => [
            'index' => 'api.ability.index',
            'show' => 'api.ability.show'
        ]]);
        Route::resource('achievement', 'Api\AchievementController', ['only' => ['index', 'show'], 'names' => [
            'index' => 'api.achievement.index',
            'show' => 'api.achievement.show'
        ]]);
        Route::resource('map', 'Api\MapController', ['only' => ['index', 'show'], 'names' => [
            'index' => 'api.map.index',
            'show' => 'api.map.show'
        ]]);
        Route::resource('reward', 'Api\RewardController', ['only' => ['index', 'show'], 'names' => [
            'index' => 'api.reward.index',
            'show' => 'api.reward.show'
        ]]);
    });
});
