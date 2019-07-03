<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use App\Messages;
use App\User_interests;
use App\Groups;
use App\Members;
use App\Interests;
use App\Group_messages;
use App\Group_interests;
use App\Users;
use DB;
use Hash;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index() {
       
        $users = DB::table('Users')->distinct()->where('role','!=',0)->get()->toArray();
        $interests = DB::table('Interests')->distinct()->get()->toArray();
        $groups = DB::table('Groups')->distinct()->get()->toArray();
        $data = [ 
            'users' => $users,
            'interests' => $interests,
            'groups' => $groups
                
                ];
        return view('panel')->with($data);
    }
    
    public function update(Request $request) {
       
        if($request->method() != 'POST') {
            return false;
        }
        
        $data = json_decode($request->request->get('data'));
       if(!empty($data->group_interests)) {
           DB::table('group_interests')->where('id_group',$data->group_interests)->delete();
           foreach($data->interests as $interest) {
               Group_interests::updateOrCreate(
                             ['id_interest' => $interest, 'id_group' => $data->group_interests],
                             ['id_interest' => $interest, 'id_group' => $data->group_interests]
                      );
           }
           return json_encode('success');
       }
       
    }
}
