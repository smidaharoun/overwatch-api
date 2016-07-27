<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Api\Controller;
use App\Reward;

class RewardController extends Controller
{
    public function index()
    {
        $rewards = Reward::with('type', 'currency', 'quality')->paginate($this->numberResults);

        return $rewards;
    }

    public function show(Reward $reward)
    {
        $reward->load('type', 'hero', 'currency', 'quality');

        return $reward;
    }
}
