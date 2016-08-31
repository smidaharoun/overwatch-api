<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Contracts\Model\ListableInterface;
use App\Contracts\Model\ShowableInterface;
use App\Concerns\Model\HasUrlAttributeTrait;

class GameMode extends Model implements ListableInterface, ShowableInterface
{
    use HasUrlAttributeTrait;

    public $timestamps = false;

    protected $resource = 'game-mode';

    protected $appends = ['url'];

    public function scopeList($query)
    {
        return $query;
    }

    public function scopeShow($query)
    {
        return $query;
    }
}