<?php

namespace App\Http\Controllers;
use App\thread;
use App\type;
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
public function threadSuggest(Request $request){
    if($request->ajax()){
        $this->validate($request,[
            'detail'=> 'required|min:10',
            'name'=>'required',
           
          ]);
          $type = new type;
          $type->name= $request->name;
          $type->detail= $request->detail;
          $type->user_id = auth()->user()->id;
          $type->save();
    


        return response()->json(['response'=>'Type suggested. Your thread type would be reviewed']);
       
      
        }


}
public function changeStatus(Request $request){
    if($request->ajax()){
        
          
          $type = type::find($request->id);
          if($type->isVerified){
            $type->isVerified = 0;
            $type->save();
            return response()->json(['response'=>'Type verification change to off']);
          }else
          {
            $type->isVerified = 1;
            $type->save();
            return response()->json(['response'=>'Type verification changed to on']);
          }
          
         
    


       
       
      
        }
    }
}
