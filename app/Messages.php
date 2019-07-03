<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Messages extends Model
{
    protected $primaryKey = 'idMessages';
    
    public function getAll() {
       return $this::with('users')->get()->toArray();
    }
    
    public function users() {
        return $this->belongsTo(Users::class,'id_author');
    }
    //
}
