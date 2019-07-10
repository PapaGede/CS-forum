@extends('layouts.app')
@section('content')
<div class="row">
        <div class="col-lg-3">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Verified Type</h4>
                        <div class="card-content">
                            <div class="todo-list">
                                <div class="tdl-holder">
                                    <div class="tdl-content">
                                        <ul>
                                                <?php
                                                $color = ['success','pink','purple','warning','info']; 
                                                 ?>
                                                
                                                
                                            @foreach($type as $types)
                                            <?php shuffle($color);?>
                                            @if($types->isVerified)
                                            <li>
                                                <label>
                                                    <input type="checkbox"><i class="bg-{{$color[0]}}"></i><span>{{$types->name}}</span>
                                                    <a href='#' class="ti-close"></a>
                                                </label>
                                            </li>
                                            @endif
                                            @endforeach
                                        </ul>
                                    </div>
                                    <input type="text" class="tdl-new form-control" placeholder="Type here">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        <div class="col-lg-9">
            <div class="card">
                <div class="card-title">
                    <h4>Suggested Thread - Types</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Type</th>
                                    <th>Action</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($type as $types)

                                <tr>
                                    <td>
                                        <div class="round-img">
                                            <a href=""><img src="images/avatar/4.jpg" alt=""></a>
                                        </div>
                                    </td>
                                    <td>{{$types->user->name}}</td>
                                    <td><span>{{$types->name}}</span></td>
                                    @if($types->isVerified)
                                    <td><button class="btn btn-danger" verify="{{$types->id}}" id="status">Undo</button></td>
                                    @else
                                    <td><button class="btn btn-primary" verify="{{$types->id}}" id="status">Verify</button></td>
                                    @endif
                                    @if($types->isVerified)
                                    <td><span class="badge badge-success">Verified</span></td>
                                    @else
                                    <td><span class="badge badge-warning">Pending</span></td>
                                    @endif
                                </tr>
                                @endforeach
                               
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function() {
            $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
         
          $(document).delegate('#status','click', function(e) {
        e.preventDefault(); 
        $(this).removeClass('btn btn-primary').addClass('btn btn-warning');
        var id = $(this).attr('verify');
        $.ajax({
        type: "POST",
        url: '/changeStatus',
        data: {id:id},
        beforeSend: function(){
            swal('Loading...');
        },
        success: function(data) {
            //swal("Good job!", data.response, "success");
            //$(this).html('Unused');
           // $('.tdl-holder').load('/threadTypeReview' + '.tdl-content')
          swal('Great',data.response,'success');
         //console.log(data);
        },
        error: function(errors,status,xhr){
            var err = errors.responseJSON.errors;
           $.each(err,function(key,value){
            sweetAlert("Oops...", value+"!!", "error");
           }) ;
          
        }
    });
    });
    
        } );
    </script>
     

@endsection