@extends('layouts.front')
@section('content')

<div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title">Thread - Types</h4>
                            <p class="category">Handcrafted by our friends from <a target="_blank" href="http://themes-pixeden.com/font-demos/7-stroke/index.html">Pixeden</a></p>
                        </div>
                        <div class="content all-icons">
                            <div class="row">
                              
                                    @if(!$Thread)
                                    <div class="alert alert-warning">
                                      <span><b> Sorry - </b> No threads found </span>
                                  </div>
                                    @else
                                    @foreach($Thread as $Threads)
                                    <?php
                                   $created_at = strtotime($Threads['created_at']);
                                   $created_at = date("D - dS M Y g:i A", $created_at);
                                    ?>
                                    <div class="alert alert- alert-with-icon" style="background-color:dimgrey" data-notify="container">
                                        <span data-notify="icon" class="pe-7s-bell"></span>
                                        <span data-notify="message"><a href="/thread/{{$Threads['id']}}">{{$Threads['subject']}}<br><small><span style="float:right">{{$Threads->type}},</small></span></a></span>
                                        <div class="col s12 m4 l2"><p>posted by: user</p></div>
                                        <div class="col s12 m4 l8"><p>{!! $Threads->thread !!}</p></div>
                                        <div class="col s12"><p>{!! \Michelf\Markdown::defaultTransform($Threads->code) !!}</p></div>
                                      </div>
                                      <div class="footer">
                                            <div class="legend">
                                                <i class="fa fa-circle text-info"></i>Like
                                                <i class="fa fa-circle text-warning"></i>Subscribe
                                            </div>
                                           
                                            <div class="">
                                                <i class="fa fa-clock-o"></i>{{$created_at}}
                                            </div>
                                        </div>
                                    @endforeach
                                    @endif
                             
                            </div>


                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection