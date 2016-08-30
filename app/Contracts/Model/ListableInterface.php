<?php

namespace App\Contracts\Model;

interface ListableInterface
{
    public function scopeList($query);
}
