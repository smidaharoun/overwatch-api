<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Api\Controller;
use App\Map;

class MapController extends Controller
{
    public function index()
    {
        $maps = Map::with('event')->paginate($this->numberResults);

        return $maps;
    }

    public function show(Map $map)
    {
        $map->load('mode', 'stages', 'event');
        
        return $map;
    }
}
