@extends('layouts.app')
@section('content')
<div class="container-fluid">
    <!-- Start Page Content -->
    <div class="row">
        
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
        
      
        <div class="col-md-3">
            <div class="card p-30">
                <div class="media">
                    <div class="media-left meida media-middle">
                        <span><i class="fa fa-warning f-s-40 color-success"></i></span>
                    </div>
                    <div class="media-body media-text-right">
                        <h2>1178</h2>
                        <p class="m-b-0"> <a href="">Banned</a></p>
                    </div>
                </div>
            </div>
        </div>
        
      
        <div class="col-md-3">
            <div class="card p-30">
                <div class="media">
                    <div class="media-left meida media-middle">
                        <span><i class="fa fa-file f-s-40 color-warning"></i></span>
                    </div>
                    <div class="media-body media-text-right">
                        <h2>25</h2>
                        <p class="m-b-0">  <a href="">Threads </a></p>
                    </div>
                </div>
            </div>
        </div>
       
       
        <div class="col-md-3">
            <div class="card p-30">
                <div class="media">
                    <div class="media-left meida media-middle">
                        <span><i class="fa fa-user f-s-40 color-danger"></i></span>
                    </div>
                    <div class="media-body media-text-right">
                        <h2>847</h2>
                        <p class="m-b-0"> <a href="">Users </a></p>
                    </div>
                </div>
            </div>
        </div>
       
    </div>

@endsection