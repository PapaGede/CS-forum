@extends('thread.partials.main')

@section('thread_content')


<div class="container-fluid">
        <!-- Start Page Content -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="card-content">
                            <!-- Left sidebar -->
                            <div class="inbox-leftbar">
                                @include('thread.partials.errors')
                                @include('thread.partials.success')
                                <a href="email-inbox.html" class="btn btn-danger btn-block waves-effect waves-light">Compose Thread</a>

                                <div class="mail-list mt-4">
                                    <a href="#" class="list-group-item border-0 text-danger"><i class="mdi mdi-inbox font-18 align-middle mr-2"></i><b>Inbox</b><span class="label label-danger float-right ml-2">8</span></a>
                                   
                                </div>

                                <h6 class="mt-5 m-b-15">Threads - Types</h6>

                                <div class="list-group b-0 mail-list">
                                    <?php
                                       $color = ['success','pink','purple','warning','info']; 
                                        ?>
                                        @foreach($type as $types)
                                       <?php shuffle($color);?>
                                <a href="/threadTypeShow/{{$types->id}}" class="list-group-item border-0"><span class="fa fa-circle text-{{$color[1]}} mr-2"></span>{{$types->name}}</a>
                                    
                                    @endforeach
                                </div>

                            </div>
                            <!-- End Left sidebar -->
                            <div class="inbox-rightbar">

                                <div class="" role="toolbar">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-light waves-effect"><i class="mdi mdi-archive font-18 vertical-middle"></i></button>
                                        <button type="button" class="btn btn-light waves-effect"><i class="mdi mdi-alert-octagon font-18 vertical-middle"></i></button>
                                        <button type="button" class="btn btn-light waves-effect"><i class="mdi mdi-delete-variant font-18 vertical-middle"></i></button>
                                    </div>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-light dropdown-toggle waves-effect" data-toggle="dropdown" aria-expanded="false">
                                                                           <i class="mdi mdi-folder font-18 vertical-middle"></i>
                                                                           <b class="caret m-l-5"></b>
                                                                       </button>
                                        <div class="dropdown-menu">
                                            <span class="dropdown-header">Move to</span>
                                            <a class="dropdown-item" href="javascript: void(0);">Social</a>
                                            <a class="dropdown-item" href="javascript: void(0);">Promotions</a>
                                            <a class="dropdown-item" href="javascript: void(0);">Updates</a>
                                            <a class="dropdown-item" href="javascript: void(0);">Forums</a>
                                        </div>
                                    </div>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-light dropdown-toggle waves-effect" data-toggle="dropdown" aria-expanded="false">
                                                                           <i class="mdi mdi-label font-18 vertical-middle"></i>
                                                                           <b class="caret m-l-5"></b>
                                                                       </button>
                                        <div class="dropdown-menu">
                                            <span class="dropdown-header">Label as:</span>
                                            <a class="dropdown-item" href="javascript: void(0);">Updates</a>
                                            <a class="dropdown-item" href="javascript: void(0);">Social</a>
                                            <a class="dropdown-item" href="javascript: void(0);">Promotions</a>
                                            <a class="dropdown-item" href="javascript: void(0);">Forums</a>
                                        </div>
                                    </div>

                                   
                                </div>

                                <div class="mt-4">
                                        {!!Form::open(['action'=>'ThreadController@store','method'=>'POST'])!!}
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>Subject</label>
                                                    {{Form::text('subject','',['class'=>'form-control'])}}
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label">Category</label>
                                                        <select name="type_id" class="form-control custom-select" data-placeholder="Choose a Category" tabindex="1">
                                                            @foreach($type as $types)
                                                            @if($types->isVerified)
                                                            <option value="{{$types->id}}">{{$types->name}}</option>
                                                            @endif
                                                            @endforeach
                                                            
                                                        </select>
                                                    </div>
                                                </div>
                                           
                                        </div>
                                      
                                           

        
                                       
        
                                        
        
                                       
        
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Thread</label>
                                                    <textarea name="thread" rows="8" cols="80" class="form-control" id="article-ckeditor"  style="height:300px">
                                                        </textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Markdown Code...(Optional)</label>
                                                    {{Form::textarea('code','',['class'=>'form-control'])}}
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                       
                                      
                                       
        
                                        <button type="submit" id="submit"  class="btn btn-info btn-fill pull-right">Create Thread</button>
                                        <div class="clearfix"></div>
                                        {!!Form::close()!!}
                                   
                                        <div class="form-group">
                                           
                                        </div>

                                        <div class="form-group m-b-0">
                                            <div class="text-right">
                                                <button type="button" class="btn btn-success waves-effect waves-light m-r-5"><i class="fa fa-floppy-o"></i></button>
                                                <button type="button" class="btn btn-success waves-effect waves-light m-r-5"><i class="fa fa-trash-o"></i></button>
                                                <button class="btn btn-purple waves-effect waves-light"> <span>Send</span> <i class="fa fa-send m-l-10"></i> </button>
                                            </div>
                                        </div>

                                   
                                </div>
                                <!-- end card-->

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End PAge Content -->
    </div>
  
   
   
     
    <script>
        
        $(document).ready(function(){
            $.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
            $('#submit').on('click', function(e) {
        e.preventDefault(); 
        var data = $('form').serialize();
        $.ajax({
        type: "POST",
        url: '/store',
        data: data,
        beforeSend: function(){
            swal('Loading...');
        },
        success: function(data) {
            //swal("Good job!", data.response, "success");
          swal('Great',data.response,'success');
        },
        error: function(errors,status,xhr){
            var err = errors.responseJSON.errors;
           $.each(err,function(key,value){
            sweetAlert("Oops...", value+"!!", "error");
           }) ;
          
        }
    });
    });
   
           
        });
   

      </script>
  
     
         
        
  
      
@endsection