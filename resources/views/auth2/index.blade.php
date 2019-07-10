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
                        <p class="m-b-0"> <a href="/admin/banned">Banned</a></p>
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
                        <p class="m-b-0"> <a href="/admin/user">Users </a></p>
                    </div>
                </div>
            </div>
        </div>
       
    </div>
    <div class="row bg-white m-l-0 m-r-0 box-shadow ">

        <!-- column -->
        <div class="col-lg-8">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Activity</h4>
                    <div id="thread"></div>
                </div>
            </div>
        </div>
        <!-- column -->

        <!-- column -->
        <div class="col-lg-4">
            <div class="card">
                <div class="card-body browser">
                    
                    <p class="m-t-30 f-w-600"><span class="pull-right">90%</span></p>
                    <div class="progress">
                        <div role="progressbar" style="width: 90%; height:8px;" class="progress-bar bg-info wow animated progress-animated"> <span class="sr-only">60% Complete</span> </div>
                    </div>
<!--
                    <p class="m-t-30 f-w-600">iPhone<span class="pull-right">65%</span></p>
                    <div class="progress">
                        <div role="progressbar" style="width: 65%; height:8px;" class="progress-bar bg-success wow animated progress-animated"> <span class="sr-only">60% Complete</span> </div>
                    </div>

                    <p class="m-t-30 f-w-600">Samsung<span class="pull-right">65%</span></p>
                    <div class="progress">
                        <div role="progressbar" style="width: 65%; height:8px;" class="progress-bar bg-warning wow animated progress-animated"> <span class="sr-only">60% Complete</span> </div>
                    </div>

                    <p class="m-t-30 f-w-600">android<span class="pull-right">65%</span></p>
                    <div class="progress m-b-30">
                        <div role="progressbar" style="width: 65%; height:8px;" class="progress-bar bg-success wow animated progress-animated"> <span class="sr-only">60% Complete</span> </div>
                    </div>
                -->
               
                </div>
            </div>
        </div>
        <!-- column -->
    </div>

@endsection