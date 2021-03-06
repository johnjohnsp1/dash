<!DOCTYPE html>
<html lang="en">
<head>
    <link href="{{url_for('static', filename='css/bootstrap.min.css')}}" rel="stylesheet" media="screen">
    <link href="{{ url_for('static', filename='css/bootstrap.css')}}" rel="stylesheet">
    <link href="{{ url_for('static', filename='css/local.css')}}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{url_for('static', filename='css/jquery-ui.css')}}">
    <script src="{{ url_for('static', filename='js/jquery-latest.js') }}"></script>
    <script src="{{ url_for('static', filename='js/jquery-ui-1.10.4.min.js') }}"></script>

    <script src="{{url_for('static', filename='js/bootstrap.min.js')}}"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
  <nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand logo" href='/' style="font-family: fantasy;font-size:large;"><img src="{{url_for('static', filename='img/logo.png')}}" style=" width: 64px;">DASH</a>
        </div>
        
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
             <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">ARCH:<span id="arch-disp">x86</span><span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="#" class="asm-arch-option">x86</a></li>
                      <li><a href="#" class="asm-arch-option">ARM</a></li>
                      <li><a href="#" class="asm-arch-option">ARM64</a></li>
                      <li><a href="#" class="asm-arch-option">MIPS</a></li>
                    </ul>
              </li>
              
             <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">BITS:<span id="bits-disp">32</span><span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="#" class="asm-bits-option">16</a></li>
                      <li><a href="#" class="asm-bits-option">32</a></li>
                      <li><a href="#" class="asm-bits-option">64</a></li>
                    </ul>
              </li>
              <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">ENDIANESS:<span id="endian-disp">Little</span><span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="#" class="asm-endian-option">Little</a></li>
                      <li><a href="#" class="asm-endian-option">Big</a></li>
                    </ul>
              </li>
          </ul>
        </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
</nav> <!-- navbar -->

{% for message in get_flashed_messages() %}
    <div class="alert alert-info alert-dismissable"><div class="panel panel-info">{{ message }}</div></div>
{% endfor %}


<div class="container" id="main_container"> 
  <div class="row">
    <div class="col-md-12">
    {% block body %}{% endblock %}
    </div>
  </div>
  <div class="row">
  </div><!-- row -->
 <footer>
 </footer>

</div><!-- container -->
</body>
</html>
