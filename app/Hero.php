<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hero extends Model
{
    protected $hidden = ['role_id', 'created_at', 'updated_at', 'deleted_at'];

    protected $appends = ['url'];
    
    public function role()
    {
        return $this->belongsTo('App\Role');
    }

    public function subRoles()
    {
        return $this->belongsToMany('App\SubRole', 'hero_sub_roles');
    }

    public function abilities()
    {
        return $this->hasMany('App\Ability');
    }

    public function rewards()
    {
        return $this->hasMany('App\Reward');
    }

    public function getUrlAttribute()
    {
        return $this->attributes['url'] = route('hero.show', ['id' => $this->attributes['id']]);
    }
}
