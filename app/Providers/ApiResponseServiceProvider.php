<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Contracts\Pagination\LengthAwarePaginator;

class ApiResponseServiceProvider extends ServiceProvider
{
    public function boot(ResponseFactory $factory)
    {
        $factory->macro('api', function ($data) use ($factory) {
            
            switch (true) {
                case $data instanceof LengthAwarePaginator:
                    $data = [
                        'total' => $data->total(),
                        'first' => $data->url(1),
                        'next' => $data->nextPageUrl(),
                        'previous' => $data->previousPageUrl(),
                        'last' => $data->url($data->lastPage()),
                        'data' => $data->getCollection()->toArray(),
                    ];
                    break;
            }

            return $factory->make($data);
        });
    }

    public function register()
    {
        //
    }
}
