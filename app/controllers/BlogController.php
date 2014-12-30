<?php

class BlogController extends \BaseController {

	public static $through=0; 


	public function index()
	{
		$articles=DB::table('articles')->paginate(4);
		return View::make('blog.index')->with('articles',$articles);
	}


	public function create()
	{
		if (Auth::check()){
		    return View::make('blog.create');
		}else{
			return "您没有权限发表博客哦 快去向主人申请吧";
		}
		
	}

	public function store()
	{
		$article=new Article;
		$article->title  =  Input::get('title');
		$article->author =  Input::get('author');
		$article->body   =  Input::get('body');
		$article->save();
		return Redirect::route('blog.index');
	}


	public function show($id)
	{
		$article = Article::find($id); 
		$comments = Article::find($id)->comments; 
		return View::make('blog.show')->with('comments',$comments)->with('article',$article);
	}


	public function edit($id)
	{
		if (Auth::check()){
		    return View::make('blog.edit')->with('article',Article::find($id));
		}else{
			return "您没有权限修改博客哦";
		}		
	}


	public function update($id)
	{
		$article=new Article;
		$article->title  =  Input::get('title');
		$article->author =  Input::get('author');
		$article->body   =  Input::get('body');
		$article->save();
		return Redirect::route('blog.index');
	}


	public function destroy($id)
	{
		if (Auth::check()){
		    $article = Article::find($id);
	        $article->delete();
	        return Redirect::route('blog.index');
		}else{
			return "您没有权限删除博客哦";
		}	

	}
}
