<?php

namespace App\Http\Controllers\angularnewdemo;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\newdemo\newdemo_tbl;
use App\Models\newdemo\Multiples;
use App\Models\newdemo\MultiplesUser;
use Illuminate\Support\Facades\DB;
use App\Models\myBlog\myblog_logindetails_tbl;

class api extends Controller
{




     public function index(Request $request)
    {
        $newUser = new newdemo_tbl;
        $newUser->user_agent=$request->user_agent;
        $newUser->email=$request->email;
        $newUser->password=$request->password;
        $newUser->photo='na';
        $result = $newUser->save();
        $last_id = $newUser->id;
        if($request->hasFile('profilePic')) {
            $fileName = $request->file('profilePic')->getClientOriginalName();
            $file_extension = $request->file('profilePic')->extension();
            $file_size = $request->file('profilePic')->getSize();
            $file_Newname = rand(11111, 99999)."_".$file_size.".".$file_extension;
            if($request->file('profilePic')->move('newdemo/uploadFiles',$file_Newname)){
                $userPhoto = newdemo_tbl::find($last_id);
                $userPhoto->photo=$file_Newname;
                $Photoresult= $userPhoto->save();
                if($Photoresult){
                    return response()->json([
                    'user' => newdemo_tbl::find($last_id),
                    'status' => 200,
                    'message' => 'Successfully Created.',
                    ]);
                    exit;
                } else {
                    if(\File::exists(public_path('/newdemo/uploadFiles/'.$file_Newname))){
                        \File::delete(public_path('/newdemo/uploadFiles/'.$file_Newname));
                       }
                    newdemo_tbl::where('id',$last_id)->delete();
                    return response()->json([
                    'status' => 400,
                    'message' => 'Failed To File Upload. Try again..!!',
                    ]);
                    exit;
                }
            } else {
                if(\File::exists(public_path('/newdemo/uploadFiles/'.$file_Newname))){
                    \File::delete(public_path('/newdemo/uploadFiles/'.$file_Newname));
                    }
                newdemo_tbl::where('id',$last_id)->delete();
                return response()->json([
                    'status' => 400,
                    'message' => 'Failed To Move File. Try again..!!',
                    ]);
                    exit;
                }
            }
    }


    public function viewalldata(Request $request)
    {
        $check = newdemo_tbl::count();
        if($check > 0){
        $angulardata = newdemo_tbl::select('id','email')->orderBy('id', 'DESC')->get();
            if($angulardata){
                    return response()->json([
                    'alldata' =>$angulardata,
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
        } else {
            return response()->json([
                'check' => $check,
                'status' => 400,
                'message' => 'No records found..!!',
            ]);
            exit;
        }
    }

    public function viewalltbldata(Request $request)
    {
        $check = newdemo_tbl::count();
        if($check > 0){
        $angulardata = newdemo_tbl::orderBy('id', 'DESC')->paginate(5);
            if($angulardata){
                    return response()->json([
                    'alldata' =>$angulardata,
                    'total'=> $check,
                    'status' => 200,
                    'message' => 'Records Successfully Fatched..',
                    ]);
                    exit;
                } else {
                    return response()->json([
                        'alldata' => null,
                        'total'=> $check,
                        'status' => 400,
                        'message' => 'Failed To Fatched..!!',
                    ]);
                    exit;
                }
        } else {
            return response()->json([
                'check' => $check,
                'status' => 400,
                'message' => 'No records found..!!',
            ]);
            exit;
        }
    }
    public function usersearch(Request $request,$id)
    {
         $check = newdemo_tbl::where('id',$id)->count();
         if($check > 0){
            return response()->json([
                'userdata' => newdemo_tbl::where('id',$id)->first(),
                'status' => 200,
                'message' => 'Records found..!!',
            ]);
            exit;
         } else {
            return response()->json([
                'check' => $check,
                'status' => 400,
                'message' => 'No records found..!!',
            ]);
            exit;
         }
    }

    public function userdelete(Request $request,$id)
    {
         $check = newdemo_tbl::where('id',$id)->count();
         if($check > 0){
            $dalete = newdemo_tbl::where('id',$id)->delete();
            return response()->json([
                'dalete' => $dalete,
                'status' => 200,
                'message' => 'Records successfully deleted..',
            ]);
            exit;
         } else {
            return response()->json([
                'check' => $check,
                'status' => 400,
                'message' => 'No records found..!!',
            ]);
            exit;
             }
    }

    public function userupdate(Request $request)
    {
        $updateid = $request->updateid;
        $check = newdemo_tbl::where('id',$updateid)->count();
        if($check > 0){
            $userdata = newdemo_tbl::where('id',$updateid)->first();
            $upateuser = newdemo_tbl::find($updateid);
            $upateuser->email=$request->email;
            $upateuser->password=$request->password;
            $upateuser->user_agent=$request->user_agent;
            $update= $upateuser->save();
            if($update){
                if($request->hasFile('profilePic')) {
                $file = $request->file('profilePic');
                $fileName = $file->getClientOriginalName();
                $file_extension = $file->extension();
                $file_size = $file->getSize();
                $file_Newname = rand(11111, 99999)."_".$file_size.".".$file_extension;
                if($file->move('newdemo/uploadFiles',$file_Newname)){
                    $upateuser->photo=$file_Newname;
                    $Photoresult= $upateuser->save();
                    if($Photoresult){
                        if(\File::exists(public_path('/newdemo/uploadFiles/'.$request->oldfile))){
                            \File::delete(public_path('/newdemo/uploadFiles/'.$request->oldfile));
                        }
                        return response()->json([
                        'user' => $userdata,
                        'status' => 200,
                        'message' => 'All data successfully uploaded.',
                        ]);
                        exit;
                    } else {
                        if(\File::exists(public_path('/newdemo/uploadFiles/'.$file_Newname))){
                            \File::delete(public_path('/newdemo/uploadFiles/'.$file_Newname));
                        }
                        return response()->json([
                        'status' => 400,
                        'message' => 'Records has been successfully uploaded. Failed to file upload..!!',
                        ]);
                        exit;
                    }
                } else {
                    return response()->json([
                        'status' => 400,
                        'message' => 'Records has been successfully uploaded. Failed to move file..!!',
                        ]);
                        exit;
                    }
                } else {
                    return response()->json([
                    'user' => $userdata,
                    'status' => 200,
                    'message' => 'Successfully uploaded..',
                    ]);
                    exit;
                }
            } else {
                return response()->json([
                    'status' => 400,
                    'message' => 'Failed to update..!!',
                ]);
                exit;
            }
        } else {
            return response()->json([
                'userid' =>$updateid,
                'status' => 400,
                'message' => 'Something is wrong..!!',
            ]);
            exit;
        }
    }



    public function uploadmultiples(Request $request){
        $customer = [
                'cname' => $request->cname,
                'cemail' => $request->cemail,
                'cphone' => $request->cphone,
            ];
       $c_id =  DB::table('multiples_user_data')->insertGetid($customer);
       $files_name = array();
       $files_index = array();
       $alldata = array();
       $result = array();
        if($request->hasFile('photo')){
            foreach($request->file('photo') as $key => $file) {
                $fileName = $file->getClientOriginalName();
                $extension = $file->extension();
                $size =  $file->getSize();
                $file_Rname = "multiple_".rand(11111, 99999)."_".$size.".".$extension;
                $path = public_path().'/newdemo/upload-Multiples/'.$file_Rname;
                $file->move('newdemo/upload-Multiples/',$file_Rname);
                // $info = getimagesize($path);
                // if ($info['mime'] == 'image/jpeg') {
                //     $image = imagecreatefromjpeg($path);
                // } elseif ($info['mime'] == 'image/gif') {
                //     $image = imagecreatefromgif($path);
                // } elseif ($info['mime'] == 'image/png') {
                //     $image = imagecreatefrompng($path);
                // }
                // if (file_exists($path)) {
                //     unlink($path);
                // }
                // imagejpeg($image, $path, 20);
                $files_name[$key] = $file_Rname;
                $files_index[] = $key;
            }
        }
        foreach($request->name as $key => $val) {
            if(in_array($key,$files_index)){
                $alldata = [
                    'cid' => $c_id,
                    'name' => $request->name[$key],
                    'qty' => $request->qty[$key],
                    'price' => $request->price[$key],
                    'photo' => $files_name[$key],
                ];
            } else {
                $alldata = [
                    'cid' => $c_id,
                    'name' => $request->name[$key],
                    'qty' => $request->qty[$key],
                    'price' => $request->price[$key],
                    'photo' => null,
                ];
            }
           $result[] =  DB::table('multiples')->insert($alldata);
        }
        return response()->json([
            'result' => $result,
            'status' => 200,
            'message' => 'Successfully uploaded..',
        ]);
        exit;
    }


    public function viewallmultidata(Request $request){
        $check = MultiplesUser::count();
        if($check > 0){
        $allmulti_users = MultiplesUser::orderBy('id', 'DESC')->get();
            if($allmulti_users){
                return response()->json([
                'allmulti_users' =>$allmulti_users,
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
        } else {
            return response()->json([
                'check' => $check,
                'status' => 400,
                'message' => 'No records found..!!',
            ]);
            exit;
        }
    }

    public function multiusersearch(Request $request,$id)
    {
         $check = MultiplesUser::where('id',$id)->count();
         if($check > 0){
           $cuser =  MultiplesUser::where('id',$id)->first();
           $cuser_data = Multiples::where('cid',$id)->get();
            return response()->json([
                'cuser'=>$cuser,
                'cuser_data'=>$cuser_data,
                'status' => 200,
                'message' => 'Records successfully deleted..',
            ]);
            exit;
         } else {
            return response()->json([
                'check' => $check,
                'status' => 400,
                'message' => 'No records found..!!',
            ]);
            exit;
        }
    }

    public function updatemultiples(Request $request){
        $cid=$request->cid;
        $cname=$request->cname;
        $cphone=$request->cphone;
        $cemail=$request->cemail;

        $upid=$request->upid;
        $name=$request->name;
        $price=$request->price;
        $qty=$request->qty;
        $old_photo=$request->old_photo;

        $user = array(
                    'cname' => $cname,
                    'cemail' => $cemail,
                    'cphone' => $cphone,
                );
        DB::table('multiples_user_data')->where('id','=',$cid)->update($user);
        if(!$request->has('photo')){
            if(count($upid)>0)
            {
                foreach($upid as $ky=>$val)
                {
                    if($upid[$ky] !=""){
                        $data = array(
                            'cid' => $cid,
                            'name' => $name[$ky],
                            'qty' => $qty[$ky],
                            'price'=> $price[$ky],
                        );
                        DB::table('multiples')->where('id',$upid[$ky])->update($data);
                    } else {
                        $data = array(
                            'cid' => $cid,
                            'name' => $name[$ky],
                            'qty' => $qty[$ky],
                            'price'=>$price[$ky],
                        );
                        DB::table('multiples')->insert($data);
                    }
                }
                return true;
            } else{
                return false;
            }
        } else {
            $images=array();
            $images_index=array();
            if($files=$request->file('photo')){
                foreach ($files as $key => $file) {
                    $fileName = $file->getClientOriginalName();
                    $extension = $file->extension();
                    $size =  $file->getSize();
                    $file_Rname = "multiple_".rand(11111, 99999)."_".$size.".".$extension;
                    $path = public_path().'/newdemo/upload-Multiples/'.$file_Rname;
                    $file->move('newdemo/upload-Multiples/',$file_Rname);
                    // $info = getimagesize($path);
                    // if ($info['mime'] == 'image/jpeg') {
                    //     $image = imagecreatefromjpeg($path);
                    //     if (file_exists($path)) {
                    //         unlink($path);
                    //     }
                    //     imagejpeg($image, $path, 20);
                    //     $images[$key]=$file_Rname;
                    //     $images_index[]=$key;
                    // } elseif ($info['mime'] == 'image/gif') {
                    //     $image = imagecreatefromgif($path);
                    //     if (file_exists($path)) {
                    //         unlink($path);
                    //     }
                    //     imagejpeg($image, $path, 20);
                    //     $images[$key]=$file_Rname;
                    //     $images_index[]=$key;
                    // } elseif ($info['mime'] == 'image/png') {
                    //     $image = imagecreatefrompng($path);
                    //     if (file_exists($path)) {
                    //         unlink($path);
                    //     }
                    //     imagejpeg($image, $path, 20);
                    //     $images[$key]=$file_Rname;
                    //     $images_index[]=$key;
                    // } else {

                    // }
                    $images[$key] = $file_Rname;
                    $images_index[] = $key;
                }
            }
            if(count($name)>0){
                foreach($name as $ky=>$val){
                    if($upid[$ky] ==""){
                        if(in_array($ky,$images_index)){
                            $data = array(
                                'cid' => $cid,
                                'name' => $name[$ky],
                                'qty' => $qty[$ky],
                                'price'=> $price[$ky],
                                'photo' => $images[$ky],
                            );
                        } else {
                            $data = array(
                                'cid' => $cid,
                                'name' => $name[$ky],
                                'qty' => $qty[$ky],
                                'price'=> $price[$ky],
                            );
                        }
                        DB::table('multiples')->insert($data);
                    } else {
                        if(in_array($ky,$images_index)){
                            if(\File::exists(public_path('/newdemo/upload-Multiples/'.$old_photo[$ky]))){
                                \File::delete(public_path('/newdemo/upload-Multiples/'.$old_photo[$ky]));
                            }
                            $data = array(
                                'cid' => $cid,
                                'name' => $name[$ky],
                                'qty' => $qty[$ky],
                                'price'=> $price[$ky],
                                'photo' => $images[$ky],
                            );
                        } else {
                            $data = array(
                                'cid' => $cid,
                                'name' => $name[$ky],
                                'qty' => $qty[$ky],
                                'price'=> $price[$ky],
                            );
                        }
                        DB::table('multiples')->where('id',$upid[$ky])->update($data);
                    }
                }
                return true;
            } else {
                return false;
            }
        }
    }



    public function addvideolist(Request $request){
        $id=$request->id;
        $title=$request->title;
        $link=$request->link;
        $date=$request->date;
        $link_href=$request->link_href;
        if(count($id)>0)
        {
            foreach($id as $ky=>$val)
            {
                if($id[$ky] !=""){
                    $data = array(
                        'title' => $title[$ky],
                        'link' => $link[$ky],
                        'date'=> $date[$ky],
                        'link_href'=> $link_href[$ky]
                    );
                    DB::table('videolist')->where('id',$id[$ky])->update($data);
                } else {
                    $data = array(
                        'title' => $title[$ky],
                        'link' => $link[$ky],
                        'date'=> $date[$ky],
                        'link_href'=> $link_href[$ky]
                    );
                    DB::table('videolist')->insert($data);
                }
            }
            return true;
        } else{
            return false;
        }
    }

public function viewallvideolist(Request $request)
    {
        $check = DB::table('videolist')->count();
        if($check > 0){
        $angulardata = DB::table('videolist')->orderBy('id', 'DESC')->paginate(5);
            if($angulardata){
                    return response()->json([
                    'alldata' =>$angulardata,
                    'total'=> $check,
                    'status' => 200,
                    'message' => 'Records Successfully Fatched..',
                    ]);
                    exit;
                } else {
                    return response()->json([
                        'alldata' => null,
                        'total'=> $check,
                        'status' => 400,
                        'message' => 'Failed To Fatched..!!',
                    ]);
                    exit;
                }
        } else {
            return response()->json([
                'check' => $check,
                'status' => 400,
                'message' => 'No records found..!!',
            ]);
            exit;
        }
    }

    public function updatevideo(Request $resquest){
        $updateid = $resquest->id;
        $check = DB::table('videolist')->where('id',$updateid)->count();
        if($check > 0){
            $data = array(
                "date"=>$resquest->date,
                "link"=>$resquest->link,
                "title"=>$resquest->title
            );
            if(DB::table('videolist')->where('id', $updateid)->update($data)){
                return response()->json([
                    'status' => 200,
                    'message' => 'Records successfully updated.',
                ]);
            } else {
                return response()->json([
                    'status' => 200,
                    'message' => 'Nothing for update.',// OR failed to update..!!
                ]);
            }
        } else {
            return response()->json([
                'status' => 400,
                'message' => 'Record not found..!! Try again.',
            ]);
        }
    }


 public function deletevideo(Request $request,$id)
    {
         $check = DB::table('videolist')->where('id',$id)->count();
         if($check > 0){
            $dalete = DB::table('videolist')->where('id',$id)->delete();
            return response()->json([
                'dalete' => $dalete,
                'status' => 200,
                'message' => 'Records successfully deleted..',
            ]);
            exit;
         } else {
            return response()->json([
                'check' => $check,
                'status' => 400,
                'message' => 'No records found..!!',
            ]);
            exit;
             }
    }







}




