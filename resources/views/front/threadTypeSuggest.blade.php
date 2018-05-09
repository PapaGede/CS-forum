@extends('layouts.app')
@section('content')
<div class="container-fluid">
    <!-- Start Page Content -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="card-content">
                        <!-- Left sidebar -->
                        <div class="inbox-leftbar">
                            <a href="email-inbox.html" class="btn btn-danger btn-block waves-effect waves-light">Suggest Thread</a>

                            <div class="mail-list mt-4">
                                <a href="#" class="list-group-item border-0 text-danger"><i class="mdi mdi-inbox font-18 align-middle mr-2"></i><b>Inbox</b><span class="label label-danger float-right ml-2">8</span></a>
                               
                            </div>

                            <h6 class="mt-5 m-b-15">Suggest -Thread Types</h6>

                           

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
                                    {!!Form::open()!!}
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Type</label>
                                                {{Form::text('type','',['class'=>'form-control'])}}
                                            </div>
                                        </div>
                                       
                                    </div>
    
                                   
    
                                    
    
                                   
    
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Details</label>
                                                <textarea name="details" rows="8" cols="" class="form-control" id="article-ckeditor"  style="height:300px">
                                                    </textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit" id="submit"  class="btn btn-primary"> Send</button>
                                    <div class="clearfix"></div>
                                    {!!Form::close()!!}
                               
                                    <div class="form-group">
                                       
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