<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="../assets/img/favicon.ico">

	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Devflow | Welcom</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <link href="/login_/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/login_/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>
    <link href="/login_/css/demo.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/google/code-prettify/master/loader/prettify.css">
    <link href="/login_/css/welcome.css" rel="stylesheet" />

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Grand+Hotel|Open+Sans:400,300' rel='stylesheet' type='text/css'>
    <link href="/login_/css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>

<body>



<div class="header-wrapper">
        <nav class="navbar navbar-transparent navbar-fixed-top" role="navigation" color-on-scroll>
          <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button id="menu-toggle" type="button" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar bar1"></span>
                <span class="icon-bar bar2"></span>
                <span class="icon-bar bar3"></span>
              </button>
              <a href="http://www.creative-tim.com">
                   <div class="logo-container">
                        <div class="brand">
                            DevFlow
                        </div>
                    </div>
              </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse">
              <ul  class="nav navbar-nav navbar-right">
                    <li>
                    <a href='/home'  id="issueButton" class="btn btn-simple btn-neutral">Enter forum</a>
                    </li>
                    <li>
                      <a href='/about'  id="issueButton" class="btn btn-simple btn-neutral">About</a>
                      </li>
                      
                      @if (Route::has('login'))
                      @auth
                      <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <p>
                {{Auth::user()->name}}
                <b class="caret"></b>
              </p>

                          </a>
                          <ul class="dropdown-menu">
                            <li><a href="#">New Threads</a></li>
                            <li><a href="#"></a></li>
                            <li><a href="/thread/create">Add thread</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something</a></li>
                            <li class="divider"></li>
                            <li><a href="">My Profile</a></li>
                            <li><a href="/logout">logout</a></li>
                          </ul>
                    </li>
                      @else
                      <li>
                          <a href='{{route('login')}}'  id="issueButton" class="btn btn-simple btn-neutral">Login</a>
                          </li>
                          <li>
                          <a href='{{route('register')}}'  id="issueButton" class="btn btn-simple btn-neutral">Register</a>
                          </li>
                          @endauth
                      @endif
                   
               </ul>

            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>

        <div class="header" style="background-image: url('dev.jpg');
">
            <div class="filter"></div>
            <div class="title-container text-center">
                    <h1>Welcome to DevFlow</h1>
                    <h4 class="description text-center">Where all your questions are answered</h4>
                    <a href="/home" class="btn btn-neutral btn-lg btn-round btn-fill">Enter Forum</a>
            </div>
        </div>
</div>




</body>
	<!--   Core JS Files   -->
  <script src="/login_/js/jquery.3.2.1.min.js" type="text/javascript"></script>
    <script src="/login_/js/bootstrap.min.js" type="text/javascript"></script>
  
    <!--  Charts Plugin -->
    <script src="/login_/js/chartist.min.js"></script>
  
      <!--  Notifications Plugin    -->
      <script src="/login_/js/bootstrap-notify.js"></script>
  
      <!--  Google Maps Plugin    -->
      
  
      <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
    <script src="/login_/js/light-bootstrap-dashboard.js?v=1.4.0"></script>
  
    <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
    <script src="/login_/js/demo.js"></script>
</html>
