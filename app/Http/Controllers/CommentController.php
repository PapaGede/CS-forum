<?php

namespace App\Http\Controllers;

use App\Comment;
use App\thread;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    //function to add the thread comment
    public function addThreadcomment(Request $request,Thread $thread){
        //saving a comment
        //check for the validation of the comment
        $this->validate($request,[
            'body'=> 'required'

        ]);
        $comment = new Comment();
        $comment->body = $request->body;
        $comment->user_id = auth()->user()->id;
        $thread->comments()->save($comment);

        return back();
    }
  
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

   


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Comment $comment)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function destroy(Comment $comment)
    {
        //
    }
}
