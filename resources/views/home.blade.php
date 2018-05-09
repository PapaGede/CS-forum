@extends('layouts.app')

@section('content')

       <div class="card">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs profile-tab" role="tablist">
                <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home" role="tab">Threads</a> </li>
                
            </ul>
            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane active" id="home" role="tabpanel">
                    <div class="card-body">
                        <div class="profiletimeline">
                                @if(!$Thread)
                                <div class="alert alert-warning">
                                  <span><b> Sorry - </b> No threads found </span>
                              </div>
                                @else
                                @foreach($Thread as $Threads)
                            <hr>
                            <?php
                            $dt     = new Carbon($Threads->created_at);
                           
                         // 10 days ago
                            $date = $dt->diffForHumans();     
                            ?>
                            <div class="sl-item">
                                    @if($Threads->user->provider == 'facebook')
                                    <div class="sl-left"> <img src="https://graph.facebook.com/{{$Threads->user->provider_id}}/picture" alt="user" class="img-circle" /> </div>
                                    @else 
                                    <div class="sl-left"> <img src="https://cdn4.iconfinder.com/data/icons/browser-ui-small-size-optimized-set/154/user-login-human-man-body-512.png" alt="user" class="img-circle" /> </div>
                                    @endif
                                <div class="sl-right">
                                <div><a href="#" class="link">{{$Threads->user->name}} <span><small>{{$date}}</small></span></a>
                                        <small>{!! $Threads->subject !!}</small>
                                        <a href="/thread/{{$Threads['id']}}"><p class="m-t-10">{!! $Threads->thread !!}</p></a>
                                        <div><p>{!! \Michelf\Markdown::defaultTransform($Threads->code) !!}</p></div>
                                    </div>
                                    <div class="like-comm m-t-20"> <a href="javascript:void(0)" class="link m-r-10">{{count($Threads->comments)}} comment</a> <a href="javascript:void(0)" class="link m-r-10"><i class="fa fa-thumbs-up text-info"></i> {{count($Threads->comments)}} Likes</a> </div>
                                </div>
                            </div>
                            @endforeach
                            @endif
                        </div>
                    </div>
                </div>
            </div>
       </div>
     
 
@endsection
