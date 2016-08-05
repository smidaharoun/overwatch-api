<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Response;
use Illuminate\Contracts\Pagination\LengthAwarePaginator;

class BuildApiResponse
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        $response = $next($request);

        if ($response instanceof Response) {
            $original = $response->getOriginalContent();
            switch (true) {
                case $original instanceof LengthAwarePaginator:
                    $response->setContent([
                        'total' => $original->total(),
                        'first' => $original->url(1),
                        'next' => $original->nextPageUrl(),
                        'previous' => $original->previousPageUrl(),
                        'last' => $original->url($original->lastPage()),
                        'data' => $original->getCollection()->toArray(),
                    ]);
                    break;
            }
        }
        $response->headers->set('Access-Control-Allow-Origin', '*');

        return $response;
    }
}
