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

class Interests extends Model
{
    public function getByUserInterests($user_interests) {
        
        $interests_ids = array();
        foreach($user_interests as $interest) {
            if ($interest->id_user == Auth::user()->id) {
                array_push($interests_ids,$interest->id_interest);
            }
        }
        $interests = DB::table('Interests')->whereIn('idInterests',$interests_ids)
                ->distinct()
                ->get()->toArray();
        if ($interests) {
            return $interests;
        }
        return null;
    }
    public function getUserInterests($user_id) {
        
        $modelUserInterests = new User_interests();
        $user_interests = $modelUserInterests->getByUserId($user_id);
        $interests = $this->getByUserInterests($user_interests);
        if ($interests) {
            return $interests;
        } 
        return null;
    }
}
