<?php

class AuthController extends \BaseController {
	public function getIndex()
	{
		return View::make('backend.login.index');
	}
}