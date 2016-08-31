<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Contracts\Model\ListableInterface;
use App\Contracts\Model\ShowableInterface;
use App\Concerns\Model\HasUrlAttributeTrait;

class Event extends Model implements ListableInterface, ShowableInterface
{
    use HasUrlAttributeTrait;

    public $timestamps = false;

    protected $resource = 'event';

    protected $appends = ['url'];

    public function rewards()
    {
        return $this->hasMany('App\Reward');
    }

    public function maps()
    {
        return $this->hasMany('App\Map');
    }

    public function scopeShow($query)
    {
        return $query->with('maps', 'rewards');
    }

    public function scopeList($query)
    {
        return $query;
    }
}
