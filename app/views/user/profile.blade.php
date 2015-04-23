@extends('layouts.default')
@section('content')
<div class="hidden-container container-in">
  <div class="titulo"><h1>{{ Lang::get('lang.titulo_3') }}</h1></div>
  <div class="contenido">
	<div class="row">
		<div class="col-xs-12 cont" style="margin-top:1em;">
			<div class="col-xs-8 contdeColor contCentrado">
				@if (Session::has('error'))
				<div class="col-xs-6">
					<div class="alert alert-danger">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						<p class="textoPromedio">{{ Session::get('error') }}</p>
					</div>
				</div>
				@elseif (Session::has('success'))
					<div class="alert alert-success">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						<p class="textoPromedio">{{ Session::get('success') }}</p>
					</div>
				<div class="clearfix"></div>
				@endif
					<div class="col-xs-12 formulario">
						<div class="col-xs-6 inputRegister">
							<p class="textoPromedio"><strong>Nombre:</strong></p>
						</div>
						<div class="col-xs-6 inputRegister">
							<p class="textoPromedio">{{ Auth::user()->nombre }}</p>
						</div>
					</div>
					<div class="col-xs-12 formulario">
						<div class="col-xs-6 inputRegister">
							<p class="textoPromedio"><strong>Apellido</strong></p>
						</div>
						<div class="col-xs-6 inputRegister">
							<p class="mdfInfo textoPromedio">{{ Auth::user()->apellido }}</p>
						</div>
					</div>
					<div class="col-xs-12 formulario">
						<div class="col-xs-6 inputRegister">
							<p class="textoPromedio"><strong>Cedula</strong></p>
						</div>
						<div class="col-xs-6 inputRegister">
							<p class="mdfInfo textoPromedio">{{ Auth::user()->cedula }}</p>
						</div>
					</div>
					<div class="col-xs-12 formulario">
						<div class="col-xs-6 inputRegister">
							<p class="textoPromedio"><strong>Email</strong></p>
						</div>
						<div class="col-xs-6 inputRegister">
							<p class="mdfInfo textoPromedio">{{ Auth::user()->email }}</p>
						</div>
					</div>
					<div class="col-xs-12 formulario">
						<div class="col-xs-6 inputRegister">
							<p class="textoPromedio"><strong>Teléfono</strong></p>
						</div>
						<div class="col-xs-6 inputRegister">
							<p class="mdfInfo textoPromedio mdfText">{{ Auth::user()->telefono }}</p>
							<input type="text" name="phone" class="form-control mdfForm" placeholder="Telefono" id="phone" value="{{ Auth::user()->telefono }}">
							@if ($errors->has('phone'))
								 @foreach($errors->get('phone') as $err)
								 	<div class="alert alert-danger">
								 		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
								 		<p class="textoPromedio">{{ $err }}</p>
								 	</div>
								 @endforeach
							@endif
						</div>
					</div>
					<div class="col-xs-12 formulario">
						<div class="col-xs-6 inputRegister">
							<p class="textoPromedio">(*) Departamento:</p>
						</div>
						<div class="col-xs-6 inputRegister">
							<p class="mdfInfo textoPromedio mdfText">{{ ucfirst(Department::find(Auth::user()->department)->pluck('nombre')) }}</p>
							<select name="estado" class="form-control mdfForm" id="estado2">
								<option value="">Seleccione un estado</option>
								@foreach($dep as $d)
									<option value="{{ $d->id }}">{{ $d->nombre }}</option>
								@endforeach
							</select>
						</div>
					</div>
					<div class="col-xs-12 formulario">
						<div class="col-xs-6 inputRegister">
							<p class="textoPromedio"><strong>Dirección #1:</strong></p>
						</div>
						<div class="col-xs-6 inputRegister">
							<p class="mdfInfo textoPromedio mdfText">{{ Auth::user()->dir }}</p>
							<textarea name="dir" class="form-control mdfForm" placeholder="Dirección" id="zip_cod"> {{ Auth::user()->dir }}</textarea>
							@if ($errors->has('dir'))
								 @foreach($errors->get('dir') as $err)
								 	<div class="alert alert-danger">
								 		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
								 		<p class="textoPromedio">{{ $err }}</p>
								 	</div>
								 @endforeach
							@endif
						</div>
					</div>		
					<div class="col-xs-12 formulario">
						<div class="col-xs-6 inputRegister">
							<p class="textoPromedio"><strong>Dirección #2:</strong></p>
						</div>
						<div class="col-xs-6 inputRegister">
							<p class="mdfInfo textoPromedio mdfText">{{ Auth::user()->dir2 }}</p>
							<textarea name="dir" class="form-control mdfForm" placeholder="Dirección" id="zip_cod"> {{ Auth::user()->dir2 }}</textarea>
							@if ($errors->has('dir'))
								 @foreach($errors->get('dir') as $err)
								 	<div class="alert alert-danger">
								 		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
								 		<p class="textoPromedio">{{ $err }}</p>
								 	</div>
								 @endforeach
							@endif
						</div>
					</div>			
					<input type="submit" name="enviar" value="Enviar" class="btn btn-success mdfForm  botones inputRegister">

					<input type="reset" name="reset" value="Resetear" class="btn btn-warning mdfForm mdfSub botones inputRegister" style="margin-left:1em;margin-right:1em;">
					<button class="btn btn-danger mdfForm btnCancelMdf">Cancelar</button>
				<div class="col-xs-12">
					<button class="btnMdfShow btn btn-primary">Modificar</button>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</div>
@stop