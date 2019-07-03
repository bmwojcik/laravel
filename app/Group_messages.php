<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Group_messages extends Model
{
    //
       protected $primaryKey = 'idGroup_messages';
       
        
    public function getAll($members) {
//       return $this->with('members')->get()->toArray();
       return $this->whereIn('members_id',$members)->with('members')->get()->toArray();
    }
        public function members() {
        return $this->belongsTo(Members::class,'members_id');
    }
}
