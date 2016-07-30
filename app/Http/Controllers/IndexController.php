<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class IndexController extends Controller
{
    public function index()
    {
        $mysql = 'insert into heroes values ';
        foreach (\App\Hero::all() as $h) {
            $mysql .= sprintf('(%s,"%s","%s",%s,%s,%s,%s,"%s",%s,%s,"%s","%s",%s),', 
                $h->id,
                $h->name,
                $h->description,
                $h->role_id,
                $h->health,
                null === $h->armour ? 'NULL' : $h->armour,
                null === $h->shield ? 'NULL' : $h->shield,
                $h->real_name,
                null === $h->age ? 'NULL' : $h->age,
                null === $h->height ? 'NULL' : $h->height,
                null === $h->affiliation ? 'NULL' : $h->affiliation,
                null === $h->base_of_operations ? 'NULL' : $h->base_of_operations,
                $h->difficulty
            );
        }
        die($mysql);
        return view('index.index');
    }
}
