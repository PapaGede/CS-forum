<?php

namespace App\Http\Controllers;
use App\thread;
use Illuminate\Http\Request;

class pagesController extends Controller
{
    public function userProfile(){
        return view('front.profile');
    }
    public function threadType(){
        $Thread  = thread::select('type')->distinct()->get();
        return view('front.threadType')->with('Thread',$Thread);
    }
    public function threadTypeShow($type){
        $Thread = thread::where('type',$type)->orderBy('created_at','asc')->get();
        return view('front.threadTypeShow')->with('Thread',$Thread);
    }
    public function threadTypeSuggest(){
        return view('front.threadTypeSuggest');
    }
   
    
}
