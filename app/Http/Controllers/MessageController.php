<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Events\Publicchannel;
class MessageController extends Controller
{
    public function publicchannel(Request $request) {
      try {
        date_default_timezone_set('Asia/Kolkata');
        $date = date('Y-m-d H:i:s'); 
        $data = array('message'=>"hello private || $date");
        event(new Publicchannel($data));
      } catch (\Throwable $th) {
        // return $th;
        return response()->json([
            'status' => 500,
            'errors'=>$th->getMessage(),
            'massage' => 'failed..!!',
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
            'massage' => 'success..',
            'data'=>$data,
            ], 200);
      } catch (\Throwable $th) {
        // return $th;
        return response()->json([
            'status' => 500,
            'errors'=>$th->getMessage(),
            'massage' => 'failed..!!',
            ], 500);
      }
       
    }

}
