<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ability extends Model
{
    protected $hidden = ['meta', 'hero_id', 'created_at', 'updated_at', 'deleted_at'];

    protected $appends = ['url'];

    public function meta()
    {
        return $this->hasMany('App\AbilityMeta');
    }

    public function hero()
    {
        return $this->belongsTo('App\Hero');
    }

    public function getIsUltimateAttribute($isUltimate)
    {
        return (bool) $isUltimate;
    }

    public function getUrlAttribute()
    {
        return $this->attributes['url'] = route('api.ability.show', ['id' => $this->attributes['id']]);
    }
}
