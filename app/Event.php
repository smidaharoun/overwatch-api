<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    public function rewards()
    {
        return $this->hasMany('App\Reward');
    }
}
