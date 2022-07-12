<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\angularUser_tbl;

class AngularAPI extends Controller
{ 
   public function addAngular_data(Request $req){ 
         $check=angularUser_tbl::where('email',$req->email)->first();
        if($check){
        return response()->json([
            'Edata' =>$check,
            'total' => $check->count(),
            'status' => 400,
            'message' => 'Email Id already exist..!! Try Different..',
        ]); 
        exit; 
      } else {
        $newUser = new angularUser_tbl; 
                $newUser->name=$req->name;
                $newUser->email=$req->email;
                $newUser->password=$req->password;
                $newUser->photo='na';
                $result = $newUser->save();
                $last_id = $newUser->id;
            if($req->hasFile('Select_photo')) {
                $fileName = $req->file('Select_photo')->getClientOriginalName();
                $file_extension = $req->file('Select_photo')->extension();
                $file_size = $req->file('Select_photo')->getSize();
                $file_Newname = rand(11111, 99999)."_".$file_size.".".$file_extension;
                if($req->file('Select_photo')->move('uploadFiles',$file_Newname)){
                    $userPhoto = angularUser_tbl::find($last_id);
                    $userPhoto->photo=$file_Newname;
                    $Photoresult= $userPhoto->save();
                    if($Photoresult){ 
                        return response()->json([
                        'last_id' =>$last_id,
                        'fileName' =>$file_Newname,
                        'status' => 200,
                        'message' => 'Successfully Created..',
                        ]); 
                        exit;
                    } else {
                        return response()->json([
                        'status' => 400,
                        'message' => 'Failed To Upload..!!',
                        ]); 
                        exit;
                    }
                } else {
                    return response()->json([
                        'status' => 400,
                        'message' => 'Failed To File Upload..!!',
                        ]); 
                        exit;
                    }
                }
                
            } 
      }
    public function viewAngular_data(){
            $angulardata = angularUser_tbl::orderBy('id', 'DESC')->get(); 
            if($angulardata){
                    return response()->json([
                    'Alldata' =>$angulardata,
                    'status' => 200,
                    'message' => 'Records Successfully Fatched..',
                    ]); 
                    exit;
                } else {
                    return response()->json([
                    'status' => 400,
                    'message' => 'Failed To Fatched..!!',
                    ]);
                    exit;
                }
    }
    public function deleteAngular_Users($id){
        $result=angularUser_tbl::where('id',$id)->delete();
            if($result){
                return response()->json([
                    'result' =>$result,
                    'status' => 200,
                    'message' => 'Records Has Been Successfully Deleted..',
                    ]);
                exit;
            } else {
                return response()->json([
                    'status' => 400,
                    'message' => 'Failed To Delete..!!',
                    ]);
                exit;
            }
    }  
    public function viewEditeangularData($id){
        $result=angularUser_tbl::where('id',$id)->first(); 
        if($result){
            return response()->json([
                'Edata' =>$result,
                'total' => $result->count(),
                'status' => 200,
                'message' => 'Records Successfully Fatched..',
            ]); 
            exit;
        } else {
            return response()->json([
                'status' => 400,
                'message' => 'Failed To Fatched.!!',
                ]);
        }
    }
    public function UpdateAngular_data(Request $req){
            $data = angularUser_tbl::find($req->user_id);
            $data->name=$req->new_name;
            $data->email=$req->new_email;
            $data->password=$req->new_password;
            $textResult = $data->save();
        if($textResult){ 
            return response()->json([
            'result' =>$textResult,
            'status' => 200,
            'message' => 'Update Successfully..',
            ]); 
            exit;
        } else {
            return response()->json([
            'status' => 400,
            'message' => 'Failed To Update..!!',
            ]); 
            exit;
        }
    } 
      
} 
