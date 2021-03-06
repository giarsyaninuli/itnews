<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::group(array('before' => 'auth'), function() 
{
	
	Route::group(array('before' => 'visitor'), function() 
	{
		Route::group(array('prefix' => 'panel'), function()
		{
		    Route::get('dashboard', 'DashboardController@index');
		});
	});

	Route::get('/home', function()
	{
		return View::make('comingsoon');
	});
});


Route::controller('auth','AuthController');
Route::get('/', function()
{
	return View::make('comingsoon');
});