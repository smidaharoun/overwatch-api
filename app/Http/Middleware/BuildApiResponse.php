<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Response;
use Illuminate\Http\JsonResponse;
use Illuminate\Contracts\Pagination\LengthAwarePaginator;

class BuildApiResponse
{
    /**
     * Convert the response to a JSON response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        $originalResponse = $next($request);
        $content = $originalResponse->getOriginalContent();

        if ($originalResponse instanceof Response) {
            switch (true) {
                case $content instanceof LengthAwarePaginator:
                    $content = [
                        'total' => $content->total(),
                        'first' => $content->url(1),
                        'next' => $content->nextPageUrl(),
                        'previous' => $content->previousPageUrl(),
                        'last' => $content->url($content->lastPage()),
                        'data' => $content->getCollection()->toArray(),
                    ];
                    break;
            }
        }

        $response = new JsonResponse(
            $content,
            $originalResponse->getStatusCode(),
            $originalResponse->headers->all(),
            JSON_PRETTY_PRINT
        );
        $response->headers->set('Access-Control-Allow-Origin', '*');

        return $response;
    }
}
