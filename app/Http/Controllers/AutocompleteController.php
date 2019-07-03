<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use App\Messages;
use App\User_interests;
use App\Groups;
use App\Members;
use App\Interests;
use App\Group_messages;
use DB;
use Illuminate\Http\Request;


class AutocompleteController extends Controller
{
    private $_modelGroups;
    
    public function __construct() {
        $this->_modelGroups = new Groups();
    }
    
    
   public function groups(Request $request) {
       
       if(!$request->ajax()) {
           die("An error in ajax request");
       }
       if(empty($request->all())) {
           return json_encode(null);
       }
       $request_data = $request->get('groups');
       $group_interests = DB::table('group_interests')->whereIn('id_interest',$request_data)->get()->toArray();
       $valid_format_groups = array();
       foreach($group_interests as $group) {
           $row = array();
           array_push($row,$group);
           array_push($valid_format_groups,$row);
       };
       $groups = $this->_modelGroups->getByGroupInterests($valid_format_groups);
       return json_encode($groups);

   }
   public function interests(Request $request) {
       
       if(!$request->ajax()) {
           die("An error in ajax request");
       }
       if(empty($request->all())) {
           return json_encode(null);
       }
       $request_data = $request->get('group');
       $group_interests = DB::table('group_interests')->where('id_group',$request_data)->get()->toArray();
       $valid_format_groups = array();
       foreach($group_interests as $group) {
           
           $interest = DB::table('interests')->where('idInterests',$group->id_interest)->get()->toArray();
//           $row = array();
//           array_push($row,$interest);
           array_push($valid_format_groups,reset($interest));
       };
//       $groups = $this->_modelGroups->getByGroupInterests($valid_format_groups);
       return json_encode($valid_format_groups);

   }
}
