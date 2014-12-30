<?php
class AuthController extends BaseController{
	public function getLogin(){
		return View::make('Auth.login');
	}
	public function postLogin(){
		$username = Input::get('username');
		$password= Input::get('password');
		if (Auth::attempt(array('username' => "1", 'password' => "1")))
		{
		    return Redirect::intended('layouts.index');
		}else{
			return "用户名或密码错误";
		}
	}
}