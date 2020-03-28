<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


//Shubham Backend

// Login View
Route::get('/login', array('as' => 'login', 'uses' => 'User\UserController@index'));
Route::post('/login', array('before' => 'csrf', 'uses' => 'User\UserController@login'))->name('login-user');

//Signup
Route::get('/signup', array('as' => 'signup', 'uses' => 'User\UserController@signup'));
Route::post('/signup', array('before' => 'csrf', 'uses' => 'User\UserController@addSignup'))->name('signup-user');

/**
 * Route group for logged users
 */
Route::group([
    'middleware' => ['auth', 'authAdmin']
], function() {
    Route::get('/dashboard', 'User\UserController@dashboard')->name('dashboard');
    Route::get('/logout', array('uses' => 'Auth\LoginController@logout'))->name('logout');
});
