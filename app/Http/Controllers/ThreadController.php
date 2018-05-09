<?php

namespace App\Http\Controllers;
use App\type;
use App\thread;
use Illuminate\Http\Request;

class ThreadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth',['except'=>['index']]);
    }
    public function index()
    {
       
        $Thread = thread::all();
        return view('thread/index')->with('Thread',$Thread);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $type = type::all();
        return view('thread/create')->with('type',$type);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
          'subject'=> 'required|min:10',
          'type'=>'required',
          'thread'=>'required'
        ]);
        $thread = new thread;
        $thread->subject = $request->input('subject');
        $thread->type = $request->input('type');
        $thread->thread = $request->input('thread');
        //store markdown code this field is optional
        $thread->code = $request->input('code');
        $thread->user_id = auth()->user()->id;
        $thread->save();
        return back()->withMessage('Thread Successfully created');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\thread  $thread
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $Thread = thread::find($id);
        return view('thread/show')->with('Thread',$Thread);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\thread  $thread
     * @return \Illuminate\Http\Response
     */
    public function edit(thread $thread)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\thread  $thread
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, thread $thread)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\thread  $thread
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    
}
