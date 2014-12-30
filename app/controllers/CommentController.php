<?php

class CommentController extends \BaseController {


	public function store()
	{
		$id=Input::get('article_id');
		$comment=new comment;
		$comment->body  = Input::get('body');
		$comment->article_id  = $id;
		$comment->save();
		return Redirect::route('blog.show',$id);
	}


	public function destroy($id){
		if (Auth::check()){
		    $note = Comment::find($id);
	        $note->delete();
	        $article_id=Input::get('article_id');
	       	return Redirect::route('blog.show',$article_id);
		}else{
			return "您没有权限删除评论哦";					
		}
	}

}
