<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MapMode extends Model
{
    public function mapMode()
    {
        return $this->belongsTo('App\MapMode');
    }
}
