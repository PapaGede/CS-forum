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
                            <span><i class="fa fa-archive f-s-40 color-primary"></i></span>
                        </div>
                        <div class="media-body media-text-right">
                            <h2>56</h2>
                            <p class="m-b-0"><a href="/newThreads">New Threads</a></p>
                        </div>
                
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    
@endsection