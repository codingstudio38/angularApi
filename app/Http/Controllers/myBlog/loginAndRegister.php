<?php

namespace App\Http\Controllers\myBlog;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\myBlog\myblog_register_tbl;
use App\Models\myBlog\myblog_logindetails_tbl;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\TokenController;
class loginAndRegister extends Controller
{  
    private $TokenController=null;
    private $myblog_logindetails_tbl=null;
    public function __construct(){
        $this->TokenController = new TokenController;
        $this->myblog_logindetails_tbl = new myblog_logindetails_tbl;
    }
    public function userRegister(Request $request){
    $mailCheck=myblog_register_tbl::where('email',$request->email)->first();
    $phoneCheck=myblog_register_tbl::where('phone',$request->phoneno)->first();
        if($mailCheck){
        return response()->json([
            'Edata' =>$mailCheck,
            'total' => $mailCheck->count(),
            'status' => 400,
            'message' => 'Email Id already exist..!! Try Different..',
        ]); 
        exit; 
      } else if($phoneCheck){
        return response()->json([
            'Edata' =>$phoneCheck,
            'total' => $phoneCheck->count(),
            'status' => 400,
            'message' => 'Phone no already exist..!! Try Different..',
        ]); 
      } else {
            $newUser = new myblog_register_tbl; 
            $newUser->name=$request->name;
            $newUser->email=$request->email;
            $newUser->phone=$request->phoneno;
            $newUser->password=Hash::make($request->password);
            $newUser->photo='na'; 
            $newUser->login_check='FALSE'; 
            $newUser->admin_check='pending'; 
            $result = $newUser->save();
            $last_id = $newUser->id;
            if($request->hasFile('profilePic')) {
                $fileName = $request->file('profilePic')->getClientOriginalName();
                $file_extension = $request->file('profilePic')->extension();
                $file_size = $request->file('profilePic')->getSize();
                $file_Newname = rand(11111, 99999)."_".$file_size.".".$file_extension;
                if($request->file('profilePic')->move('myBlog/uploadFiles',$file_Newname)){
                    $userPhoto = myblog_register_tbl::find($last_id);
                    $userPhoto->photo=$file_Newname;
                    $Photoresult= $userPhoto->save();
                    if($Photoresult){ 
                        return response()->json([
                        'last_id' =>$last_id,
                        'fileName' =>$file_Newname,
                        'status' => 200,
                        'message' => 'Successfully Created. Waiting For Admin Approval.',
                        ]); 
                        exit;
                    } else {
                        return response()->json([
                        'status' => 400,
                        'message' => 'Failed To File Upload..!!',
                        ]); 
                        exit;
                    }
                } else {
                    return response()->json([
                        'status' => 400,
                        'message' => 'Failed To Move File..!!',
                        ]); 
                        exit;
                    }
                } else {
                    return response()->json([
                        'last_id' =>$last_id,
                        'status' => 200,
                        'message' => 'Successfully Created. Waiting For Admin Approval.',
                        ]); 
                        exit;
                }
            } 
        
    }

    public function loginVerify(Request $request){
         $loginData= myblog_register_tbl::where('email', $request->emailid)->first();
        if (!$loginData || !Hash::check($request->password, $loginData->password)) {
            return response()->json([
                'status'  => 400,
                'message' => 'These credentials do not match our records..!!',
            ]); 
            exit;
        } else {
            if($loginData->admin_check=="pending"){
                return response()->json([
                    'userData'=> $loginData,
                    'status'  => 400,
                    'message' => 'Please Waiting For Admin Approval.',
                ]); 
                exit;
            } else {  
                $data = myblog_register_tbl::find($loginData->id);
                $data->login_check=true;
                $data->save();
                return response()->json([
                    'userData'=> $data,
                    'token'=> $this->TokenController->createToken($request,$loginData->id,$loginData->email),
                    'status'  => 200,
                    'message' => 'Logged In Successfully..',
                ]); 
                exit;
            }
        }
    }

 
  
 public function logout(Request $request){
    $route = \Request::url();
    $htoken = $request->header('Authorization');
    if($this->myblog_logindetails_tbl->checkAuth($htoken,$route)){
        $this->TokenController->deleteToken($request);
        return response()->json([
            'status' => 200,
            'message' => 'Successfully logged out..',
        ]);
        exit;
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