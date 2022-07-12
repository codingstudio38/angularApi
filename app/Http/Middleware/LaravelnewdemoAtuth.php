<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class LaravelnewdemoAtuth
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
        
        $htoken = $request->header('Authorization');
        $settoken="Bearer Cy5YBGTEwOCpSkilwp1rLqswinPFLmpTThgz99mVTMNO7kUw33ABUfPLB1MC";
        if($htoken === $settoken){
            return $next($request);
        } else {
            return response()->json([
                'header_token' =>$htoken,
                'status' => 401,
                'message' => 'Unauthorized..!!',
            ]); 
            exit;
        }
    }
}
