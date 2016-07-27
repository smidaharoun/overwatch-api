<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Api\Controller;
use App\Ability;

class AbilityController extends Controller
{
    public function index()
    {
        return Ability::with('hero')->paginate($this->numberResults);
    }

    public function show(Ability $ability)
    {
        $ability->load('hero');

        return $ability;
    }
}
