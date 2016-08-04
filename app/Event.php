<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $appends = ['url'];

    public function rewards()
    {
        return $this->hasMany('App\Reward');
    }

    public function getUrlAttribute()
    {
        return $this->attributes['url'] = route('api.event.show', ['id' => $this->attributes['id']]);
    }
}
