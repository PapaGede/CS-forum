<?php

namespace App\Http\Controllers;
use App\thread;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ajaxController extends Controller
{
    public function store(Request $request){
        if($request->ajax()){
            $this->validate($request,[
                'subject'=> 'required|min:10',
                'type_id'=>'required',
                'thread'=>'required'
              ]);
              $thread = new thread;
              $thread->subject = $request->subject;
              $thread->type_id = $request->type_id;
              $thread->thread = $request->thread;
              //store markdown code this field is optional
              $thread->code = $request->code;
              $thread->user_id = auth()->user()->id;
              $thread->save();
        
    
    
            return response()->json(['response'=>'Thread added']);
           
          
            }
    
    
}
}
