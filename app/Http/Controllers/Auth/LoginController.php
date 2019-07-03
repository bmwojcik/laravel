<?php
namespace App\Http\Controllers\Auth;
use App\Users;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Hash;
class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {  
        $this->middleware('guest')->except('logout');
    }
    
//      public function username()
//    {
//        $identity  = request()->get('identity');
//        $fieldName = filter_var($identity, FILTER_VALIDATE_EMAIL) ? 'email' : 'username';
//        request()->merge([$fieldName => $identity]);
//        return $fieldName;
//    }
//    /**
//     * Validate the user login.
//     * @param Request $request
//     */
//    protected function validateLogin(Request $request)
//    {
//        $this->validate(
//            $request,
//            [
//                'identity' => 'required|string',
//                'password' => 'required|string',
//            ],
//            [
//                'identity.required' => 'Username or email is required',
//                'password.required' => 'Password is required',
//            ]
//        );
//    }
    public function postLogin(Request $request)
{
        $password = Hash::make('password');

    // Create the array using the values from the session
    $credentials = [
        'login' => $request->get('login'),
        'password' => $request->get('password'),
    ];

    // Attempt to login the user
    if (Auth::attempt($credentials)) {

          Auth::loginUsingId(Auth::user()->id);

       return redirect()->route('home');
        return view('home');
    }

    return redirect()->route('login');
}
public function showLoginForm()
{
    $view = property_exists($this, 'loginView')
        ? $this->loginView : 'auth.authenticate';

    if (view()->exists($view)) {
        return view($view);
    }
    return view('auth.login');
}
}
