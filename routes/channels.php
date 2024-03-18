<?php

use Illuminate\Support\Facades\Broadcast;
use Illuminate\Auth\GenericUser;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\User;
/*
|--------------------------------------------------------------------------
| Broadcast Channels
|--------------------------------------------------------------------------
|
| Here you may register all of the event broadcasting channels that your
| application supports. The given channel authorization callbacks are
| used to check if an authenticated user can listen to the channel.
|
*/

Broadcast::channel('App.Models.User.{id}', function ($user, $id) {
    return (int) $user->id === (int) $id;
});

Broadcast::channel('public-channel', function ($user) {
    return true;
    // return session()->has('user') ? true : false; 
});

Broadcast::channel('track-public-channel', function ($user) {
    return $user;
});

Route::post('/custom/broadcasting/auth', function (Request $request) {
    try{
        $htoken = $request->header('Authorization');
        $channel_name = $request->post('channel_name');
        $socket_id = $request->post('socket_id');
        $ex_token = explode(" ",$htoken);
        if(empty($htoken)){
        $data = array('message'=>'Unauthorized.!','status'=>401);
        return response()->json($data, 401);
        }
        if(count($ex_token) > 0){ 
            if(strpos($ex_token[1], '|')){
                [$ex_id, $ex_token] = explode("|",$ex_token[1],2);
                $tokendata = DB::table('myblog_logindetails_tbl')->where('id', $ex_id)->first();
                if(empty($tokendata)){
                    $data = array('message'=>'Unauthorized!','status'=>401);
                    return response()->json($data, 401);
                }
                $user= User::where('userid',$tokendata->tokenable_id)->first();
                // $user = new GenericUser(['id' =>$userD->userid]);
                request()->setUserResolver(function () use ($user) {
                    return $user;
                });
                return Broadcast::auth(request());
            } else {
                $data = array('message'=>'Unauthorized!!','status'=>401);
                return response()->json($data, 401);
            }
        } else {
            $data = array('message'=>'Unauthorized.!','status'=>401);
            return response()->json($data, 401);
        }
     } catch (\Throwable $th) {
            return response()->json(['status' => 500,'errors'=>$th->getMessage(),'massage' => 'failed..!!',], 500);
     }
});