<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Api\Controller;
use App\Hero;

class HeroController extends Controller
{
    public function index()
    {
        return Hero::paginate($this->numberResults);
    }

    public function show(Hero $hero)
    {
        $hero->load('role', 'subRoles', 'abilities', 'rewards');

        return $hero;
    }
}
