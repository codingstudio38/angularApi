<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Events\Publicchannel;
use App\Events\UserPresenceChatChannel;
use Symfony\Component\HttpFoundation\Response;
Use Pusher\Pusher;
use App\Models\User;

class MessageController extends Controller
{
    public function publicchannel(Request $request) {
      try {
        date_default_timezone_set('Asia/Kolkata');
        $date = date('Y-m-d H:i:s'); 
        $data = array('message'=>"hello public || $date");
        broadcast(new Publicchannel($data));
        // event(new Publicchannel($data));
         return response()->json([
            'status' =>200,
            'message' => 'seccess.',
            ], Response::HTTP_OK);
      } catch (\Throwable $th) {
        // return $th;
        return response()->json([
            'status' => 500,
            'errors'=>$th->getMessage(),
            'message' => 'failed..!!',
            ], 500);
      }
       
    }

    public function UserPresenceChatChannel_(Request $request) {
      try {
        date_default_timezone_set('Asia/Kolkata');
        $date = date('Y-m-d H:i:s'); 
        $data = array('message'=>"hello UserPresenceChatChannel || $date");
        broadcast(new UserPresenceChatChannel($data));
         return response()->json([
            'status' =>200,
            'message' => 'seccess.',
            ], Response::HTTP_OK);
      } catch (\Throwable $th) {
        // return $th;
        return response()->json([
            'status' => 500,
            'errors'=>$th->getMessage(),
            'message' => 'failed..!!',
            ], 500);
      }
       
    }

      public function chatuserlist(Request $request) {
      try {
        $name=$request->get('name');
        $dataQr= DB::table('myblog_register_tbl');
        if(!empty($name)){
          $dataQr->where('name','LIKE',"%$name%");
        }
        $data=$dataQr->get();
           return response()->json([
            'status' => 200,
            'errors'=>[],
            'message' => 'success..',
            'data'=>$data,
            ], 200);
      } catch (\Throwable $th) {
        // return $th;
        return response()->json([
            'status' => 500,
            'errors'=>$th->getMessage(),
            'message' => 'failed..!!',
            ], 500);
      }
       
    }




public function allactiveuserGet(Request $request) {
      try {
        $channelname=$request->get('channelname');//presence-trackUserPresenceChatChannel
        if(empty($channelname)){
           return response()->json([
            'status' => 400,
            'message' => 'failed!! channel name required.',
            ], 200);
        }
        $connection = config('broadcasting.connections.pusher');
        $pusher = new Pusher(
            $connection['key'],
            $connection['secret'],
            $connection['app_id'],
            $connection['options'] ?? []
        );
        $channels = $pusher->get_channels();
        $users = $pusher->get("/channels/$channelname/users");
        $users = isset($users->users)?$users->users:array();

        $userid=array();
        foreach ($users as $key => $value) {
          array_push($userid,$value->id);
        }
        $user= count($userid)>0? User::whereIn('id',$userid)->get():array();
          return response()->json([
            'status' => 200,
            'message' => 'sucess.',
            'users'=>$user,
            ], 200);
      } catch (\Throwable $th) {
        return response()->json([
            'status' => 500,
            'errors'=>$th->getMessage(),
            'message' => 'failed..!!',
            ], 500);

      }

    }
public function allactiveuserPost(Request $request) {
      try {
        $channelname=$request->post('channelname');
        if(empty($channelname)){
           return response()->json([
            'status' => 400,
            'message' => 'failed!! channel name required.',
            ], 200);
        }
        $connection = config('broadcasting.connections.pusher');
        $pusher = new Pusher(
            $connection['key'],
            $connection['secret'],
            $connection['app_id'],
            $connection['options'] ?? []
        );
        $channels = $pusher->get_channels();
        $users = $pusher->get("/channels/$channelname/users");
        $users = isset($users->users)?$users->users:array();

        $userid=array();
        foreach ($users as $key => $value) {
          array_push($userid,$value->id);
        }
        $user= count($userid)>0? User::whereIn('id',$userid)->get():array();
          return response()->json([
            'status' => 200,
            'message' => 'sucess.',
            'users'=>$user,
            ], 200);
      } catch (\Throwable $th) {
        return response()->json([
            'status' => 500,
            'errors'=>$th->getMessage(),
            'message' => 'failed..!!',
            ], 500);

      }

    }


  public function userdisconnected(Request $request) {
      try {
        $userid=$request->get('userid');
        if($userid==''){
           return response()->json([
            'status' => 400,
            'message' => 'failed!! user id required.',
            ], 200);
        }
        DB::beginTransaction(); 
        $updata = array('online_status'=>0);
        $dataQr= DB::table('users')->where('id',$userid)->update($updata);
        DB::commit();
        return response()->json(['status' => 200,'message' => 'success..'], 200);
      } catch (\Throwable $th) {
         DB::rollback();
        return response()->json([
            'status' => 500,
            'errors'=>$th->getMessage(),
            'message' => 'failed..!!',
            ], 500);
      }
       
    }


    public function userconnected(Request $request) {
      try {
        $userid=$request->get('userid');
        if($userid==''){
           return response()->json([
            'status' => 400,
            'message' => 'failed!! user id required.',
            ], 200);
        }
        DB::beginTransaction(); 
        $updata = array('online_status'=>1);
        $dataQr= DB::table('users')->where('id',$userid)->update($updata);
        DB::commit();
        return response()->json(['status' => 200,'message' => 'success..'], 200);
      } catch (\Throwable $th) {
         DB::rollback();
        return response()->json([
            'status' => 500,
            'errors'=>$th->getMessage(),
            'message' => 'failed..!!',
            ], 500);
      }
       
    }


}
