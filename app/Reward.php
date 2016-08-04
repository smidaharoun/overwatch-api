<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Cost;

class Reward extends Model
{
    protected $hidden = [
        'currency',
        'hero_id',
        'reward_type_id',
        'currency_id',
        'quality_id',
        'event_id'
    ];

    protected $appends = ['cost', 'url'];

    public function type()
    {
        return $this->belongsTo('App\RewardType', 'reward_type_id');
    }

    public function hero()
    {
        return $this->belongsTo('App\Hero');
    }

    public function currency()
    {
        return $this->belongsTo('App\Currency');
    }

    public function quality()
    {
        return $this->belongsTo('App\Quality');
    }

    public function event()
    {
        return $this->belongsTo('App\Event');
    }

    public function getCostAttribute()
    {
        if ($this->currency) {
            return new Cost($this->currency, $this->attributes['cost']);
        }
        return null;
    }

    public function getUrlAttribute()
    {
        return $this->attributes['url'] = route('api.reward.show', ['id' => $this->attributes['id']]);
    }
}
