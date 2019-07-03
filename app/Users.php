<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Users extends Model
{
    protected $primaryKey = 'id';
    protected $fillable = ['nick','login','password','role'];
    
    
    public static function isAdmin() {
        
        $user = Auth::user();
        if ($user->role = 0) {
            return true;
        } 
        return false;
    }
        public function messages() {
          return $this->belongsTo(Messages::class,'id_author');
        }
}
