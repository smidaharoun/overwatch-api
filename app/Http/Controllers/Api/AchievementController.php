<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Api\Controller;
use App\Achievement;

class AchievementController extends Controller
{
    public function index()
    {
        return Achievement::with('hero', 'reward.type', 'reward.quality')->paginate($this->numberResults);
    }

    public function show(Achievement $achievement)
    {
        $achievement->load('hero', 'reward.type', 'reward.quality');

        return $achievement;
    }
}
