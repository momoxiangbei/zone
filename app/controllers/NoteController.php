<?php

class NoteController extends \BaseController {

	public function index()
	{	
		$notes=Note::all();
		return View::make('notes.index')->with('notes',$notes);
	}


	public function create()
	{
		if (Auth::check()){
		    return View::make('notes.create');
		}else{
			return View::make('notes.judge');
		}
	}

	public function store()
	{
		$note=new Note;
		$note->img    =  Input::get('img');
		$note->title  =  Input::get('title');
		$note->body   =  Input::get('body');
		$note->mood   =  Input::get('mood');
		$note->save();
		return Redirect::route('notes.index');
	}

	public function destroy($id)
	{
		if (Auth::check()){
		    $note = Note::find($id);
	        $note->delete();
	        return Redirect::route('notes.index');
		}else{
			return "您没有权限删除说说哦";					
		}
	}

}
