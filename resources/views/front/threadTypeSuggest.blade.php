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

                           

                            <div class="mt-4">
                                    {!!Form::open()!!}
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Type</label>
                                                {{Form::text('name','',['class'=>'form-control'])}}
                                            </div>
                                        </div>
                                       
                                    </div>
    
                                   
    
                                    
    
                                   
    
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Details</label>
                                                <textarea name="detail" rows="8" cols="" class="form-control" id="article-ckeditor"  style="height:300px">
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
    url: '/suggest',
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