<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AngularAPI;
use App\Http\Controllers\myBlog\loginAndRegister;
use App\Http\Controllers\angularnewdemo\api;
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

  Route::post("/uploadmultiples",[api::class, 'uploadmultiples']);
  Route::get("/viewallmultidata",[api::class, 'viewallmultidata']);
  Route::get("/multiusersearch/{id}",[api::class, 'multiusersearch']);
  Route::post("/updatemultiples",[api::class, 'updatemultiples']);
  Route::get("/logout",[loginAndRegister::class, 'logout']);
});
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
