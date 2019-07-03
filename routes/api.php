<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Route::post('auth/login', 'Auth\LoginController@postLogin')->name('login');
//
////Route::post('/home',function() {
////return view('home');
////})->name('home');
//
//// Authentication routes...
////Route::get('auth/login', 'Auth\AuthController@getLogin');
//Route::post('auth/login', 'Auth\LoginController@postLogin')->name('login');