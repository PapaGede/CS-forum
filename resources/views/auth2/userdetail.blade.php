@extends('layouts.app')
@section('content')

<div class="container-fluid">
    <!-- Start Page Content -->
    <div class="row">
        <!-- Column -->
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="card-two">
                        <header>
                            <div class="avatar">
                                    @if($user->provider == "facebook")
                                <img src="https://graph.facebook.com/{{$user->provider_id}}/picture" alt="{{$user->name}}" />
                                @else
                                <img src="https://cdn4.iconfinder.com/data/icons/browser-ui-small-size-optimized-set/154/user-login-human-man-body-512.png" alt="{{Auth::user()->name}}" />
                                @endif 
                            </div>
                        </header>
                        <h3>{{$user->name}}</h3>
                        <div class="desc">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit et cupiditate deleniti.
                        </div>
                        <div class="contacts">
                            <a href=""><i class="fa fa-plus"></i></a>
                            <a href=""><i class="fa fa-whatsapp"></i></a>
                        <a onclick="sendMsg()"><i class="fa fa-envelope"></i></a>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Column -->
        <!-- Column -->
        <div class="col-lg-12">
            <div class="card">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs profile-tab" role="tablist">
                    <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home" role="tab">Timeline</a> </li>
                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#profile" role="tab">Profile</a> </li>
                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#settings" role="tab">Settings</a> </li>
                    
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div class="tab-pane active" id="home" role="tabpanel">
                        <div class="card-body">
                            <div class="profiletimeline">
                                @if(count($thread))
                               @foreach($thread as $threads)
                               <?php
                               $dt     = new Carbon($threads->created_at);
                              
                            // 10 days ago
                               $date = $dt->diffForHumans();     
                               ?>
                                <div class="sl-item">
                                    <div class="sl-left"> <img src="https://cdn4.iconfinder.com/data/icons/browser-ui-small-size-optimized-set/154/user-login-human-man-body-512.png" alt="user" class="img-circle" /> </div>
                                    <div class="sl-right">
                                        <div><a href="#" class="link">{{$user->name}}</a> <span class="sl-date">{{$date}}</span> <span class="sl-date">{{Carbon::parse($threads->created_at)->format('l jS \of F Y h:i A') }}</span>
                                            <p class="m-t-10">{!!$threads->thread!!}</p>
                                            <div><p>{!! \Michelf\Markdown::defaultTransform($threads->code) !!}</p></div>
                                        </div>
                                        <div class="like-comm m-t-20"> <a href="javascript:void(0)" class="link m-r-10">{{count($threads->comments)}} comment</a> <a href="javascript:void(0)" class="link m-r-10"><i class="fa fa-heart text-primary"></i> 5 Likes</a><a href="javascript:void(0)" class="link m-r-10">{{$threads->type}}</a><a  style="color:white" class="btn btn-danger btn-rounded">Delete Thread</a> <a style="color:white" class="btn btn-dark btn-rounded">Message With Thread</a> </div>
                                    </div>
                                </div>
                                <hr>
                                @endforeach
                                @else
                                <div class="sl-item">
                                        
                                        <div class="sl-right">
                                            <div><a href="#" class="link">{{$user->name}}</a> 
                                                <p class="m-t-10">{{$user->name}} has no threads</p>
                                            </div>
                                           
                                        </div>
                                    </div>
                                @endif
                               
                            </div>
                        </div>
                    </div>
                    <!--second tab-->
                    <div class="tab-pane" id="profile" role="tabpanel">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-3 col-xs-6 b-r"> <strong>Full Name</strong>
                                    <br>
                                    <p class="text-muted">{{$user->name}}</p>
                                </div>
                                <div class="col-md-3 col-xs-6 b-r"> <strong>Mobile</strong>
                                    <br>
                                    <p class="text-muted">(123) 456 7890</p>
                                </div>
                                <div class="col-md-3 col-xs-6 b-r"> <strong>Email</strong>
                                    <br>
                                    <p class="text-muted">{{$user->email}}</p>
                                </div>
                                <div class="col-md-3 col-xs-6"> <strong>Location</strong>
                                    <br>
                                    <p class="text-muted">London</p>
                                </div>
                            </div>
                            <hr>
                            <p class="m-t-30">//user quote</p>
                            <h4 class="font-medium m-t-30">Skill Set</h4>
                            <hr>
                            <h5 class="m-t-30">Wordpress <span class="pull-right">80 answered</span></h5>
                            <div class="progress">
                                <div class="progress-bar bg-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width:80%; height:6px;"> <span class="sr-only">50% Complete</span> </div>
                            </div>
                            <h5 class="m-t-30">HTML 5 <span class="pull-right">90%</span></h5>
                            <div class="progress">
                                <div class="progress-bar bg-info" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width:90%; height:6px;"> <span class="sr-only">50% Complete</span> </div>
                            </div>
                            <h5 class="m-t-30">jQuery <span class="pull-right">50%</span></h5>
                            <div class="progress">
                                <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:50%; height:6px;"> <span class="sr-only">50% Complete</span> </div>
                            </div>
                            <h5 class="m-t-30">Photoshop <span class="pull-right">70%</span></h5>
                            <div class="progress">
                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%; height:6px;"> <span class="sr-only">50% Complete</span> </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="settings" role="tabpanel">
                        <div class="card-body">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Column -->
    </div>
</div>
<script>
    $(document).ready(function(){
       
      
    })
    function sendMsg(){
        swal("Send a message:", {
  content: "input",
})
.then((value) => {
  //swal(`You typed: ${value}`);
  //alert(value);
}); 
        }
   
</script>


@endsection