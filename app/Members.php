<?php

namespace App;
use DB;
use Illuminate\Database\Eloquent\Model;

class Members extends Model
{
        protected $primaryKey = 'idMembers';
          protected $fillable = ['id_user','idMembers','id_group'];
        
    public function getAllIdMembers($group) {
        $list = DB::table('members')->where('id_group',$group)->get()->toArray();
        $data = array();
        foreach($list as $element) {
            $data[] = $element->idMembers;
        }
        return $data;
    }
    
     public function Group_messages() {
          return $this->hasMany(Group_messages::class,'members_id');
        }
}
