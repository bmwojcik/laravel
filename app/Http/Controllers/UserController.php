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

class UserController extends Controller
{
    private $_modelGroups;
    private $_modelUserInterests;
    private $_modelInterests;
    private $_modelUsers;
    private $_modelGroupInterests;
    private $_modelMembers;
    
    
    public function __construct() {
        $this->_modelGroups = new Groups();
        $this->_modelUserInterests = new User_interests();
        $this->_modelInterests = new Interests();
        $this->_modelUsers = new Users();
        $this->_modelGroupInterests = new Group_interests();
        $this->_modelMembers = new Members();
    }
    
    public function view(Request $request) {
        if(!Auth::user()->id) {
            return redirect()->route('login');
        }
        $edit = $request->request->get('edit');
        $user = Auth::user();
        $user_interests = ($this->_modelInterests->getUserInterests($user->id) ? $this->_modelInterests->getUserInterests($user->id) : (Array)null);
        $groups = $this->_modelGroups->getAllUserGroups();
        $data = [
            'interests' => $user_interests,
            'groups' => $groups,
            'user' => $user,
        ];
//                dd($data);

//        echo '<pre>';
//        print_r($data);die();
        if(!$edit) {
           return view('user.view')->with($data);
        }
        $data['all_groups'] = (DB::table('groups')->distinct()->get()->toArray() ? DB::table('groups')->distinct()->get()->toArray() : (Array)null);
        $data['all_interests'] = (DB::table('interests')->distinct()->get()->toArray() ?  DB::table('interests')->distinct()->get()->toArray() : (Array)null);
        return view('user.edit')->with($data);
    }
    
    
    public function edit(Request $request) {
//        echo '<pre>';
        $data = $request->request->all();
        if(empty($data)) {
            return null;
        }
        if (Auth::user()->id != $data['id']) {
            die('Wrong session!');
        }
        /*
         * @todo , valid password
         */
        $user = $this->_modelUsers::find($data['id']);
        $user_groups = DB::table('members')->where('id_user',$data['id'])->pluck('idMembers')->toArray();
        $user_interests = DB::table('user_interests')->where('id_user',$data['id'])->pluck('idUser_interests')->toArray();
        // usuwanie
        DB::table('members')->whereIn('idMembers',$user_groups)->delete();
        DB::table('user_interests')->whereIn('idUser_interests',$user_interests)->delete();
        $user->nick = $data['nick'];
        $user->login = $data['login'];
        if (!empty($data['password']) && !empty($data['password2'])) {
            if ($data['password'] == $data['password2']) {
                $user->password = Hash::make($data['password']);
            }
        } 
        if(isset($data['interests']))
            foreach($data['interests'] as $group) {
                $ui = $this->_modelUserInterests::updateOrCreate(
                         ['id_user' => $data['id'], 'id_interest' => $group],
                         ['id_user' => $data['id'], 'id_interest' => $group]
    //                    ,['price' => 99, 'discounted' => 1]
                      );
        }
        if(isset($data['groups']))
         foreach($data['groups'] as $group) {
            $ui = $this->_modelMembers::updateOrCreate(
                     ['id_user' => $data['id'], 'id_group' => $group],
                     ['id_user' => $data['id'], 'id_group' => $group]
//                    ,['price' => 99, 'discounted' => 1]
                  );
        }
        $user->save();
        
        $user = Auth::user();
        $user_interests = $this->_modelInterests->getUserInterests($user->id);
        $groups = $this->_modelGroups->getAllUserGroups();
        $data = [
            'interests' => $user_interests,
            'groups' => $groups,
            'user' => $user,
            'success' => true
        ];
        
        return view('user.view')->with($data);
    }
}
