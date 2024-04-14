<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Http\Controllers\AngularAPI;
use App\Http\Controllers\myBlog\loginAndRegister;
use App\Http\Controllers\angularnewdemo\api;
use App\Http\Controllers\MessageController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::fallback(function(){
  return [
    'status'=>200,
    'message'=>"route not found..!!"
  ];
});

Route::get('/', function () {
    return view('welcome');
});

//angular data insert,add,delete,view start
Route::group(['prefix'=>'/angularAPI'],function(){
Route::post("/addangularData",[AngularAPI::class, 'addAngular_data']);
Route::get("/viewangularData",[AngularAPI::class, 'viewAngular_data']);
Route::delete("/deleteangularData/{id}",[AngularAPI::class, 'deleteAngular_Users']);
Route::get("/viewEditeangularData/{id}",[AngularAPI::class, 'viewEditeangularData']);
Route::put("/updateangularData",[AngularAPI::class, 'UpdateAngular_data']);
});
//angular data insert,add,delete,view end

Route::get('/viewform', function () {
    return view('myform');
});

//myBloge data insert,add,delete,view start ,'middleware' => 'myblog'
Route::group(['prefix'=>'/myblog','middleware' => 'myblog'],function(){
  Route::post("/newRegister",[loginAndRegister::class, 'userRegister']);
  Route::post("/loginVerify",[loginAndRegister::class, 'loginVerify']);
});  

// ,'middleware' => 'myblogloggedin'
Route::group(['prefix'=>'/myblog/access','middleware' => 'myblogloggedin'],function(){
  Route::post("/demotest",[api::class, 'index']);
  Route::get("/alldata",[api::class, 'viewalldata']);
  Route::get("/usersearch/{id}",[api::class, 'usersearch']);
  Route::delete("/userdelete/{id}",[api::class, 'userdelete']);
  Route::post("/userupdate",[api::class, 'userupdate']);
  Route::get("/viewalltbldata",[api::class, 'viewalltbldata']);
  Route::get("/viewallvideolist",[api::class, 'viewallvideolist']);
  Route::get("/testpdff_data",[api::class, 'ExportPDF']);
  Route::get("/xl-data-expoert",[api::class, 'ExportEXCEL']);
  Route::post("/delete-file",[api::class, 'DeleteFile']);
  Route::post("/uploadmultiples",[api::class, 'uploadmultiples']);
  Route::get("/viewallmultidata",[api::class, 'viewallmultidata']);
  Route::get("/multiusersearch/{id}",[api::class, 'multiusersearch']);
  Route::post("/updatemultiples",[api::class, 'updatemultiples']);
  Route::get("/chat-user-list",[MessageController::class, 'chatuserlist']);
  Route::post("/public-channel",[MessageController::class, 'publicchannel']);//for message send to public channel
  Route::post("/User-Presence-Chat-Channel",[MessageController::class, 'UserPresenceChatChannel_']);//for message send to presence channel
  Route::post("/active-user-list",[MessageController::class, 'allactiveuserPost']);// get all active user
  Route::post("/user-disconnected",[MessageController::class, 'userdisconnected']);
  Route::post("/user-connected",[MessageController::class, 'userconnected']);
  Route::post("/user-chat-list",[MessageController::class, 'userchatlist']);
  Route::post("/get-user-chat-by-id",[MessageController::class, 'getuserchatbyid']);
  Route::post("/save-new-message",[MessageController::class, 'savenewmessage']);
  Route::post("/update-chat-read-status",[MessageController::class, 'updatechatreadstatus']);
  Route::post("/get-no-of-unseen-chat",[MessageController::class, 'getnoofunseenchat']); 
  Route::get("/logout",[loginAndRegister::class, 'logout']);
});
// php artisan config:cache 
// php artisan config:clear 
// php artisan optimize 
// php artisan route:clear
// php artisan route:cache
//http://127.0.0.1:8000/public-channel
//http://127.0.0.1:8000/User-Presence-Chat-Channel
//http://127.0.0.1:8000/active-user-list?channelname=presence-trackUserPresenceChatChannel
Route::get("/public-channel",[MessageController::class, 'publicchannel']);
Route::get("/User-Presence-Chat-Channel",[MessageController::class, 'UserPresenceChatChannel_']);
Route::get("/active-user-list",[MessageController::class, 'allactiveuserGet']);
//myBloge data insert,add,delete,view end
 








  
//newdemo data insert,add,delete,view start
Route::group(['prefix'=>'/newdemo','middleware' => 'newdemo'],function(){
  Route::get("/viewallmultidata",[api::class, 'viewallmultidata']);
  Route::post("/uploadmultiples",[api::class, 'uploadmultiples']);
  Route::get("/multiusersearch/{id}",[api::class, 'multiusersearch']);
  Route::get("/view-multiples-form",function(){ return view('multiples'); });
  Route::post("/demotest",[api::class, 'index']);
  Route::get("/alldata",[api::class, 'viewalldata']);
  Route::get("/usersearch/{id}",[api::class, 'usersearch']);
  Route::delete("/userdelete/{id}",[api::class, 'userdelete']);
  Route::post("/userupdate",[api::class, 'userupdate']);
});
//newdemo data insert,add,delete,view end

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';
