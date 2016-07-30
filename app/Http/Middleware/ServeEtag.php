<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Response;

class ServeEtag
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
        $hash = md5($response->getContent());

        $response->setEtag($hash);
        $response->isNotModified($request);

        return $response;
    }
}
