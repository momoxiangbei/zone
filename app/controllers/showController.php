<?php
class ShowController extends \BaseController {
	public function index(){
		return View::make('show.index');
	}
}