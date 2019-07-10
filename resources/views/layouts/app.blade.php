<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <title>DevFlow</title>
    <!-- Bootstrap Core CSS -->
        <!-- Custom CSS -->

    <link href="/css/lib/sweetalert/sweetalert.css" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
    <link href="/css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/css/helper.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">
    <script src="/js/lib/jquery/jquery.min.js"></script>
    <script src="https://js.pusher.com/4.1/pusher.min.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:** -->
    <!--[if lt IE 9]>
    <script src="https:**oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https:**oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header fix-sidebar">
    <!-- Preloader - style you can find in spinners.css -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
			<circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- Main wrapper  -->
    <div id="main-wrapper">
        <!-- header header  -->
        <div class="header" style="color:white;">
            <nav class="navbar top-navbar navbar-expand-md navbar-light" style="background: linear-gradient(to right, #ff0000 0%, #660066 100%);">
                <!-- Logo -->
                <div class="navbar-header" style="background-color:black">
                    <a class="navbar-brand" href="index.html" style="color:white">
                        <!-- Logo icon -->
                        <b>DevFlow</b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                       
                    </a>
                </div>
                <!-- End Logo -->
                <div class="navbar-collapse" >
                    <!-- toggle and nav items -->
                    <ul class="navbar-nav mr-auto mt-md-0">
                        <!-- This is  -->
                        <li class="nav-item"> <a style="color:white;" class="nav-link nav-toggler hidden-md-up text-muted  " href="javascript:void(0)"><i class="mdi mdi-menu"></i></a> </li>
                        <li class="nav-item m-l-10"> <a class="nav-link sidebartoggler hidden-sm-down text-muted  " href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                        <!-- Messages -->
                        <li class="nav-item dropdown mega-dropdown"> <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-th-large"></i></a>
                            <div class="dropdown-menu animated zoomIn">
                                <ul class="mega-dropdown-menu row">


                                    <li class="col-lg-3  m-b-30">
                                        <h4 class="m-b-20">CONTACT US</h4>
                                        <!-- Contact -->
                                        <form>
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="exampleInputname1" placeholder="Enter Name"> </div>
                                            <div class="form-group">
                                                <input type="email" class="form-control" placeholder="Enter email"> </div>
                                            <div class="form-group">
                                                <textarea class="form-control" id="exampleTextarea" rows="3" placeholder="Message"></textarea>
                                            </div>
                                            <button type="submit" class="btn btn-info">Submit</button>
                                        </form>
                                    </li>
                                    <li class="col-lg-3 col-xlg-3 m-b-30">
                                        <h4 class="m-b-20"></h4>
                                        <!-- List style -->
                                        <ul class="list-style-none">
                                           
                                            @foreach(App\type::all() as $types)
                                            <li><a href="type"><i class="fa fa-check text-success"></i>{{$types->name}}</a></li>
                                            
                                           @endforeach
                                        </ul>
                                    </li>
                                    <li class="col-lg-3 col-xlg-3 m-b-30">
                                        <h4 class="m-b-20">Social Media</h4>
                                        <!-- List style -->
                                        <ul class="list-style-none">
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i>Facebook</a></li>
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i>twitter</a></li>
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i>Google</a></li>
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i>LinkedIn</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-lg-3 col-xlg-3 m-b-30">
                                        <h4 class="m-b-20">Devflow</h4>
                                        <!-- List style -->
                                        <ul class="list-style-none">
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i>About</a></li>
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i>Faqs</a></li>
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i>Terms and Conditions</a></li>
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i>Help</a></li>
                                            
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- End Messages -->
                    </ul>
                   
                    <!-- User profile and search -->
                    <ul class="navbar-nav my-lg-0" >

                        <!-- Search -->
                       
                        <!-- Comment -->
                        <input id="user" value="{{auth()->user()->id}}" hidden>
                        <li class="nav-item dropdown" >
                            <a class="nav-link dropdown-toggle text-muted text-muted  " id="markAsRead" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i style="color:black;"class="fa fa-bell"></i>
								<div class="notify" >
                                    @if(count(Auth()->user()->unreadNotifications))
                                     <span class="heartbit not"></span> <span class="point not1"></span> 
                                    @endif
                                    </div>
							</a>
                            <div class="dropdown-menu dropdown-menu-right mailbox animated zoomIn">
                                <ul>
                                    <li>
                                        <div class="drop-title">Notifications</div>
                                    </li>
                                    <li>
                                        <div class="message-center">
                                            <div id="div1">
                                            <!-- Message -->
                                            @forelse(auth()->user()->unreadNotifications as $notification)
                                            
                                            @include('layouts.notification.'.class_basename($notification->type))
                                           @empty
                                           No unread notifications here
                                            @endforelse
                                            <!-- Message -->
                                            </div>
                                        </div>
                                    </li>
                                   
                                </ul>
                            </div>
                        </li>
                        <!-- End Comment -->
                        <!-- Messages -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted  " href="#" id="2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fa fa-envelope"></i>
								<div class="notify"> <span class="heartbit"></span> <span class="point"></span> </div>
							</a>
                            <div class="dropdown-menu dropdown-menu-right mailbox animated zoomIn" aria-labelledby="2">
                                <ul>
                                    <li>
                                        <div class="drop-title">You have 4 new messages</div>
                                    </li>
                                    <li>
                                        <div class="message-center">
                                            <!-- Message -->
                                           
                                            <!-- Message -->
                                            <a href="#">
                                                <div class="user-img"> <img src="images/users/3.jpg" alt="user" class="img-circle"> <span class="profile-status away pull-right"></span> </div>
                                                <div class="mail-contnet">
                                                    <h5>Mr. John</h5> <span class="mail-desc">I am a singer!</span> <span class="time">9:08 AM</span>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="#">
                                                <div class="user-img"> <img src="images/users/4.jpg" alt="user" class="img-circle"> <span class="profile-status offline pull-right"></span> </div>
                                                <div class="mail-contnet">
                                                    <h5>Michael Qin</h5> <span class="mail-desc">Just see the my admin!</span> <span class="time">9:02 AM</span>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <a class="nav-link text-center" href="javascript:void(0);"> <strong>See all e-Mails</strong> <i class="fa fa-angle-right"></i> </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- End Messages -->
                        <!-- Profile -->
                        <li class="nav-item dropdown">
                        @if(Auth::user()->provider == "facebook")
                        <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="https://graph.facebook.com/{{Auth::user()->provider_id}}/picture" alt="user" class="profile-pic" /></a>
                        @else 
                        <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="https://cdn4.iconfinder.com/data/icons/browser-ui-small-size-optimized-set/154/user-login-human-man-body-512.png" alt="user" class="profile-pic" /></a>
                        @endif
                        <div class="dropdown-menu dropdown-menu-right animated zoomIn">
                                <ul class="dropdown-user">
                                <li><a href="/user/profile"><i class="ti-user"></i> {{Auth::user()->name}}</a></li>
                                  
                                    <li><a href="/logout"><i class="fa fa-power-off"></i>  Logout</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- End header header -->
        <!-- Left Sidebar  -->
        <div class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="nav-devider"></li>
                        <li class="nav-label">Home</li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-tachometer"></i><span class="hide-menu">Dashboard <span class="label label-rouded label-primary pull-right">2</span></span></a>
                           
                        </li>
                        <li class="nav-label">Apps</li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-envelope"></i><span class="hide-menu">Thread</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="/thread">All Thread</a></li>
                                <li><a href="/thread/create">Compose</a></li>
                                <li><a href="/threadTypeSuggest">Suggest Type</a></li>
                                
                            </ul>
                        </li>
                        
                        <li class="nav-label">Features</li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-suitcase"></i><span class="hide-menu">My Profile <span class="label label-rouded label-warning pull-right">6</span></span></a>
                            <ul aria-expanded="false" class="collapse">
                                    <li><a href="/user/profile">View Profile</a></li>
                                <li><a href="/user/friends">Notifications</a></li>
                                <li><a href="/logout">Logout</a></li>
                               
                            </ul>
                        </li>
                        @if(Auth::user()->admin)
                        <li class="nav-label">Admin</li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-envelope"></i><span class="hide-menu">Thread</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="/dashboard">Dashboard</a></li>
                                <li><a href="/threadTypeReview">Review Thread - Type </a></li>
                                <li><a href="/thread/create">Compose</a></li>
                                
                            </ul>
                        </li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-user"></i><span class="hide-menu">Admin Settings</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="/admin/add/admin">Add new Admin</a></li>
                                <li><a href="/thread"><i class="fa fa-lock"></i> Change Password</a></li>
                                <li><a href="/admin/level3">Level 3</a></li>
                                
                            </ul>
                        </li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-bell"></i><span class="hide-menu">Notifications</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="/admin/add/admin"><i class="fa fa-send"></i> Send</a></li>
                                <li><a href="/thread"><i class="fa fa-trash"></i> Delete </a></li>
                                <li><a href="/admin/level3"><i class="	fa fa-group"></i> Broadcast</a></li>
                                
                            </ul>
                        </li>
                        @endif
						
                        
                       
                        
                       
                       
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </div>
        <!-- End Left Sidebar  -->
        <!-- Page wrapper  -->
        <div class="page-wrapper">
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Dashboard</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
           @yield('content')
            <!-- End Container fluid  -->
            <!-- footer -->
             

            <footer class="footer"> © 2018 All rights reserved. GeO</footer>
            <!-- End footer -->
        </div>
        <!-- End Page wrapper  -->
    </div>
  
   
    <!-- Bootstrap tether Core JavaScript -->
    <script src="/js/lib/bootstrap/js/popper.min.js"></script>
    <script src="/js/lib/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="/js/jquery.slimscroll.js"></script>
    <!--Menu sidebar -->
    <script src="/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>

   
    <!-- scripit init-->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!--Custom JavaScript -->
  


    <!-- Amchart -->
     <script src="/js/lib/morris-chart/raphael-min.js"></script>
    <script src="/js/lib/morris-chart/morris.js"></script>
    <script src="/js/lib/morris-chart/dashboard1-init.js"></script>


	<script src="/js/lib/calendar-2/moment.latest.min.js"></script>
    <!-- scripit init-->
    <script src="/js/lib/calendar-2/semantic.ui.min.js"></script>
    <!-- scripit init-->
    <script src="/js/lib/calendar-2/prism.min.js"></script>
    <!-- scripit init-->
    <script src="/js/lib/calendar-2/pignose.calendar.min.js"></script>
    <!-- scripit init-->
    <script src="/js/lib/calendar-2/pignose.init.js"></script>

    <script src="/js/lib/owl-carousel/owl.carousel.min.js"></script>
    <script src="/js/lib/owl-carousel/owl.carousel-init.js"></script>
    <script src="/js/scripts.js"></script>


    <script src="/js/custom.min.js"></script>
    <script src="/js/main.js"></script>



</body>

</html>