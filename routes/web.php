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

Route::get('/', 'homeController@index');
//    Auth::routes();
Route::group(['middleware' =>[ 'web']], function () {
    Auth::routes();
      Route::get('register', 'Auth\RegisterController@index')->name('register');
      Route::post('register', 'Auth\RegisterController@register')->name('register');
    
    Route::post('group','MyController@group')->name('group')->middleware('auth');
    Route::post('login', 'Auth\LoginController@postLogin')->name('login');
    Route::get('start','MyController@index')->name('home');
    Route::post('messages','MyController@start')->name('messages')->middleware('auth');
    Route::get('messages','MyController@start')->name('messages')->middleware('auth');
    
     Route::post('send','MyController@send')->name('send')->middleware('auth');
    Route::get('view/user','UserController@view')->name('view.user')->middleware('auth');
    Route::post('edit','UserController@edit')->name('edit.user')->middleware('auth');
    
    //Autocomplete
    Route::post('/getgroups','AutocompleteController@groups');
    Route::post('/fetchinterests','AutocompleteController@interests');
//        Route::get('/panel','AdminController@index')->name('panel')->middleware('auth,admin');

    
});
Route::group(['middleware' =>[ 'web','auth','admin']], function () {
       Route::get('/panel','AdminController@index')->name('panel');
       Route::post('/ajax','AdminController@update');
});

//Auth::routes();
//Route::post('login', 'Auth\LoginController@postLogin')->name('login');
//Route::get('start','MyController@index')->name('home')->middleware('web');
//Route::post('messages','MyController@start')->name('messages')->middleware('web');