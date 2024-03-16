<?php

namespace App\Http\Controllers;

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
}
