<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
class AuthCheck 
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */ 
    private $bearer = null;
    private $httpUrl = null; 
    public function __construct(){ 
        $this->bearer = "Bearer Cy5YBGTEwOCpSkilwp1rLqswinPFLmpTThgz99mVTMNO7kUw33ABUfPLB1MC";
        $this->httpUrl = "http://localhost:4200";
    }
    public function handle(Request $request, Closure $next)
    {
        //  'bearerToken'=> $request->bearerToken(),
        //  'header'=>  $request->header(),
        $origin = $request->header('origin');
        $htoken = $request->header('Authorization');
            if(!($origin==$this->httpUrl)){
                return response()->json([
                    'allow_origin' =>$origin,
                    'status' => 400,
                    'message' => 'HTTP: Access denied..!!',
                ]); 
                exit; 
        } else {
            if(!$htoken == null){
                if(!($htoken==$this->bearer)) {
                    return response()->json([
                        'header_token' =>$htoken,
                        'status' => 401,
                        'message' => 'Unauthorized..!!',
                    ]); 
                    exit;
                }
            } else {
               return response()->json([
                    'header_token' =>$htoken,
                    'status' => 401,
                    'message' => 'Unauthorized..!!',
                ]); 
                exit; 
            }
        }
        return $next($request);
    }
}
