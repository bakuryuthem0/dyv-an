<?php

class HomeController extends BaseController {

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
	public function changeLang($lang)
	{
		if ($lang == "español" || $lang == "spanish"){
			Session::set('language', 'es');
		}elseif($lang == "ingles" || $lang == "english")
		{
			Session::set('language', 'en');
		}elseif($lang == "portugues" || $lang == "portuguese")
		{
			Session::set('language', 'po');
		}
		return Redirect::back();
	}
	public function getFront()
	{
		$title = "Portada";
		return View::make('indexs.portada')->with('title',$title); 
	}
	public function getIndex()
	{
		$title  = Lang::get('lang.title_index');
		$cats   = Cat::where('deleted','=',0)->get();
		$i = 0;
		$cat = array();
		foreach ($cats as $c) {
			$aux = SubCat::where('cat_id','=',$c->id)->where('deleted','=',0)->get();
			$c->subcat = $aux;
			$cat[$i] = $c;
		}
		return View::make('indexs.index')
		->with('title',$title)
		->with('cats',$cat);
	}

	public function postItemLoad()
	{
		if (Request::ajax()) {
			$id = Input::get('id');
			$art = Items::find($id);
			$a = new stdClass;
			$a->id = $art->id;
			$a->item_nomb 		= $art->item_nomb;
			$a->item_desc 		= $art->item_desc;
			$a->item_cod 	 	= $art->item_cod;
			$a->item_precio 	= $art->item_precio;
			$a->tallas    		= array();
			$misc    			= Misc::where('item_id','=',$art->id)->get();
			$aux = array();
			$i = 0;
			$j = 0;
			foreach ($misc as $m ) {
				$x = Images::where('misc_id','=',$m->id)->where('deleted','=',0)->get(array('image'));
				$aux2[$j] = $m->item_talla;
				$j++;
				if (count($x)>1) {
					foreach ($x as $y) {
						$aux[$i] = $y->image;
						$i++;
					}
				}else
				{
					$aux[$i] = Images::where('misc_id','=',$m->id)->where('deleted','=',0)->pluck('image');
					$i++;
				}
				
				
			}
			$a->images   	 	= $aux;
			$t = Misc::where('item_id','=',$art->id)->groupBy('item_talla')->get(array('id'));
			$a->tallas = $t;
		
			return Response::json(array('item' => $a,'princ' => $a->images[0],'images' => $aux,'tallas' => $aux2));
		}
	}
	public function getCaTbuscar($id)
	{
		$auxcat = Cat::find($id);
		$title = "Busqueda por categoria: ".$auxcat->cat_desc;
		$art = Items::leftJoin('miscelanias as m','m.item_id','=','item.id')
		->leftJoin('images as i','m.id','=','i.misc_id')
		->groupBy('item.id')
		->where('item.item_cat','=',$id)
		->where('item.deleted','=',0)
		->get(array(
				'item.id',
				'item.item_nomb',
				'item.item_desc',
				'item.item_precio',
				'item.item_cod',
				'i.image'
			));
		return View::make('indexs.busq')
		->with('title',$title)
		->with('art',$art)
		->with('busq',$auxcat->cat_desc);
	}
	public function getColors()
	{
		$id = Input::get('id');
		$item_id = Input::get('item_id');
		$col = Misc::join('colores','colores.id','=','miscelanias.item_color')
		->where('miscelanias.item_id','=',$item_id)->where('miscelanias.item_talla','=',$id)->get();
		return Response::json($col);
	}
	public function getSubCatBuscar($id)
	{

		$auxcat = SubCat::find($id);
		$title = "Busqueda por categoria: ".$auxcat->sub_desc;
		$art = Items::leftJoin('miscelanias as m','m.item_id','=','item.id')
		->leftJoin('images as i','m.id','=','i.misc_id')
		->groupBy('item.id')
		->where('item.item_subcat','=',$id)
		->where('item.deleted','=',0)
		->get(
			array(
				'item.id',
				'item.item_desc',
				'item.item_nomb',
				'item.item_precio',
				'item.item_cod',
				'i.image'
			)
		);
		return View::make('indexs.busq')
		->with('title',$title)
		->with('art',$art)
		->with('busq',$auxcat->sub_desc);

	}
	public function search()
	{
		$busq = Input::get('busq');
		$title = "Busqueda: ".$busq;
		$cat = Cat::where('deleted','=',0)->get(array('categorias.id','categorias.cat_nomb'));
		
		$subcat = array();
		foreach($cat as $c)
		{
			$aux = SubCat::where('cat_id','=',$c->id)->where('deleted','=',0)->get();
			$subcat[$c->id] = $aux->toArray();
		}
		$art = DB::select("SELECT DISTINCT `item`.`id`,	
										   `item`.`item_nomb`,
										   `item`.`item_cod`,
										   `item`.`item_stock`,
										   `item`.`item_precio`,
										   `m`.`id` AS misc_id,
										   `i`.`image`
			FROM  `item` 
			LEFT JOIN  `miscelanias` AS m ON  `m`.`item_id` =  `item`.`id` 
			LEFT JOIN  `images` 	 AS i ON  `i`.`misc_id` =  `m`.`id`
			LEFT JOIN  `tallas`      AS t ON  `m`.`item_talla`=`t`.`id`
			LEFT JOIN  `colores` 	 AS c ON  `m`.`item_color`=`c`.`id`
			WHERE (
				LOWER(  `item`.`item_nomb` ) LIKE  '%".strtolower($busq)."%' OR
				LOWER(  `item`.`item_desc` ) LIKE  '%".strtolower($busq)."%' OR
				LOWER(  `item`.`item_precio` ) LIKE  '%".strtolower($busq)."%' OR
				LOWER(  `t`.`talla_desc` ) LIKE  '%".strtolower($busq)."%' OR
				LOWER(  `t`.`talla_nomb` ) LIKE  '%".strtolower($busq)."%' OR
				LOWER(  `c`.`color_nomb` ) LIKE  '%".strtolower($busq)."%' OR
				LOWER(  `c`.`color_desc` ) LIKE  '%".strtolower($busq)."%'
			)
			AND  `item`.`deleted` = 0
			GROUP BY item.id
			");

		return View::make('indexs.busq')
		->with('title',$title)
		->with('art',$art)
		->with('cat',$cat)
		->with('subcat',$subcat)
		->with('busq',$busq);
	}
	public function getContact()
	{
		$title = Lang::get('lang.menu_contact');
		return View::make('indexs.contact')
		->with('title',$title);
	}
	public function postContact()
	{
		$input = Input::all();
		$rules = array(
		'nombre'	 => 'required|min:4',
		'asunto'	 => 'required|min:4',
		'email'  	 => 'required|email',
		'mensaje'    => 'required|min:4'
		);
		$messages = array(
		'required' => 'El :attribute es obligatorio',
		'min'      => 'El :attribute es muy corto',
		'email'    => 'Debe ingresar un :attribute valido'
		);
		$validator = Validator::make($input, $rules, $messages);
		if ($validator->fails()) {

			return Redirect::to('contactenos')->withErrors($validator)->withInput();
		}
		$to_Email     = 'ejemplo@gmail.com';
		$user_Name    = $input['nombre'];
		$subject      = $input['asunto'];
		$user_Email   = $input['email'];
		$user_Message = $input['mensaje'];
		$data = array('subject' => $subject,
							'from' => $user_Email,
							'fecha' => date('Y/m/d H:i:s'),
							'mensaje' => $user_Message,
							'nombre'  => $input['nombre']
							);

			Mail::send('emails.contact', $data, function($message) use ($to_Email,$user_Name,$subject,$user_Email)
			{
				$message->to($to_Email)->from($user_Email)->subject($subject);
			});
			Session::flash('success', 'Mensaje enviado correctamente. pronto nuestros agentes se pondrán en contacto con usted.');
			return Redirect::to('contactenos');
	}
}