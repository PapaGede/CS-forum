@extends('layouts.app')
@section('content')
<div class="container-fluid">
        <!-- Start Page Content -->
        <div class="row">
            @foreach($user as $users)
            <div class="col-md-3">
                <div class="card p-30">
                    <div class="media">
                    
                        <div class="media-left meida media-middle">
                            <span>
                                   
                                            @if($users->provider == "facebook")
                                        <img class="img-circle" width="50px" height="50px" src="https://graph.facebook.com/{{$users->provider_id}}/picture"  />
                                        @else
                                        <img class="img-circle" width="50px" height="50px" src="https://cdn4.iconfinder.com/data/icons/browser-ui-small-size-optimized-set/154/user-login-human-man-body-512.png" alt="{{$users->name}}" />
                                        @endif 
                                   
                            </span>
                        </div>
                        <div class="media-body media-text-right">
                            <h2>{{$users->name}}</h2>
                            <p class="m-b-0"><a href="/admin/userdetail/{{$users->id}}">{{$users->email}}</a></p>
                        </div>
                
                    </div>
                </div>
            </div>
            @endforeach
        </div>
@endsection