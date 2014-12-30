<?php
class MessageController extends \BaseController {

	public function index(){
		$messages=DB::table('messages')->paginate(10);
		return View::make('message.index')->with('messages',$messages)->with('num','1');
	}

	public function store()
	{
		$message=new Message;
		$message->body  = Input::get('body');
		$message->save();
		return Redirect::route('message.index');
	}

	public function destroy($id)
	{
		if (Auth::check()){
		$message = Message::find($id);
        $message->delete();
        return Redirect::route('message.index');
		}else{
			return "您没有权限删除留言哦";
		}	
	}
}