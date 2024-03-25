<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Events\Publicchannel;
use App\Events\UserPresenceChatChannel;
use Symfony\Component\HttpFoundation\Response;
Use Pusher\Pusher;
use App\Models\User;
use App\Models\myBlog\Userchats;
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
        $data=$dataQr->orderBy('name','asc')->get();
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
        $userdata = array();
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
      $struserid = implode(',',$userid);
      $user_id= count($userid)>0? DB::select(
          "select GROUP_CONCAT(userid) as alluser_ids from users where id in($struserid)"
        ):array();
        if(count($user_id) > 0){
          if(!empty($user_id[0]->alluser_ids)){
              DB::beginTransaction(); 
              DB::table('myblog_register_tbl')->whereIn('id',explode(",",$user_id[0]->alluser_ids))->update(array('online_status'=>1));
              DB::table('myblog_register_tbl')->whereNotIn('id',explode(",",$user_id[0]->alluser_ids))->update(array('online_status'=>0));
              DB::commit();
              $userdata = DB::table('myblog_register_tbl')->whereIn('id',explode(",",$user_id[0]->alluser_ids))->get();
          }
        }
      // $user= count($userid)>0? User::select(
      //      DB::raw("(select GROUP_CONCAT(userid) from users where id in($struserid)) as alluser_ids")
      //   )->whereIn('id',$userid)->first():array();
          return response()->json([
            'status' => 200,
            'message' => 'sucess.',
            'users'=>$userdata,
            ], 200);
      } catch (\Throwable $th) {
         DB::rollback();
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

  public function userchatlist(Request $request) {
      try {
        $from_=$request->post('from');
        $to_=$request->post('to');
        $validator = \Validator::make($request->all(),
        [
            'from' => 'required',
            'to' => 'required',
        ],
        [ 
         "from.required" => "from id required.",
         "to.required" => "to id required.",
        ]
      );
        if ($validator->fails())
        {
            return response()->json(['status' => 400,'massage' => 'invalid data format!',"errors"=>$validator->errors()],200);
        }
      

        DB::beginTransaction(); 
        DB::table('user_chat_tbl')->orWhere('from_',$to_)->where('to_',$from_)->update(array('read_status'=>1));
        $dataQr= Userchats::where('from_',$from_)->where('to_',$to_)->orWhere('from_',$to_)->where('to_',$from_);
        $totaldata= $dataQr->count();
        $data= $dataQr->orderBy('id','asc')->get();
        DB::commit();

        return response()->json(['status' => 200,'message' => 'success..',"data"=>$data,'total'=>$totaldata], 200);
      } catch (\Throwable $th) {
         DB::rollback();
        return response()->json([
            'status' => 500,
            'errors'=>$th->getMessage(),
            'message' => 'failed..!!',
            ], 500);
      }
       
    }

  public function updatechatreadstatus(Request $request) {
      try {
        $from_=$request->post('from');
        $to_=$request->post('to');
        $id=$request->post('id');
        $validator = \Validator::make($request->all(),
        [
            'from' => 'required',
            'to' => 'required',
            'id' => 'required',
        ],
        [ 
          "from.required" => "from id required.",
          "to.required" => "to id required.",
          "id.required" => "id required.",
        ]
      );
        if ($validator->fails())
        {
            return response()->json(['status' => 400,'massage' => 'invalid data format!',"errors"=>$validator->errors()],200);
        }
      

        DB::beginTransaction(); 
        DB::table('user_chat_tbl')->where('id',$id)->update(array('read_status'=>1));
        $data = DB::table('user_chat_tbl')->where('id',$id)->first();
        DB::commit();

        return response()->json(['status' => 200,'message' => 'success..',"data"=>$data], 200);
      } catch (\Throwable $th) {
         DB::rollback();
        return response()->json([
            'status' => 500,
            'errors'=>$th->getMessage(),
            'message' => 'failed..!!',
            ], 500);
      }
       
    }

  public function getnoofunseenchat(Request $request) {
      try {
        $from_=$request->post('from');
        $to_=$request->post('to');
        $validator = \Validator::make($request->all(),
        [
            'from' => 'required',
            'to' => 'required',
        ],
        [ 
          "from.required" => "from id required.",
          "to.required" => "to id required.",
        ]
      );
        if ($validator->fails())
        {
            return response()->json(['status' => 400,'massage' => 'invalid data format!',"errors"=>$validator->errors()],200);
        }
      

        DB::beginTransaction(); 
        $dataQr = DB::table('user_chat_tbl')->where('from_',$from_)->where('to_',$to_)->where('read_status',0)->orderBy('id','desc');
        $totaldata=$dataQr->count();
        $data=$dataQr->first();
        DB::commit();

        return response()->json(['status' => 200,'message' => 'success..',"data"=>$data,'total'=>$totaldata], 200);
      } catch (\Throwable $th) {
         DB::rollback();
        return response()->json([
            'status' => 500,
            'errors'=>$th->getMessage(),
            'message' => 'failed..!!',
            ], 500);
      }
       
    }

 public function getuserchatbyid(Request $request) {
      try {
        $id=$request->post('id');
        $validator = \Validator::make($request->all(),
        [
            'id' => 'required',
        ],
        [ 
         "id.required" => "id required.",
        ]
      );
        if ($validator->fails())
        {
           return response()->json(['status' => 400,'massage' => 'invalid data format!',"errors"=>$validator->errors()],200);
        }
      
       
        $dataQr = Userchats::where('id',$id);
        $totaldata = $dataQr->count();
        $data = $dataQr->first();
       
        return response()->json(['status' => 200,'message' => 'success..',"data"=>$data,'total'=>$totaldata], 200);
      } catch (\Throwable $th) {
        return response()->json([
            'status' => 500,
            'errors'=>$th->getMessage(),
            'message' => 'failed..!!',
            ], 500);
      }
       
    }



public function savenewmessage(Request $request) {
      try {
        date_default_timezone_set('Asia/Kolkata');
        $from_=$request->post('from');
        $to_=$request->post('to');
        $message=$request->post('message');
        $chat_type=$request->post('chat_type');//single_chat_group_chat/0=single,1=group
        $validator = \Validator::make($request->all(),
        [
            'from' => 'required',
            'to' => 'required',
            'chat_type' => 'required',
            'message' => 'required',
        ],
        [ 
         "from.required" => "from id required.",
         "to.required" => "to id required.",
          "chat_type.required" => "chat type required.",
          "message.required" => "message required.",
        ]
      );
        if ($validator->fails())
        {
            return response()->json(['status' => 400,'massage' => $validator->errors()],200);
        }
     
 
       $inserData=array(
          'from_' => $from_,
          'to_' => $to_,
          'chat_type' =>$chat_type,
          'message' =>$message,
       );
        DB::beginTransaction(); 
        $newid= DB::table('user_chat_tbl')->insertGetId($inserData);
         if($request->hasFile('chat_file')) {
              $fileName = $request->file('chat_file')->getClientOriginalName();
              $file_extension = $request->file('chat_file')->extension();
              $file_size = $request->file('chat_file')->getSize();
              $file_Newname = rand(11111, 99999)."_".$file_size.".".$file_extension;
              if($request->file('chat_file')->move('myBlog/uploadFiles',$file_Newname)){
                 DB::table('user_chat_tbl')->update(array('chat_file'=>$file_Newname));
              }
          } 
        $dataIs= DB::table('user_chat_tbl')->where('id',$newid)->first();
        $datainfo = array('message'=>'new message','code'=>100);// for identify data type
        $dataset = array("datainfo"=>$datainfo,"data"=>$dataIs);// dataset must be 2 key values
        SendBroadcastDataOnPresenceChannel($dataset);
        DB::commit();
        return response()->json(['status' => 200,'message' => 'success..',"data"=>$dataIs], 200);
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
