@extends('layouts.app')
@section('content')
<div class="col-lg-9">
    <div class="card">
        <div class="card-title">
            <h4>Please show your level 3 card to be scanned</h4>
        </div>
       
           
                <video id="preview"></video>
    
    </div>
 </div>
<script type="text/javascript" src="/js/instascan.min.js"></script>

<script type="text/javascript">
//imported a js file for scanning name instascan
//called the object Instascan.Scanner. this is our input device
  let scanner = new Instascan.Scanner({ video: document.getElementById('preview') });

  //added a listener. eg onClick but in this case on scan
  scanner.addListener('scan', function (content) {
    //console.log(content);
//on scann get the content into the search field
   console.log(content);

    //call the function in sweetAlert to alert this message
    swal('Awesome','QRcode Scan Complete','success');
  });

  //note. this will occur everytime you scan an image

  //get the cameras attached to this computer
  Instascan.Camera.getCameras().then(function (cameras) {
      //pick the first one which is always the default camera thus the webcam
    if (cameras.length > 0) {
      scanner.start(cameras[0]);
    } else {
      console.error('No cameras found.');
    }
  }).catch(function (e) {
    console.error(e);
  });
</script>
 <!--make an ajax call on scan to the level 3 controller and make sure the scanned code is recieved by the controller.
     if the controller authenticates the user to be a level 3 admin or a super admin, log the current admin out and login the super admin account
    this account can delete threads and ban users, thus set their activities to null.
    every admin can send a broadcast message to all the users on the network
    -->

@endsection
