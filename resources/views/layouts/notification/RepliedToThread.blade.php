<?php $dt     = new Carbon($notification->created_at);
 $date = $dt->diffForHumans(); 
                    ?>    
<a href="/thread/{{$notification->data['thread']['id']}}">
        <div class="btn btn-danger btn-circle m-r-10"><i class="fa fa-link"></i></div>
        <div class="mail-contnet">
            
            <h5>Reply to Thread</h5><span class="mail-desc">{{$notification->data['sender']['name']}} commented on your thread</span><span class="mail-desc">{{$notification->data['thread']['subject']}}</span><span class="time">{{$date}}</span> 
            
        </div>
    </a>
