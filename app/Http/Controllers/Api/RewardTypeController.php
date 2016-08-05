<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Api\Controller;
use App\RewardType;

class RewardTypeController extends Controller
{
    public function index()
    {
        return RewardType::paginate($this->numberResults);
    }

    public function show(RewardType $rewardType)
    {
        return $rewardType;
    }
}
