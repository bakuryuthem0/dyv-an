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
        <link rel="icon" type="image/png" href="{{ asset('images/favicom-01.png') }}" />
        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

        {{ HTML::style("css/normalize.css") }}
        {{ HTML::style("css/main.css") }}
        {{ HTML::style('css/bootstrap.min.css') }}
        {{ HTML::style('css/bootstrap-theme.min.css') }}
        {{ HTML::script("js/vendor/modernizr-2.6.2.min.js") }}
        {{ HTML::style('css/custom.css') }}
        {{ HTML::style('js/slick/slick.css') }}
        {{ HTML::style('css/ui-lightness/jquery-ui-1.9.2.custom.css') }}
        {{ HTML::style('//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css') }}
          <script src="https://www.google.com/recaptcha/api.js?hl={{ Session::get('lang','es') }}"></script>
    </head>
    <body>
      <div class="carousel">
          {{ ShowSlides::show() }}
      </div>
      <header class="active">
        <nav>
          <div class="nav-bar">
            <div class="col-xs-12 icon navicon-in-col">
              <i class="fa fa-bars navicon navicon-in"></i>
            </div>
            <div class="col-xs-12">
                <img src="{{ asset('images/logo-01.png') }}" class="logo">
            <div class="clearfix"></div>
            <div class="col-xs-12 contMenu no-in si-in">
              <ul class="menu textoGrande">
                <li><a href="{{ URL::to('inicio') }}">{{ Lang::get('lang.menu_index') }}</a></li>
                @if(!Auth::check())
                <li><a href="#" data-toggle="modal" data-target="#loginModal">{{ Lang::get('lang.menu_login') }}</a></li>
                <li><a href="{{ URL::to('registro') }}">{{ Lang::get('lang.menu_register') }}</a></li>
                @else
                <li><a href="{{ URL::to('mi-perfil') }}">{{ Lang::get('lang.menu_profile') }}</a></li>
                <li><a href="{{ URL::to('usuario/cambiar-contraseña') }}">{{ Lang::get('lang.menu_changepass') }}</a></li>
                <li><a href="{{ URL::to('usuario/mis-compras') }}">Mis Compras</a></li>
                <li><a href="{{ URL::to('mi-lista-de-deseos') }}">{{ Lang::get('lang.menu_wish_list') }}</a></li>
                
                @endif
                <li><a href="{{ URL::to('como-saber-mi-talla') }}">{{ Lang::get('lang.menu_my_size') }}</a></li>
                <li><a href="{{ URL::to('contacto') }}">{{ Lang::get('lang.menu_contact') }}</a></li>
                @if(Auth::check())
                  <li><a href="{{ URL::to('cerrar-sesion') }}" class="logout">{{ Lang::get('lang.menu_logout') }}</a></li>
                @endif
              </ul>
            </div>
            <div class="idiomas no-in si-in">
              <a href="{{ URL::to('cambiar-lenguaje/español') }}" class="btn">{{ Lang::get('lang.lang_es') }}</a>
              <a href="{{ URL::to('cambiar-lenguaje/ingles') }}" class="btn">{{ Lang::get('lang.lang_en') }}</a>
              <a href="{{ URL::to('cambiar-lenguaje/portugues') }}" class="btn">{{ Lang::get('lang.lang_po') }}</a>
            </div>
            <div class="redes no-in si-in">
              <a target="_blank" href="https://www.facebook.com/profile.php?id=100009094386701&fref=ts"><div class="contRed" style="padding:1em 1.5em;"><i class="fa fa-facebook fa-3x"></i></div></a>
              <a target="_blank" href="https://twitter.com/DYVANmoda"><div class="contRed"><i class="fa fa-twitter fa-3x"></i></div></a>
              <a target="_blank" href="http://i.instagram.com/dyvanmoda/"><div class="contRed" style="padding: 1.1em 1.4em;"><i class="fa fa-instagram fa-3x"></i></div></a>
              <a target="_blank" href="https://es.pinterest.com/DYVANmoda/"><div class="contRed" style="padding:1em 1.5em;"><i class="fa fa-pinterest-p fa-3x"></i></div></a>
              <p style="font-size:1.3em;margin-top: 2em;">{{ Lang::get('lang.delevoped') }} <a href="http://tecnographic.com.ve" target="_blank">Tecnographic Venezuela C.A.</a></p>
              
              
              
            </div>
          </div>
        </nav>
      </header>
      <div id="cd-cart-trigger" data-toggle="popover" data-placement="left" data-content="Se ha agregado un item"title="" data-original-title="Aviso"><a class="cd-img-replace" href="#0"><i class="fa fa-shopping-cart fa-4x"></i></a></div>
      <div id="cd-shadow-layer"></div>
      <div id="cd-cart">
        <h2 class="textoNegro">Carrito</h2>
        <ul class="cd-cart-items ">
          <li>
            <table class="table table-hover tableItems">
              <tr>
                <th class="textoNegro textoPromedio">Precio</th>
                <th class="textoNegro textoPromedio">Nombre</th>
                <th class="textoNegro textoPromedio">Cantidad</th>
                <th>
                   <button class="btn btn-danger btn-xs btnVaciar">
                      Vaciar
                    </button>
                </th>
              </tr>
              <?php $total = 0;?>
            @foreach(Cart::content() as $c)
              <tr id="{{ $c->rowid  }}" class="removable">
                <td class="textoNegro textoPromedio">{{ $c->price }}</td>
                <td class="textoNegro textoPromedio">{{ $c->name }}</td>
                <td class="textoNegro textoPromedio qty">{{ $c->qty }}</td>
                <td>
                  <button class="btn btn-danger btn-xs btnQuitar btn-carrito" data-url-value="quitar-item" value="{{ $c->rowid }}">
                    <i class="fa fa-close"></i>
                  </button>
                </td>
              </tr>
              <?php  $total = $total+($c->price*$c->qty);?>
            @endforeach
            </table>
          </li>

        </ul> <!-- cd-cart-items -->
       
        <div class="cd-cart-total textoNegro textoPromedio">
          <p>Total <span class="total">{{ $total }}</span></p>
        </div> <!-- cd-cart-total -->
       
        <a href="{{ URL::to('comprar/ver-carrito') }}" class="checkout-btn textoPromedio @if(Cart::count()>0) btn-comprar @else btn-no @endif">Comprar</a>
        
      </div> <!-- cd-cart -->
      @yield('content')
      
        {{ HTML::script("js/jquery.js") }}
        {{ HTML::script("http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js") }}
        <script>window.jQuery || document.write('<script src="js/jquery.js"><\/script>')</script>
        {{ HTML::script('js/bootstrap.min.js') }}
        {{ HTML::script("js/plugins.js") }}
        {{ HTML::script("js/main.js") }}
        {{ HTML::script('js/slick/slick.min.js') }}
        {{ HTML::script('js/custom.js') }}
        {{ HTML::script('js/jquery.coolcarousel.js') }}
        {{ HTML::script('js/jquery-ui-1.9.2.custom.js') }}
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
        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="modalForggo" aria-hidden="true">
          <div class="forgotPass modal-dialog imgLiderUp">
            <div class="modal-content">
              <div class="">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
              </div>
              <div class="textoNegro">
                <legend>{{ Lang::get('lang.titulo_2') }}</legend>
              </div>
              <form action="{{ URL::to('iniciar-sesion/autenticar') }}" method="POST">
                @if (Session::has('error'))
                <div class="col-xs-12">
                  <div class="alert alert-danger textoNegro">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <p class="textoPromedio">{{ Session::get('error') }}</p>
                  </div>
                </div>
                <div class="clearfix"></div>
                @endif
                <div class="col-xs-12">
                  <label for="username" class="textoPromedio textoNegro">{{ Lang::get('lang.login_username') }}:</label>
                  {{ Form::text('username','', array('class'=>'form-control','required' => 'required')) }}
                </div>
                <div class="clearfix"></div>
                <div class="col-xs-12">
                  <label for="pass" class="textoPromedio textoNegro">{{ Lang::get('lang.login_uslogin_passrnamlogin_pass') }}</label>
                  <input type="password" name="password" class="form-control" required>
                </div>
                <div class="col-xs-12">
                  <label for="pass" class="textoPromedio"><a href="#" class="forgot textoNegro" data-toggle="modal" data-target="#changePass">{{ Lang::get('lang.login_forgot') }}</a></label>
                </div>
                <div class="col-xs-12">
                  <label for="remember" class="textoPromedio textoNegro">{{ Lang::get('lang.login_remember') }}</label>
                  <input type="checkbox" name="remember">
                </div>
                <div class="col-xs-12">
                  <input type="submit" name="enviar" value="{{ Lang::get('lang.btn_send') }}" class="btn btn-primary">
                </div>
              </form>
              <div class="clearfix"></div>
            </div>
          </div>
        </div>
        <div class="modal fade" id="changePass" tabindex="-1" role="dialog" aria-labelledby="modalForggo" aria-hidden="true">
          <div class="forgotPass modal-dialog imgLiderUp">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
              </div>
                <div class="modal-body textoNegro">
                    <legend>Recuperar Contraseña</legend>
                  </div>
                <div class="modal-footer " style="text-align:center;">
                  <div class="alert responseDanger">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                  </div>
                  <form methos="POST" action="{{ URL::to('recuperar/password') }}">
                    <p class="textoPromedio textoNegro">Introduzca el email con el cual creó su cuenta</p>
                    <input class="form-control emailForgot" name="email" placeholder="Email">
                    <button class="btn btn-success envForgot" style="margin-top:2em;">{{ Lang::get('lang.btn_send') }}</button> 
                  </form>
                </div>
            </div>
          </div>
      </div>
    </body>
</html>