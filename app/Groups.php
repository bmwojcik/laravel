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

class Groups extends Model
{
    //
        protected $primaryKey = 'id';
    
        public function getByGroupInterests($params) {
            $data = array();
            $temp_data = array();
            foreach($params as $param) {
                foreach($param as $group) {
                     $row = DB::table('groups')->where('idGroups',$group->id_group)->get()->toArray();
                     $temp_data[] = $row;
                }
            }
            foreach($temp_data as $temp) {
                foreach($temp as $row) {
                    $data[] = $row;
                }
            }
            return $data;
        }
        
        public function getUserGroups() {
            
            $user_interests = new User_interests();
            $id = Auth::user()->id;
            $user_interests = DB::table('user_interests')->where('id_user', $id)->get()->toArray();

            $table_group_i = array();
            foreach ($user_interests as $interest) {
                $row = DB::table('group_interests')->where('id_interest', $interest->id_interest)->get()->toArray();
                $table_group_i[] = $row;
            }
            $groups = $this->getByGroupInterests($table_group_i);
            return $groups;
    }
    ///// poprawniejsza wersja
    /*
     * 
     * 
     */
        public function getAllUserGroups() {
        
        $id = Auth::user()->id;    
        $user_groups = DB::table('Members')->where('id_user',$id)->get()->toArray();
        $table_group_i = array();
        foreach ($user_groups as $group) {
            $row = DB::table('Groups')->where('idGroups', $group->id_group)->get()->toArray();
            $table_group_i[] = reset($row);
        }
        return $table_group_i;
    }
    
    public function getByMembers($params) {
             $data = array();
            $temp_data = array();
            foreach($params as $param) {
                foreach($param as $group) {
                     $row = DB::table('groups')->where('idGroups',$group->id_group)->get()->toArray();
                     $temp_data[] = $row;
                }
            }
            foreach($temp_data as $temp) {
                foreach($temp as $row) {
                    $data[] = $row;
                }
            }
            return $data;
    }
    

}
