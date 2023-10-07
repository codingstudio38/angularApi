<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class Cors
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        $path = explode("/",\Request::url());
        $current_path = end($path);
        $staticpath = array("pdf-export","excel-export");  
        
        if(in_array($current_path, $staticpath)){ 
            return $next($request);
        } else {
            return $next($request)
            ->header('Access-Control-Allow-Origin', "*")
            ->header('Access-Control-Allow-Methods', "DELETE, PUT, PATCH, GET, POST, OPTIONS")
            ->header('Access-Control-Allow-Headers', "Accept, Content-Type, X-Auth-Token, Origin, Authorization, X-Requested-With")
            ->header('Access-Control-Allow-Credentials', true);
        }
    }
}
