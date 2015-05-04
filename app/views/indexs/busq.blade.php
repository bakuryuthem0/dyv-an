@extends('layouts.default')

@section('content')
<div class="hidden-container @if(Auth::check())container-in@endif">
  <div class="titulo">
    <h1>
      {{ $busq }} <a href="{{ URL::previous() }}" class="btn btn-volver" style="float:right;">Volver</a>
    </h1>
  </div>
  <div class="contenido">
     @foreach($art as $a)
            <div class="col-xs-3 contArtPrinc" data-id="{{ $a->id }}" data-toggle="modal" data-target="#showItem">
              <img src="{{ asset('images/items/'.$a->image) }}" class="imgArtPrinc imgPrinc">
              <ul class="textoPromedio ulNoStyle">
                <li>
                  <label>{{ $a->item_nomb.' - Cod: '.$a->item_cod }}</label>
                </li>
                <li>
                  <p>Bs.{{ $a->item_precio }}</p>
                </li>
              </ul>
            </div>
        @endforeach
  </div>
</div>

<div class="modal fade" id="showItem" tabindex="-1" role="dialog" aria-labelledby="showItem" aria-hidden="true">
  <div class="showItemContent modal-dialog imgLiderUp">
    <div class="modal-content">
      <div class="col-xs-12">
        <div class="col-xs-12 contCentrado contdeColor">
          <legend class="ItemTitle textoNegro"></legend>
          <div class="col-xs-4 textoPromedio contDescItem">
            <div class="col-xs-12" style="word-break: break-word;">
              <label class="description textoNegro">Descripción</label>
              <div class="contDescription textoNegro"></div>
            </div>
          </div>
          <div class="col-xs-4 contImageItem">
                 
          </div>
          <div class="col-xs-4 textoPromedio ">
            <div class="col-xs-12">
              <label class="textoNegro">PRECIO EN GUACAMAYA STORES:</label>
            </div>
            <div class="col-xs-12 formulario">
              <label class="textoNegro">Talla</label>
              <select class="choose form-control">
                <option value="">Seleccione una talla</option>
              </select>
            </div>
            <div class="col-xs-12 formulario">
              <label class="textoNegro">Color</label>
              <ul class="colores">
                <li class="removable textoNegro">Elija una talla</li>
              </ul>
              <input type="hidden" class="values" value="" data-misc-id="">
            </div>
            
            @if(Auth::check() && Auth::user()->role != 1)
            <div class="col-xs-12 formulario">
                <button class="btn btn-danger btnAgg" data-toggle="modal" data-target="#addCart" data-cod-value="" data-price-value="" data-name-value="" value="">Agregar al carrito.</button>
            </div>
            @else
            <div class="col-xs-12 formulario">
                <button class="btn btn-danger" data-toggle="modal" data-target="#loginModal">Agregar al carrito.</button>
            </div>
            @endif
          </div>
        </div>
        <div class="col-xs-12 contImagesMini"></div>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
</div>
<div class="contLoading">
  <img src="{{ asset('images/loading.gif') }}">
</div>
@stop