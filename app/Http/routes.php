<?php

/*
|--------------------------------------------------------------------------
| Front End Routes
|--------------------------------------------------------------------------
*/

Route::group(['middleware' => 'web'], function () {
    Route::get('/', ['uses' => 'IndexController@index', 'as' => 'web.index']);
    Route::get('/contribution', ['uses' => 'IndexController@contribution', 'as' => 'web.contribution']);

    Route::group(['prefix' => 'docs'], function () {
        Route::get('/{version}', ['uses' => 'DocumentationController@index', 'as' => 'web.docs']);
    });
});

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
*/

Route::group(['prefix' => 'api', 'middleware' => 'api'], function () {
    Route::group(['prefix' => 'v1'], function () {
        Route::get('/', ['uses' => 'Api\IndexController@index', 'as' => 'api.index']);
        Route::get('{resource}/{id}', ['uses' => 'Api\ResourceController@showResource', 'as' => 'api.show']);
        Route::get('{resource}', ['uses' => 'Api\ResourceController@listResource', 'as' => 'api.list']);
    });
});
