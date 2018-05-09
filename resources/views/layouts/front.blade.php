<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>DevFlow | {{Route::currentRouteName()}}</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <!-- Bootstrap core CSS     -->
    <link href="/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>

   
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="/css/demo.css" rel="stylesheet" />

    <link href="/css/welcome.css" rel="stylesheet"/>
    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="/css/pe-icon-7-stroke.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="apple-touch-icon" sizes="180x180" href="/favicon_package/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="/favicon_package/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="/favicon_package/favicon-16x16.png">
  <link rel="manifest" href="/site.webmanifest">
  <meta name="msapplication-TileColor" content="#da532c">
  <meta name="theme-color" content="#ffffff">
  <script src="/js/jquery.3.2.1.min.js" type="text/javascript"></script>
  <script src="/js/bootstrap.min.js" type="text/javascript"></script>
  
</head>
<body>

  <div class="wrapper">
      <div class="sidebar" data-color="red" data-image="dev.jpg">
  
      <!--
  
          Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
          Tip 2: you can also add an image using data-image tag
  
      -->
  
        <div class="sidebar-wrapper">
              <div class="logo">
                  <a href="http://www.creative-tim.com" class="simple-text">
                      DevFlow
                  </a>
              </div>
  
              <ul class="nav">
                  <li class="active">
                      <a href="dashboard.html">
                          <i class="pe-7s-graph"></i>
                          <p>Dashboard</p>
                      </a>
                  </li>
                  <li>
                      <a href="/user/profile">
                          <i class="pe-7s-user"></i>
                          <p>User Profile</p>
                      </a>
                  </li>
                  <li>
                      <a href="/threadType">
                          <i class="pe-7s-note2"></i>
                          <p>Thread - Types</p>
                      </a>
                  </li>
                  <li>
                      <a href="/thread">
                          <i class="pe-7s-news-paper"></i>
                          <p>All Threads</p>
                      </a>
                  </li>
                  <li>
                      <a href="notifications.html">
                          <i class="pe-7s-bell"></i>
                          <p>Notifications</p>
                      </a>
                  </li>
          <li class="active-pro">
                      <a href="upgrade.html">
                          <i class="pe-7s-rocket"></i>
                          <p>Upgrade to PRO</p>
                      </a>
                  </li>
              </ul>
        </div>
      </div>
  
      <div class="main-panel">
          <nav class="navbar navbar-default navbar-fixed">
              <div class="container-fluid">
                  <div class="navbar-header">
                      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                          <span class="sr-only">Toggle navigation</span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                      </button>
                      <a class="navbar-brand" href="#">Dashboard</a>
                  </div>
                  <div class="collapse navbar-collapse">
                      <ul class="nav navbar-nav navbar-left">
                          <li>
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                  <i class="fa fa-dashboard"></i>
                  <p class="hidden-lg hidden-md">Dashboard</p>
                              </a>
                          </li>
                          <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                      <i class="fa fa-globe"></i>
                                      <b class="caret hidden-lg hidden-md"></b>
                    <p class="hidden-lg hidden-md">
                      5 Notifications
                      <b class="caret"></b>
                    </p>
                                </a>
                                <ul class="dropdown-menu">
                                  <li><a href="#">Notification 1</a></li>
                                  <li><a href="#">Notification 2</a></li>
                                  <li><a href="#">Notification 3</a></li>
                                  <li><a href="#">Notification 4</a></li>
                                  <li><a href="#">Another notification</a></li>
                                </ul>
                          </li>
                          <li>
                             <a href="">
                                  <i class="fa fa-search"></i>
                  <p class="hidden-lg hidden-md">Search</p>
                              </a>
                          </li>
                      </ul>
  
                      <ul class="nav navbar-nav navbar-right">
                        
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
                                  <li><a href="#">Something</a></li>
                                  <li><a href="#">Another action</a></li>
                                  <li><a href="#">Something</a></li>
                                  <li class="divider"></li>
                                  <li><a href="#">My Profile</a></li>
                                  <li><a href="/logout">logout</a></li>
                                </ul>
                          </li>
                          @else
                          <li>
                          <a href="{{route('login')}}">
                                  <p>Login</p>
                              </a>
                          </li>
                          <li>
                          <a href="{{route('register')}}">
                                <p>Register</p>
                            </a>
                        </li>
                        @endauth
                        @endif
              <li class="separator hidden-lg"></li>
                      </ul>
                  </div>
              </div>
          </nav>
  
  
          <div class="content">
              <div class="container-fluid">
                 
  
  
                 
                    
  
                               @yield('content')
  
  
        
  
      </div>
  </div>
 
  
  
  </body>
  
      <!--   Core JS Files   -->
    
   
  
    
      <!--  Notifications Plugin    -->
      
  

  
      <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
    <script src="/js/light-bootstrap-dashboard.js?v=1.4.0"></script>
  
    <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
    <script src="/js/demo.js"></script>
    <script src="/vendor/unisharp/laravel-ckeditor/ckeditor.js"></script>
    <script>
        CKEDITOR.replace( 'article-ckeditor' );
    </script>
  </html>
  


 
  




       
