<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Api\Controller;
use App\Event;

class EventController extends Controller
{
    public function index()
    {
        $events = Event::paginate($this->numberResults);

        return $events;
    }

    public function show(Event $event)
    {
        $event->load('rewards');

        return $event;
    }
}
