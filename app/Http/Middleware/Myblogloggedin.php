<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Models\myBlog\myblog_logindetails_tbl;
use Illuminate\Support\Facades\Hash;
class Myblogloggedin
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
    private $myblog_logindetails_tbl = null; 
    public function __construct(){  
        $this->httpUrl = "http://localhost:4200";
        $this->myblog_logindetails_tbl = new myblog_logindetails_tbl;
    }
    public function handle(Request $request, Closure $next)
    { 
        $route = \Request::url();
        $htoken = $request->header('Authorization');
        if(!($request->header('origin')==$this->httpUrl)){
                return response()->json([
                    'allow_origin' =>$request->header('origin'),
                    'status' => 400,
                    'message' => 'HTTP: Access denied..!!',
                ]); 
                exit; 
        } else { 
            if(!$htoken == null){
                if(!$this->myblog_logindetails_tbl->checkAuth($htoken,$route)) {
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