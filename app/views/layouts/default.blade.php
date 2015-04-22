<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>{{ $title }}</title>
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
          <script src="https://www.google.com/recaptcha/api.js?hl={{ Session::get('lang','es') }}"></script>
    </head>
    <body>
      <div class="carousel">
          <div class="front"><img src="{{ asset('images/ny1.jpg') }}"/></div>
          <div class="back"><img src="{{ asset('images/ny2.jpg') }}" /></div>
          <div class="back"><img src="{{ asset('images/ny3.jpg') }}" /></div>
      </div>
      <header @if($title != "Home" && $title != "Inicio")class="active"@endif>
        <nav>
          <div class="nav-bar">
            <div class="col-xs-12 icon @if($title != 'Home' && $title != 'Inicio')navicon-in-col@endif">
              <i class="fa fa-bars navicon @if($title != 'Home' && $title != 'Inicio')navicon-in@endif"></i>
            </div>
            <div class="col-xs-12">
                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                   width="100%" height="100px" viewBox="0 65.326 612 502.174" enable-background="new 0 65.326 612 502.174"
                   xml:space="preserve" class="logo">
                <ellipse fill="#C6C6C6" cx="283.5" cy="487.5" rx="259" ry="80"/>
                <path id="bird" d="M210.333,65.331C104.367,66.105-12.349,150.637,1.056,276.449c4.303,40.393,18.533,63.704,52.171,79.03
                  c36.307,16.544,57.022,54.556,50.406,112.954c-9.935,4.88-17.405,11.031-19.132,20.015c7.531-0.17,14.943-0.312,22.59,4.341
                  c20.333,12.375,31.296,27.363,42.979,51.72c1.714,3.572,8.192,2.849,8.312-3.078c0.17-8.467-1.856-17.454-5.226-26.933
                  c-2.955-8.313,3.059-7.985,6.917-6.106c6.399,3.115,16.334,9.43,30.39,13.098c5.392,1.407,5.995-3.877,5.224-6.991
                  c-1.864-7.522-11.009-10.862-24.519-19.229c-4.82-2.984-0.927-9.736,5.168-8.351l20.234,2.415c3.359,0.763,4.555-6.114,0.882-7.875
                  c-14.198-6.804-28.897-10.098-53.864-7.799c-11.617-29.265-29.811-61.617-15.674-81.681c12.639-17.938,31.216-20.74,39.147,43.489
                  c-5.002,3.107-11.215,5.031-11.332,13.024c7.201-2.845,11.207-1.399,14.791,0c17.912,6.998,35.462,21.826,52.982,37.309
                  c3.739,3.303,8.413-1.718,6.991-6.034c-2.138-6.494-8.053-10.659-14.791-20.016c-3.239-4.495,5.03-7.045,10.886-6.876
                  c13.849,0.396,22.886,8.268,35.177,11.218c4.483,1.076,9.741-1.964,6.917-6.917c-3.472-6.085-13.015-9.124-19.18-13.413
                  c-4.357-3.029-3.025-7.132,2.697-6.602c3.905,0.361,8.478,2.271,13.908,1.767c9.946-0.925,7.717-7.169-0.883-9.566
                  c-19.036-5.304-39.891-6.311-61.665-5.225c-43.837-8.358-31.554-84.887,0-90.363c29.571-5.132,62.966-13.339,99.928-32.156
                  c32.668-5.429,64.835-12.446,92.939-33.85c48.106-14.469,111.903,16.113,204.241,149.695c3.926,5.681,15.819,9.94,9.524-6.351
                  c-15.893-41.125-68.176-93.328-92.13-132.085c-24.581-39.774-14.34-61.243-39.957-91.247
                  c-21.326-24.978-47.502-25.803-77.339-17.365c-23.461,6.634-39.234-7.117-52.98-31.273C318.42,87.525,265.838,64.927,210.333,65.331
                  z M445.731,203.01c6.12,0,11.112,4.919,11.112,11.038c0,6.119-4.994,11.111-11.112,11.111s-11.038-4.994-11.038-11.111
                  C434.693,207.929,439.613,203.01,445.731,203.01z"/>
                </svg>
            </div>
            <div class="clearfix"></div>
            <div class="col-xs-12 contMenu no-in @if($title != 'Home' && $title != 'Inicio')si-in@endif">
              <ul class="menu textoGrande">
                <li><a href="{{ URL::to(Lang::get('lang.menu_index_route')) }}">{{ Lang::get('lang.menu_index') }}</a></li>
                <li><a href="{{ URL::to(Lang::get('lang.menu_login_route')) }}">{{ Lang::get('lang.menu_login') }}</a></li>
                <li><a href="{{ URL::to(Lang::get('lang.menu_register_route')) }}">{{ Lang::get('lang.menu_register') }}</a></li>
                <li><a href="{{ URL::to(Lang::get('lang.menu_contact_route')) }}">{{ Lang::get('lang.menu_contact') }}</a></li>
              </ul>
            </div>
            <div class="idiomas no-in @if($title != 'Home' && $title != 'Inicio')si-in@endif">
              <a href="{{ URL::to(Lang::get('lang.change_lang_es')) }}" class="btn">{{ Lang::get('lang.lang_es') }}</a>
              <a href="{{ URL::to(Lang::get('lang.change_lang_en')) }}" class="btn">{{ Lang::get('lang.lang_en') }}</a>
              <a href="{{ URL::to(Lang::get('lang.change_lang_po')) }}" class="btn">{{ Lang::get('lang.lang_po') }}</a>
            </div>
            <div class="redes no-in @if($title != 'Home' && $title != 'Inicio')si-in@endif">
              <div class="contRed" style="padding:1em 1.5em;"><i class="fa fa-facebook fa-3x"></i></div>
              <div class="contRed"><i class="fa fa-twitter fa-3x"></i></div>
              <div class="contRed" style="padding: 1.1em 1.4em;"><i class="fa fa-instagram fa-3x"></i></div>
              <div class="contRed" style="padding:1em 1.5em;"><i class="fa fa-pinterest-p fa-3x"></i></div>
              
              
              
              
            </div>
          </div>
        </nav>
      </header>
      @yield('content')
        
        <div class="col-xs-12 footerTerm">
              <p class="textoPromedio">{{ Lang::get('lang.footer_info') }} </p>
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