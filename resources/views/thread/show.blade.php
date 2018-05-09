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

                                <a href="#" id="compose" class="btn btn-danger btn-block waves-effect waves-light">Compose Reply</a>

                              
                             
                            </div>
                            <!-- End Left sidebar -->
                            <div class="inbox-rightbar">

                              
                                <div class="mt-4">
                                    <h5>{{$Thread->subject}}</h5>

                                    <hr/>

                                    <div class="media mb-4 mt-1">
                                       
                                        <div class="media-body">
                                            <span class="pull-right">{{$Thread->created_at}}</span>
                                        <h6 class="m-0">{{$Thread->user->name}}</h6>
                                            <small class="text-muted">{{$Thread->type}}</small>
                                        </div>
                                    </div>

                                    <div class="col s12 m4 l8"><p>{!! $Thread->thread !!}</p></div>
                                    <div class="col s12 m4 l2"><p>00</p></div>
                                    <div class="col s12"><p>{!! \Michelf\Markdown::defaultTransform($Thread->code) !!}</p></div>

                                    <hr/>

                                <h6> <i class="fa fa-paperclip mb-2"></i> Replys <span>{{count($Thread->comments)}}</span> </h6>

                                  
                                </div>
                                <div class="tab-content">
                                        <div class="tab-pane active" id="home" role="tabpanel">
                                            <div class="card-body">
                                                <div class="profiletimeline">
                                                        @if(!$Thread)
                                                        <div class="alert alert-warning">
                                                          <span><b> Sorry - </b> No threads found </span>
                                                      </div>
                                                        @else
                                                        @foreach($Thread->comments as $comment)
                        
                                                    <hr>
                                                    <?php
                                                    $dt     = Carbon::now();
                                                   
                                                 // 10 days ago
                                                    $date = $dt->diffForHumans($comment['created_at']);     
                                                    ?>
                                                    <div class="sl-item">
                                                        <div class="sl-left"> <img src="images/users/avatar-3.jpg" alt="" class="img-circle" /> </div>
                                                        <div class="sl-right">
                                                        <div><a href="{{$comment->user_id}}" class="link">{{$comment->user->name}} <span><small>{{$date}}</small></span></a>
                                                                
                                                                <a href=""><p class="m-t-10">{!! \Michelf\Markdown::defaultTransform($comment->body) !!}</p></a>
                                                               
                                                            </div>
                                                           
                                                        </div>
                                                        @if(Auth::user()->id == $comment->user_id)
                                                        <button type="button" id="edit" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
                                                            <i class="fa fa-edit"></i>
                                                        </button>
                                                        <button type="button" id="delelte" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                            <i class="fa fa-times"></i>
                                                        </button>
                                                        @endif
                                                        <button id="ans" comment="{{$comment->id}}" type="button"  rel="tooltip" title="reply" class="btn btn-info btn-simple btn-xs">
                                                                <i class="fa fa-reply"></i>
                                                            </button>
                                                    </div>
                                                    @endforeach
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        
                                <!-- card-box -->
                              
                              

                                <div class="text-right">
                                    <button type="button" class="btn btn-primary waves-effect waves-light w-md m-b-30">Send</button>
                                </div>
                                @if(Auth::user()->id == $Thread->user_id)
                                <div style="float:right;">
                                        <button type="button" class="btn btn-light waves-effect"><i class="mdi mdi-delete-variant font-18 vertical-middle"></i></button>
                                        <button type="button" class="btn btn-light waves-effect"><i class="mdi mdi-archive font-18 vertical-middle"></i></button>
                                        <button type="button" class="btn btn-light waves-effect"><i class="mdi mdi-alert-octagon font-18 vertical-middle"></i></button>
                                 </div>
                                @endif 
                               
                            </div>
                            {!!Form::open(['action'=>['CommentController@addThreadcomment',$Thread->id],'method'=>'POST'])!!}
                
                            <div class="row">
                                 <div class="col-md-12">
                                   <div class="form-group">
                                       <label for="type">Reply to this Thread </label>
                                       {{Form::textarea('body','',['class'=>"form-control"])}}
                                     
                                       Getting started with Markerdown using <a target="_blank" href="https://help.github.com/categories/writing-on-github/"> GitHub-flavored</a> code blocks.
                                   </div>
                                 </div>
                             </div>
                         <div>
                           <button class="btn waves-effect waves-light red" type="submit" name="action">Submit
                             <i class="material-icons right">send</i>
                           </button>
                         </div>
                         
                         {!!Form::close()!!}
                        </div>
                    </div>
                  
            </div>
        </div>
        
        <!-- End PAge Content -->
    </div>
    <!-- End Container fluid  -->
    <!-- footer -->
  
    <!-- End footer -->
</div>
<!-- End Page wrapper  -->
</div>

     

      
                           
                        

            
                          

               
          <script>
              $(document).ready(function(){
                 
               
              });
         
          </script>
               <script>
                   /*
               $(document).ready(function(){
                 $('body').delegate('#reply','',function(){
                     $(this).hide();
                 });
                $('body').delegate('#ans','click',function(){
                  var comment_id = $(this).attr('comment');
                 
                    $('#reply'+comment_id).show();
                   
    
                });
                $('body').delegate('#edit','click',function(){

                })
               });
              */
               </script>
            
              @endsection