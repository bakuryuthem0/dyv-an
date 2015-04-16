<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>{{ $title; }}</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/jpg" href="{{ asset('images/favicon.jpg') }}" />
        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

        {{ HTML::style("css/normalize.css") }}
        {{ HTML::style("css/main.css") }}
        {{ HTML::style('css/bootstrap.min.css') }}
        {{ HTML::style('css/bootstrap-theme.min.css') }}
        {{ HTML::script("js/vendor/modernizr-2.6.2.min.js") }}
        {{ HTML::style('css/custom.css') }}
        {{ HTML::style('js/slick/slick.css') }}
        {{ HTML::style('//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css') }}
          <script src='https://www.google.com/recaptcha/api.js'></script>
    </head>
    <body>
      <div class="carousel">
          <div class="front"><img src="{{ asset('images/ny1.jpg') }}"/></div>
          <div class="back"><img src="{{ asset('images/ny2.jpg') }}" /></div>
          <div class="back"><img src="{{ asset('images/ny3.jpg') }}" /></div>
      </div>
      <header>
        <nav>
          <div class="nav-bar">
            
          </div>
        </nav>
      </header>
        @yield('content')
        
        <div class="col-xs-12 footerTerm">
              <p class="textoPromedio"><i class="fa fa-copyright"></i> 2015 dyv-an , c.a. J-40566930-6 | Todos los derechos reservados.<br> Desarrolado por <a href="{{ URL::to('http://tecnographic.com.ve') }}" target="_blank">Tecnographic Venezuela c.a.</a></p>
            </div>
        {{ HTML::script("http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js") }}
        <script>window.jQuery || document.write('<script src="js/jquery.js"><\/script>')</script>
        {{ HTML::script('js/bootstrap.min.js') }}
        {{ HTML::script("js/plugins.js") }}
        {{ HTML::script("js/main.js") }}
        {{ HTML::script('js/slick/slick.min.js') }}
        {{ HTML::script('js/custom.js') }}
        {{ HTML::script('js/jquery.coolcarousel.js') }}
        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-57229555-1', 'auto');
          ga('send', 'pageview');

        </script>
        
       @yield('postscript')

    </body>
</html>