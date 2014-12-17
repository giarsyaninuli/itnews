<?php

class DashboardController extends \BaseController {
	public function index()
	{
		View::share('title','Dashboard');
		return View::make('backend.dashboard.index');
	}
}