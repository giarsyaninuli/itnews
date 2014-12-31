<?php

class AuthController extends \BaseController {

	public function getIndex()
	{
		return View::make('backend.login.index');
	}

	public function postLogin()
	{
		$rules = array(
					'email'    => 'required|email', 
					'password' => 'required'
				);
        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) 
        {
           	return Redirect::back()->withInput()->withErrors(array('notif'=>$validator->messages()->all()));
        }

        // $ps = Hash::make(Input::get('password'));
        // return $ps;

		$token       = Input::get('_token');
		$email       = Input::get('email');
		$password    = Input::get('password');
		$remember_me = Input::get('remember_me');
		if($token)
		{
			$check 		= Modeluser::where('email',$email)->where('status','active')->first();
	        if(empty($check)){
	        	return Redirect::back()->withInput()->withErrors(array('notif'=>"Akun tidak terdaftar"));
	        }else{
	        	$group  = Modelgroup::find($check->group_id);
	            $user_data = array(
							'id'        => $check->id,
							'fullname'  => $check->fullname,
							'email'     => $check->email,
							'group_id'  => $check->group_id,
							'group_name'=> $group->group_name
	                    );
	            if (Hash::check($password, $check->password))
	            {
		            Session::put('auth_session', $user_data);
		            if ($remember_me) {
                        setcookie("email", $email, time() + 60 * 5);
                        setcookie("password", $password, time() + 60 * 5);
                    }
                    if($check->group_id==1){

		            	return Redirect::to('/panel/dashboard')->with('notif','Welcome to Admin Area');
                    }else{
                    	return Redirect::to('/home')->with('notif','Selamat datang di website kami');
                    }
		        }else{
		            return Redirect::back()->withInput()->withErrors(array('notif'=>'Password tidak valid.'));
		        } 

			}
		}else{
			return Redirect::to('/');
		}

		
	}

	public function getLogout()
	{
		Session::forget('auth_session');
        return Redirect::to('/auth')->with('notif','Success logout system');
	}



















}