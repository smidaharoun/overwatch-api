<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MapStage extends Model
{
    protected $hidden = ['map_id'];
    
    public function map()
    {
        return $this->belongsTo('App\Map');
    }
}
