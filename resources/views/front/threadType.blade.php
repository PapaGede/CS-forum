@extends('layouts.front')
@section('content')
<div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title">Thread - Types</h4>
                            <p class="category">Select your thread type here</p>
                        </div>
                        <div class="content all-icons">
                            <div class="row">
                              
                             @foreach($Thread as $Threads)
                             <a href="/threadTypeShow/{{$Threads->type}}">
                              <div class="font-icon-list col-lg-2 col-md-3 col-sm-4 col-xs-6 col-xs-6">
                                <div class="font-icon-detail"><i class="pe-7s-albums"></i>
                               
                                    <input type="text" value="{{$Threads->type}}">
                              
                                </div>

                              </div>
                            </a>
                              @endforeach
                             
                            </div>


                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection