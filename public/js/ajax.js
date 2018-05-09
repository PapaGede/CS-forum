$(document).ready(function(){
//ajax
function ajaxCall(data,dest,src,type){
    var data = $(data).serialize();
    var dest = $(this).attr(dest);
    var src  = $(this).attr(src);
    if(type == 'POST' ){
        $.ajax({
            url     : dest,
            data    : data,
            type    : 'POST',
            dataType: 'json',
            beforeSend: function(){
                swal('Loading...');
            },
            success: function(data) {
                //swal("Good job!", data.response, "success");
              swal('Great',data.response,'success');
            },
            error: function(){
                //validate with laravel's validate
            }
        })
    }else{
        $.ajax({
            url     : dest,
            data    : data,
            type    : 'GET',
            dataType: 'json',
            beforeSend: function(){
                swal('Loading...');
            },
            success: function(data) {
                //swal("Good job!", data.response, "success");
              swal('Great',data.response,'success');
            },
            error: function(){
                //validate with laravel's validate
            }
        })

    }
}
});