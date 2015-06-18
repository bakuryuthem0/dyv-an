@extends('layouts.admin')

@section('content')

<div class="row">
	<div class="container">
		<div class="col-xs-12">
			<h3>Cambio de posicion de las imagenes</h3>
			<div class="contenedor minis formulario">
				<?php $j = 0;?>
				@foreach($item as $it)
					@foreach($it as $i)
						<img src="{{ asset('images/items/'.$i->image) }}" class="imgMini" data-id-value="{{ $i->id }}">
						<?php $j++;?>
					@endforeach
				@endforeach
			</div>
			<div class="col-xs-12" style="padding:0;">
				<div class="alert responseDanger">
					<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				</div>
				<button class="btn btn-primary btnChange" >Cambiar Orden</button>
				<button class="btn btn-success btnChangeEnviar btn-no">Enviar</button>
				<button class="btn btn-danger btnChangeCancel btn-no">Cancelar</button>
			</div>
		</div>
	</div>
</div>
@stop