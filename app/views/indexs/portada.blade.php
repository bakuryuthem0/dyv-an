@extends('layouts.default')

@section('content')
<div class="hidden-container container-in">
  <div class="contenido">
      <div class="mySlide">
      @foreach($slides as $s)
        <div>
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
            $('.mySlide').slick({
              adaptiveHeight: true,
              accessibility:true,
              autoplay    : true,
              autoplaySpeed : 5000,
              dots: false,
              infinite: true,
              speed: 300,
              slidesToShow: 1,
              slidesToScroll: 1,
              fade: true,
            });
            
            /*$('.fade').slick({
              dots: true,
              infinite: true,
              speed: 500,
              fade: true,
              cssEase: 'linear',
              adaptiveHeight: true,
              autoplay    : true,
              autoplaySpeed : 5000
            });
            */
          });
    </script>
@stop