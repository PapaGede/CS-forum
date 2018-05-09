<?php

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

Route::get('/', function () {
    return view('welcome');
});
Route::resource('post','PostController');
Auth::routes();
Route::get('/threadTypeShow/{type}','pagesController@threadTypeShow');
Route::get('/threadType','pagesController@threadType')->name('threadType');
Route::get('/thread/test','ThreadController@test');
Route::resource('comment','CommentController',['only'=>['update','destroy']]);
Route::post('comment/create/{thread}','CommentController@addThreadcomment');
Route::resource('thread','ThreadController');
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/logout','Auth\LoginController@logout');
Route::get('login/{provider}', 'Auth\LoginController@redirectToProvider');
Route::get('login/{provider}/callback', 'Auth\LoginController@handleProviderCallback');
Route::get('geopay/callback','paymentController@handlePaymentCallback');
Route::get("/user/profile","pagesController@userProfile")->name('profile');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::post('/store','ajaxController@store');
Route::get('/dashboard','adminController@dashboard');
Route::get('/newThreads','adminController@newThreads');
Route::get('/admin/banned','adminController@banned');
Route::get('/admin/user','adminController@user');
Route::get('/admin/userdetail/{id}','adminController@userdetail');
Route::get('/threadTypeSuggest','pagesController@threadTypeSuggest');
Route::get('/threadTypeReview','adminController@threadTypeReview');

