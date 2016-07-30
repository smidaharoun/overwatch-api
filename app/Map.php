<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Map extends Model
{
    protected $hidden = ['map_mode_id'];

    protected $appends = ['url'];

    public function mode()
    {
        return $this->belongsTo('App\MapMode', 'map_mode_id');
    }

    public function stages()
    {
        return $this->hasMany('App\MapStage');
    }

    public function getUrlAttribute()
    {
        return $this->attributes['url'] = route('api.map.show', ['id' => $this->attributes['id']]);
    }
}
