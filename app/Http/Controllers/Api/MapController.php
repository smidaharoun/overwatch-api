<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Api\Controller;
use App\Map;

class MapController extends Controller
{
    public function index()
    {
        return Map::paginate($this->numberResults);
    }

    public function show(Map $map)
    {
        $map->load('mode', 'stages');
        
        return $map;
    }
}
