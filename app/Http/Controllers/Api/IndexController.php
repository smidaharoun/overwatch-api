<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Api\Controller;

class IndexController extends Controller
{
    public function index()
    {
        $response = [];
        $routes = \Route::getRoutes()->get('GET');
        usort($routes, function($a, $b) {
            return strcmp($a->getName(), $b->getName());
        });
        foreach ($routes as $path => $route) {
            if (in_array('api', $route->middleware())) {
                $response[$route->getName()] = app('url')->to('/') . '/' . $path;
            }
        }
        return $response;
    }
}
