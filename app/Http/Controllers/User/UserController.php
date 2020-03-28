<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Hash;
use Auth;
use \App\Models\User;
use DB;
use Exception;

class UserController extends Controller
{

    public function index()
    {
        if (Auth::Check()) {
            return redirect('/');
        }
        // Render Users view
        return view("user.login");
    }

    /**
     * To check user Authentication and Start session
     *
     * @param Request $request
     * @return type
     */
    public function login(Request $request)
    {
        try {

            $rules = array(
                'email'    => 'required|email', // make sure the email is an actual email
                'password' => 'required|min:8' // password can only be alphanumeric and has to be greater than 3 characters
            );

            // run the validation rules on the inputs from the form
            $validator = Validator::make($request->all(), $rules);


            // check form validation
            if (!$validator->fails()) {

                //Auth Conditions
                $userdata   = array(
                    'email'    => $request->get('email'),
                    'password' => $request->get('password'),
                    'status'   => 1
                );

                $user = User::where(['email' => $request->email])->first();

                if (Auth::validate($userdata)) {
                    $remember_login =  true;
                    $userLogin = Auth::login($user, $remember_login); //Firstly auth login then create token
                    $user = Auth::user();
                    $token =  $user->createToken('MyApp')->accessToken; //Token create By Laravel and also entry on oauth_access_token

                    //dd(Auth::user()); //Check user data after set auth

                    // Set session user log
                    $request->session()->put('sessionLog', [
                        'id' 		=> Auth::id(),
                        'email' 	=> $request->get('email'),
                        'token'     =>  'Bearer ' . $token,
                    ]);
                    $request->session()->flash('type', 'success');
                    $request->session()->flash('message', 'Logged in successfully');

                    //If logged in successfully redirected to User DashBoard
                    return redirect()->route('dashboard');
                } else {
                    $request->session()->flash('type', 'error');
                    $request->session()->flash('message', 'Invalid Username or password');
                }
            } else {
                // IF Email or Password is incorrect
                return Redirect::to('login')
                        ->withErrors($validator) // send back all errors to the login form
                        ->withInput($request->except('password')); // send back the input (not the password) so that we can repopulate the form
            }

            // Render Users view
            return view("user.login");
        } catch (\Exception $ex) {
            return $ex->getMessage();
        }
    }

    public function signup()
    {
        return view('user.signup');
    }

    public function addSignup(Request $request)
    {

        try{
            $rules = [
                'firstname'             => 'nullable|string|max:50',
                'lastname'              => 'nullable|string|max:50',
                'username'              => 'required|string|max:100|unique:users,username',
                'email'                 => 'required|string|email|max:100|unique:users,email',
                'mobile'                => 'required|numeric|unique:users,mobile',
                'password'              => 'required|string|min:8',
            ];
            $messages = [ 'email.unique' => 'Email is already registered.', 'username.unique' => 'Username already exist.', 'mobole.unique' => 'Mobile Number already registered.' ];
            $validator = Validator::make($request->all(), $rules, $messages);

            if ($validator->fails()) {
                return Redirect::to('signup')
                ->withErrors($validator)
                ->withInput($request->except('password'));
            }else{

              $user  = User::Create([
                'firstname'   => is_null($request->firstname) ? '' : $request->firstname,
                'lastname'    => is_null($request->lastname) ? '' : $request->lastname,
                'username'     => $request->username,
                'mobile'       => $request->mobile,
                'email'        => $request->email,
                'password'     => Hash::make($request->password),
                ]);

                //Save Data to Database
                $user->save();

                //Flash Message
                $request->session()->flash('type', 'success');
                $request->session()->flash('message', 'Thank You!! You have registered successfully in our website.');

                //If user registered successfully redirected to login page
                return Redirect::to('login');

          }
        } catch (\Exception $ex) {
            return $ex->getMessage();
        }
    }

    public function dashboard()
    {
        return view('user.welcome');
    }
}
