<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Api\Controller;

class IndexController extends Controller
{
    public function index()
    {
        $routes = [];
        foreach (\Route::getRoutes()->get('GET') as $path => $route) {
            if (in_array('api', $route->middleware())) {
                $routes[$route->getName()] = app('url')->to('/') . '/' . $path;
            }
        }
        return $routes;
    }
}
