<?php
class UserController extends BaseController{
	public function getLogin(){
		return View::make('User.login');
	}
	public function postLogin(){
		$username = Input::get('username');
		$password= Input::get('password');
		$user = User::find(1);
		if($user->username==$username&&$user->password==$password){		
			Auth::login($user);	
			return Redirect::to('/');
		}else{
			return "用户名或密码错误";
		}
	}

	public function logout(){
		Auth::logout();	
		return Redirect::to('/');
	}
}