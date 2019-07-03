<?php

namespace App\Http\Controllers\Auth;

use App\Users;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use DB;
use Illuminate\Http\Request;
use Illuminate\Auth\Events\Registered;
use Illuminate\Support\Facades\Auth;
use App\User_interests;
use App\Members;

class RegisterController extends Controller {
    /*
      |--------------------------------------------------------------------------
      | Register Controller
      |--------------------------------------------------------------------------
      |
      | This controller handles the registration of new users as well as their
      | validation and creation. By default this controller uses a trait to
      | provide this functionality without requiring any additional code.
      |
     */

use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('guest');
    }

    public function register(Request $request) {

        $validator = $this->validator($request->all());
        if ($validator->fails()) {
            return redirect('register')
                            ->withErrors($validator);
        }
        event(new Registered($user = $this->create($request->all())));
        Auth::loginUsingId($user->id);
        $this->addInterestsGroups($request->all());
        return redirect('start');
    }

    public function index() {
        $groups = (DB::table('groups')->distinct()->get()->toArray() ? DB::table('groups')->distinct()->get()->toArray() : (Array) null);
        $interests = (DB::table('interests')->distinct()->get()->toArray() ? DB::table('interests')->distinct()->get()->toArray() : (Array) null);
        $data = [
            'all_groups' => $groups,
            'all_interests' => $interests
        ];
        return view('auth.register')->with($data);
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data) {
        $messages = [
            'required' => 'The :attribute field is required.',
            'uniqe' => ':attribute must be unique !',
            'confirmed' => ':Attributes are not the same!'
        ];
        return Validator::make($data, [
                    'nick' => ['required', 'string', 'max:255', 'unique:users'],
                    'login' => ['required', 'string', 'max:255'],
                    'password' => ['required', 'string', 'min:8', 'confirmed'],
                        ], $messages);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data) {
        return Users::create([
                    'nick' => $data['nick'],
                    'login' => $data['login'],
                    'password' => Hash::make($data['password']),
                    'role' => 1,
        ]);
    }
    protected function addInterestsGroups(array $data) {

        $user_interests = new User_interests();
        $member = new Members();
        $user = Auth::user()->id;
        if(isset($data['interests'])) {
            foreach($data['interests'] as $interest) {
                $user_interests::create([
                   'id_user' => $user,
                   'id_interest' => $interest 
                ]);
            }
        }
        if(isset($data['groups'])) {
            foreach($data['groups'] as $group) {
                $member::create([
                    'id_user' => $user,
                    'id_group' => $group
                ]);
            }
        }
    }

}
