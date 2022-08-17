<?php

namespace App\Http\Controllers\myBlog;

use App\Http\Controllers\Controller;
use App\Models\newdemo\newdemo_tbl;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\myBlog\Contact;
use App\Models\myBlog\Country;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Collection;
use Illuminate\Pagination\LengthAwarePaginator;

class FrontendController extends Controller
{
    public function pager($items, $perPage = null, $page = null, $options = [])
    {
      $page = $page ?: (Paginator::resolveCurrentPage() ?: 1);
      $items = $items instanceof Collection ? $items : Collection::make($items);
      return new LengthAwarePaginator($items->forPage($page, $perPage), $items->count(), $perPage, $page, $options);
    }

    public function homevideolist(Request $request)
    {
        $check = DB::table('videolist')->count();
        if($check > 0){
            $data = DB::table('videolist')->orderBy('id', 'DESC')->limit(6)->get();
            if($data){
                return response()->json([
                    'allvideos' =>$data,
                    'total'=> $check,
                    'status' => 200,
                    'message' => 'Records Successfully Fatched..',
                ]);
            } else {
                return response()->json([
                    'allvideos' => null,
                    'total'=> $check,
                    'status' => 400,
                    'message' => 'Failed To Fatched..!!',
                ]);
            }
        } else {
            return response()->json([
                'check' => $check,
                'status' => 400,
                'message' => 'No records found..!!',
            ]);
        }
    }
    public function gallery(Request $request){
        // SELECT id,email as title,password AS type,photo,CASE WHEN password = "App" THEN "filter-app" WHEN password = "Web" THEN "filter-web" WHEN password = "Card" THEN "filter-card" ELSE "filter-web" END AS classname FROM `newdemo_tbl`;
        $check = newdemo_tbl::count();
        if($check > 0){ 
            $data = newdemo_tbl::select('email as title','password as type','photo',DB::raw('(CASE WHEN password = "App" THEN "filter-app" WHEN password = "Web" THEN "filter-web" WHEN password = "Card" THEN "filter-card" ELSE "filter-card" END) AS class_name'))->orderBy('id', 'DESC')->limit(9)->get();
            if($data){
                return response()->json([
                    'alldata' =>$data,
                    'total'=> $check,
                    'status' => 200,
                    'message' => 'Records Successfully Fatched..',
                ]);
            } else {
                return response()->json([
                    'alldata' => null,
                    'total'=> $check,
                    'status' => 400,
                    'message' => 'Failed To Fatched..!!',
                ]);
            }
        } else {
            return response()->json([
                'check' => $check,
                'status' => 400,
                'message' => 'No records found..!!',
            ]);
        }
    }


     public function countrylist(Request $request)
    {
       $check = Country::count();
        if($check > 0){
            $data = Country::all();
            if($data){
                return response()->json([
                    'list' =>$data,
                    'total'=> $check,
                    'status' => 200,
                    'message' => 'Records Successfully Fatched..',
                ]);
            } else {
                return response()->json([
                    'list' => null,
                    'total'=> $check,
                    'status' => 400,
                    'message' => 'Failed To Fatched..!!',
                ]);
            }
        } else {
            return response()->json([
                'check' => $check,
                'status' => 400,
                'message' => 'No records found..!!',
            ]);
        }
    }




public function contactform(Request $request)
{
    $new = new Contact; 
    $new->name=$request->contact_name;
    $new->email=$request->contact_email;
    $new->country=$request->contact_country;
    $new->phone=$request->contact_phone; 
    $new->subject=$request->contact_subject; 
    $new->message=$request->contact_message; 
    if($new->save()){
        return response()->json([
            'status' => 200,
            'message' => 'Thank you for contact with us. We will call you very soon',
        ]);
    } else {
        return response()->json([
            'status' => 400,
            'message' => 'Failed To Upload..!!',
        ]);
    }
}

public function headersearch(Request $request)
{
    $type = $request->search_type;
    $key_word = $request->key_word;
    $data =array();
    $country = Country::select('name','flag as url',DB::raw('(CASE WHEN id = "ok" THEN "country" ELSE "country" END) AS type')) ->where('name', 'LIKE', '%'.$key_word.'%')->get();

    $gallery = newdemo_tbl::select('email as name','photo as url',DB::raw('(CASE WHEN id = "ok" THEN "gallery" ELSE "gallery" END) AS type'))->where('email', 'LIKE', '%'.$key_word.'%')->get();

   $video = DB::table('videolist')->select('title as name','link_href as url',DB::raw('(CASE WHEN id = "ok" THEN "video" ELSE "video" END) AS type'))->where('title', 'LIKE', '%'.$key_word.'%')->get();
    //http://127.0.0.1:8000/newdemo/uploadFiles/
    //echo "<pre>";
    foreach ($country as $key0 => $row0) {
        array_push($data,$row0);
    }
    foreach ($gallery as $key1 => $row1) {
        array_push($data,$row1);
    }
    foreach ($video as $key2 => $row2) {
        array_push($data,$row2);
    }
   return response()->json([
        'status' => 200,
        'data' => $data,
    ]);

}


public function allblogdata(Request $request)
{
     $data =array();
    $country = Country::select('name','code','timezone','utc','mobileCode','flag',DB::raw('(CASE WHEN id = "ok" THEN "country" ELSE "country" END) AS tbl_type'))->get();

    $gallery = newdemo_tbl::select('email as name','photo','password as type','currentdate',DB::raw('(CASE WHEN id = "ok" THEN "gallery" ELSE "gallery" END) AS tbl_type'))->get();

   $video = DB::table('videolist')->select('title as name','link_href as href_url','link as url','date',DB::raw('(CASE WHEN id = "ok" THEN "video" ELSE "video" END) AS tbl_type'))->get();
   // ->paginate(5);->where("link_href","!=","https://youtu.be/Xp9jKUY_q0Y")->get();

   foreach ($video as $key2 => $row2) {
        array_push($data,$row2);
    }

    foreach ($gallery as $key1 => $row1) {
        array_push($data,$row1);
    }

    foreach ($country as $key0 => $row0) {
        array_push($data,$row0);
    }
    if(isset($_GET['page'])){
        $page = $request->get('page');
        if($page==0 && $page==""){
            $cpage = 1;
        } else {
            $cpage = $page;
        }
    } else {
        $cpage = 1;
    }
    $records= $this->pager($data,10,$cpage); 
   return response()->json([
        'status' => 200,
        'alldata' => $records,
    ]);
}












}
