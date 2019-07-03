<?php

namespace App;
use App\Messages;
use App\User_interests;
use App\Groups;
use App\Members;
use App\Group_messages;
use DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Model;

class User_interests extends Model
{
     protected $fillable = ['id_user','id_interest'];
    public function getByUserId($id) {
        
        $data = DB::table('user_interests')
                ->where('id_user',$id)
                ->distinct()
                ->get()
                ->toArray();
        return $data;
    }
    
    
}
