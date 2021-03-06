<?php

class AuthController extends BaseController {

	/*
	|--------------------------------------------------------------------------
	| Default Home Controller
	|--------------------------------------------------------------------------
	|
	| You may wish to use controllers instead of, or in addition to, Closure
	| based routes. That's great! Here is an example controller method to
	| get you started. To route to this controller, just add the route:
	|
	|	Route::get('/', 'HomeController@showWelcome');
	|
	*/

	public function getLogin()
	{

		$title = "Inicio de Sesión";
		if (Auth::check())
        {
            return Redirect::to('inicio');
        }

		return View::make('indexs.login')->with('title',$title);

	}
	public function postLogin()
	{

		$input = Input::all();
		if (isset($input['remember'])) {
			$valor = true;
		}else
		{
			$valor = false;
		}
		$find = User::where('username','=',$input['username'])->pluck('user_deleted');
		if ($find == 1) {
			Session::flash('error', 'Su usuario ha sido eliminado, para más información contáctenos desde nuestro módulo de contacto.');
			return Redirect::to('iniciar-sesion');
		}
		$userdata = array(
			'username' 	=> $input['username'],
			'password' 	=> $input['password']

		);
		if (Auth::attempt($userdata,$valor)) {
			if (Auth::user()->role == 1) {
				return Redirect::to('administrador/inicio');	
			}else
			{
				return Redirect::back();
			}
		}else
		{
			Session::flash('error', 'Usuario o contraseña incorrectos');
			return Redirect::to('iniciar-sesion');
		}
		
	}
	public function logOut()
	{
		Auth::logout();
		return Redirect::to('inicio');
	}
	public function getRegister()
	{
		$title = Lang::get('lang.titulo_3');
		$departamentos = Department::all();
		$pais = Pais::orderBy('name','asc')
		->get();
		return View::make('indexs.register')
		->with('title',$title)
		->with('pais',$pais)
		->with('departamentos',$departamentos);
	}
	public function postRegister()
	{
		$input = Input::all();
		$rules = array(
			'pass'      		 	 => 'required|min:6|confirmed',
			'cedula'			 	 => 'required',
			'pass_confirmation'      => 'required',
			'name'       			 => 'required|min:4',
			'lastname'   			 => 'required|min:4',
			'email'      			 => 'required|email|unique:usuario',
			'city'     			 	 => 'required',
			'dir' 			 		 => 'required',
			'department'			 => 'required',
			'g-recaptcha-response'   => 'required',

		);
		$messages = array(
			'username.required' =>Lang::get('lang.required'),
			'min'	   =>Lang::get('lang.min'),
			'unique'   =>Lang::get('lang.unique'),
			'email'	   =>Lang::get('lang.email'),
			'confirmed'=>Lang::get('lang.confirmed'),
		);
		
		$validator = Validator::make($input, $rules, $messages);
		if ($validator->fails()) {
			return Redirect::back()->withErrors($validator)->withInput();
		}
		$codigo = md5(rand());
		$user = new User;
		$user->username 	 = $input['email'];
		$user->password    	 = Hash::make($input['pass']);
		$user->email    	 = $input['email'];
		$user->nombre    	 = $input['name'];
		$user->dir 			 = $input['dir'];
		if (!empty($input['dir2'])) {
			$user->dir2 	 = $input['dir2'];
		}
		$user->apellido 	 = $input['lastname'];
		$user->cedula  		 = $input['cedula'];
		$user->city  	   	 = $input['city'];
		$user->department  	 = $input['department'];
		if (!empty($input['telefono'])) {
			$user->telefono = $input['telefono'];
		}
		$user->role          = 3;
		
		if ($user->save()) {
			$data = array(
				'hola' => 'hola'
			);
			Mail::send('emails.newUser', $data, function ($message){
			    $message->subject('Correo creación de usuario dyv-an.com');
			    $message->to('someemail@dyv-an.com');
			});
			Session::flash('success', 'Su cuenta fue creada satisfractoriamente, inicie sesión para disfrutar de nuestros servicios.');
			return Redirect::to('iniciar-sesion');
			
		}else
		{
			Session::flash('error','Error al crear el usuario, por favor contacte con el administrador del sitio');
			return Redirect::to('registro');

		}
	}
	public function getCode($username,$codigo)
	{
		$user = User::where('username','=',$username)->get(array('id','register_cod','register_cod_active'));
		if ($user[0]->register_cod_active == 0) {
			$title = "Link usado";
			Session::flash('error','El link al que accedio ya fue usado o ha caducado, de ser así llene el formulario nuevamente, o inicie sesión');
			return View::make('indexs.login')->with('title',$title);
		}
		if ($user[0]->register_cod == $codigo) {
			$up = User::find($user[0]->id);
			$up->register_cod_active = 0;
			if ($up->save()) {
				Session::flash('success','Usuario creado, inicie sesión para disfrutar de los servicios');	
			}else
			{
				Session::flash('error','Error al crear el usuario');
			}
			$title ="Activación de nuevo usuario completa";
			
			return View::make('indexs.login')->with('title',$title);
		}else
		{
			$title = "Activación fallida";
			Session::flash('error','Codigo incorrecto');
			return View::make('indexs.login')->with('title',$title);
		}
	}
	public function postEmailCheck()
	{
		if (Request::ajax()) {
			$email = Input::get('email');
			$user = User::where('email','=',$email)->first();
			if (count($user)<1) {
				return Response::json(array('type' => 'danger','msg' => 'Error, el email no existe.'));
			}else
			{

				$cadena = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
			    //Obtenemos la longitud de la cadena de caracteres
			    $longitudCadena=strlen($cadena);
			     
			    //Se define la variable que va a contener la contraseña
			    $pass = "";
			    //Se define la longitud de la contraseña, en mi caso 10, pero puedes poner la longitud que quieras
			    $longitudPass=8;
			    
			    //Creamos la contraseña
			    for($i=1 ; $i<=$longitudPass ; $i++){
			        //Definimos numero aleatorio entre 0 y la longitud de la cadena de caracteres-1
			        $pos=rand(0,$longitudCadena-1);
			     
			        //Vamos formando la contraseña en cada iteraccion del bucle, añadiendo a la cadena $pass la letra correspondiente a la posicion $pos en la cadena de caracteres definida.
			        $pass .= substr($cadena,$pos,1);
			    }
			    $user->password = Hash::make($pass);
			  	$data = array(
					'pass' => $pass,
					'texto' => 'Usted ha solicitado recuperar su contraseña',
					'title' => 'recuperar contraseña'
				);

			  	if ($user->save()) {
			  		Mail::send('emails.passNew', $data, function ($message) use ($pass,$email){
					    $message->subject('Correo de restablecimiento de contraseña dyv-an.com');
					    $message->to($email);
					});
					return Response::json(array('type' => 'success','msg' => 'Se ha enviado un email con una clave provisional.'));

			  	}else
			  	{
					return Response::json(array('type' => 'danger','msg' => 'Error, no se ha podido cambiar la contraseña, le agradecemos ponerse en contacto por medio de nuestro modulo de contacto.'));
			  	}
			    

			}
			
		}
	}
	public function getState()
	{
		if (Request::ajax()) {
			$id = Input::get('id');
			$municipio = Municipios::where('estado_id','=',$id)->get();
			return $municipio;
		}
	}
	public function getParroquia()
	{
		if (Request::ajax()) {
			$id = Input::get('id');
			$parroquia = Parroquias::where('municipio_id','=',$id)->get();
			return $parroquia;
		}
	}
	
}
