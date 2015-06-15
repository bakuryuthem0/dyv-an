@extends('layouts.default')

@section('content')
<div class="hidden-container container-in">
  <div class="contenido">
      <div class="portadaMySlide">
      @foreach($slides as $s)
        <div class="slickPortada">
            <img src="{{ asset('images/slides-top/'.$s->image) }}">
        </div>
      @endforeach
      </div>
  </div>
</div>
@stop

@section('postscript')
   <script type="text/javascript">
          $(document).ready(function(){
            $('.portadaMySlide').slick({
              adaptiveHeight: true,
              accessibility :true,
              autoplay      : true,
              autoplaySpeed : 5000,
              dots          : false,
              infinite      : true,
              speed         : 300,
              slidesToShow  : 1,
              slidesToScroll: 1,
              fade          : true,
            });
           
          });
    </script>
@stop