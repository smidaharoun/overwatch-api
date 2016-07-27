<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AbilityMeta extends Model
{
    protected $table = 'ability_meta';

    protected $hidden = ['ability_id', 'ability_meta_type_id', 'ability_meta_unit_id', 'created_at', 'updated_at', 'deleted_at'];

    public function type()
    {
        return $this->belongsTo('App\AbilityMetaType', 'ability_meta_type_id', 'id');
    }

    public function unit()
    {
        return $this->belongsTo('App\AbilityMetaUnit', 'ability_meta_unit_id', 'id');
    }

    public function ability()
    {
        return $this->belongsTo('App\Ability');
    }

    public function toArray()
    {
        return array_merge($this->attributesToArray(), $this->relationsToArray(), [
            'type' => $this->type->name,
            'unit' => $this->unit ? $this->unit->name : null
        ]);
    }
}
