<?php

namespace App\Models\myBlog;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\myBlog\myblog_logindetails_tbl;
class myblog_logindetails_tbl extends Model
{ 
    use HasFactory;
    public $timestamps=false;
    public $table = "myblog_logindetails_tbl";
 
    public function checkAuth($token,$route){
    $ex_token = explode(" ",$token);
        if(count($ex_token) > 0){ 
            if(strpos($ex_token[1], '|')){
                [$ex_id, $ex_token] = explode("|",$ex_token[1],2);
                $tokendata = myblog_logindetails_tbl::where('id', $ex_id)->first();
                if (!$tokendata) { 
                    return false;
                } else {
                    if(hash_equals($tokendata->token, hash('sha256', $ex_token))){
                        if($tokendata->status === "Active"){
                            date_default_timezone_set('Asia/Kolkata');
                            $data = myblog_logindetails_tbl::find($ex_id);
                            if(!in_array("logout", explode("/",$route))){
                                $data->tokenable_type=$route;
                                $data->last_used_at=date("Y-m-d h:i:s A");
                                $data->save();
                            } else {
                                $data->last_used_at=date("Y-m-d h:i:s A");
                                $data->save();
                            }
                            return true; 
                        } else {
                            return false;
                        }
                    } else {
                        return false;
                    }
                }
            } else {
                return false;
            }
        } else {
            return false;
        }
    }






}