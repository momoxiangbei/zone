<?php


Route::get('/', function(){
	return View::make('layouts.index');
});

// ------------log-----------------
Route::get('login', ['as' => 'login','uses' => 'UserController@getLogin']);
Route::post('login', ['as' => 'login','uses' => 'UserController@postLogin']);
Route::get('logout', ['as' => 'logout','uses' => 'UserController@logout']);


// ------------message-----------
Route::get('message', array('uses' => 'MessageController@index','as' => 'message.index'));
Route::post('message',array('uses'=>'MessageController@store','as'=>'message.store'));
Route::delete('message/{message}',array('uses'=>'MessageController@destroy','as'=>'message.destroy'));


// --------------blog--------------
Route::resource('blog','BlogController');

// --------------comment---------------
Route::resource('comment','CommentController');

//---------------notes--------------
Route::resource('notes','NoteController');

// --------------show---------------
Route::get('show',array('uses' => 'showController@index','as'=>'show.index'));

// --------------momo---------------
Route::get('momo',array('uses' => 'MomoController@index','as'=>'momo'));

