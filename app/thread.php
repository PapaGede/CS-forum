<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class thread extends Model
{
    //
    //protected $fillable = [''];

    public function user(){
        return $this->belongsTo('App\user');
    }
    public function comments(){
        return $this->morphMany('App\Comment','commentable');
    }
    public function type(){
        return $this->belongsTo('App\type');
    }
   
}
