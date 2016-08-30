<?php

namespace App\Contracts\Model;

interface ShowableInterface
{
    public function scopeShow($query);
}
