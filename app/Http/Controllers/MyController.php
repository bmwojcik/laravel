<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
//use App\Http\Controllers\Controller;
//use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use App\Messages;
use App\User_interests;
use App\Groups;
use App\Members;
use App\Group_messages;
use DB;
//use Hash;

class MyController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
//   $this->middleware(function ($request, $next) {
//
//            $this->user = Auth::user();
//
//            return $next($request);
//        });
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    
    
    public function index()
    { 
        return view('home');
    }
    
    
    public function start() {
        
        $messages = new Messages();
        $modelGroup = new Groups();
        $user_interests = new User_interests();

        $groups = $modelGroup->getAllUserGroups();
        $all_messages = $messages->getAll();
        foreach($all_messages as $key => $message) {
            $all_messages[$key]['author'] = $message['users']['nick'];
        }

        return view('messages',compact('all_messages','groups'));
    }
    
    public function group(Request $request) {

        $modelMembers = new Members();
        $modelGroupMessages = new Group_messages();
        $modelGroups = new Groups();


        $id_grupy = $request->request->get('group');
        $members = $modelMembers->getAllIdMembers($id_grupy);

        $group_messages = $modelGroupMessages->getAll($members);
        foreach ($group_messages as $key => $gmes) {
            $row = DB::table('Users')->where('id', $gmes['members']['id_user'])->get()->toArray();
            $group_messages[$key]['author'] = reset($row)->nick;
            $group_messages[$key]['message'] = $group_messages[$key]['content'];
            if (!isset($group_messages[$key]['date'])) {
                $group_messages[$key]['date'] = '';
            }
        }
        $group_row = DB::table('Groups')->where('idGroups', $id_grupy)->get()->toArray();
        $group_name = reset($group_row);
        $all_messages = $group_messages;

        $groups = $modelGroups->getAllUserGroups();
        
        return view('messages', compact('all_messages', 'groups', 'group_name'));
    }
    
    public function send(Request $request) {
      
      $id_group = $request->request->get('target');
      if(!is_numeric($id_group)) {
          return 'fail';
      }
       $modelGroups = new Groups();
      if ($id_group != 0) {
            $modelGroupMsg = new Group_messages();
            $modelMembers = new Members();
            $user_id = Auth::user()->id;
            $member = DB::table('Members')->where('id_user', $user_id)->where('id_group', $id_group)->take(1)->get()->toArray();
            $member = reset($member);
            $id_member = $member->idMembers;
            $content = $request->request->get('content');

            $modelGroupMsg->members_id = $id_member;
            $modelGroupMsg->content = $request->request->get('message');
            // $modelGroupMsg->date = date('Y-m-d');
            if ($modelGroupMsg->save()) {

                $group_row = DB::table('Groups')->where('idGroups', $id_group)->get()->toArray();
                $group_name = reset($group_row);
                $members = $modelMembers->getAllIdMembers($id_group);
                $group_messages = $modelGroupMsg->getAll($members);
                foreach ($group_messages as $key => $gmes) {
                    $row = DB::table('Users')->where('id', $gmes['members']['id_user'])->get()->toArray();
                    $group_messages[$key]['author'] = reset($row)->nick;
                    $group_messages[$key]['message'] = $group_messages[$key]['content'];
                    if (!isset($group_messages[$key]['date'])) {
                        $group_messages[$key]['date'] = '';
                    }
                }
                $all_messages = $group_messages;
            }
        } else {
            $modelMessages = new Messages();
            $modelMessages->id_author = Auth::user()->id;
            $modelMessages->message = $request->request->get('message');
            $modelMessages->save();

            $all_messages = $modelMessages->getAll();
            foreach ($all_messages as $key => $message) {
                $all_messages[$key]['author'] = $message['users']['nick'];
            }
        }
         $groups = $modelGroups->getAllUserGroups();
        return view('messages', compact('all_messages', 'groups', 'group_name'));
    }

}
