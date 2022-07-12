<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\myBlog\myblog_register_tbl;
use App\Models\myBlog\myblog_logindetails_tbl;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
class TokenController extends Controller
{
    public function createToken($request,$userID,$userEmail)
    {
        $new = new myblog_logindetails_tbl; 
        $new->tokenable_id=$userID;
        $new->email=$userEmail;
        $new->token="-";
        $new->user_agent=$request->userAgent;
        $new->status="Active";
        $result = $new->save();
        $last_id = $new->id;
        $token = Str::random(100)."**".base64_encode($userID."-".$last_id);
        $new->token= hash('sha256', $token); 
        $result = $new->save();
        myblog_logindetails_tbl::where('id','!=',$last_id)
        ->where('tokenable_id','=',$userID)
        ->update(['status' =>"Expired"]);
        return $last_id."|".$token;
    }
    public function deleteToken($request)
    {
        $route = \Request::url();
        $htoken = $request->header('Authorization');
        $ex_token = explode(" ",$htoken);
        $ex_slid = explode("|",$ex_token[1]);
        $data = myblog_logindetails_tbl::find($ex_slid[0]);
        $data->status="Expired";
        return $data->save();
    }
}
