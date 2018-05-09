<?php

namespace App\Http\Controllers;
use App\User;
use App\thread;
use App\type;
use Illuminate\Http\Request;

class adminController extends Controller
{
    public function __construct()
    {
        $this->middleware('isAdmin');
    }
    public function dashboard(){
        return view('auth2.index');
    }
    public function newThreads(){
        $Thread = Thread::all();
        return view('auth2.newThreads')->with('Thread',$Thread);
    }
    public function banned(){
        $user = User::all();
        return view('auth2.banned')->with('user',$user);
    }
    public function user(){
        $user = User::all();
        return view('auth2.user')->with('user',$user);
    }
    public function userdetail($id){
        $user = User::find($id);
        $thread = thread::where('user_id',$id)->orderBy('id','asc')->get();
        return view('auth2.userdetail')->with('user',$user)->with('thread',$thread);
    }
    public function threadTypeReview(){
        $type = type::all();
        return view('auth2.threadTypeReview')->with('type',$type);
    }
}
