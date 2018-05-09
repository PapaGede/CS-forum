<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class type extends Model
{
    public function user(){
        return $this->belongsTo('App\user');
    }
}
