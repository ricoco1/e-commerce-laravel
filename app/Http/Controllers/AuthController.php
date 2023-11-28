<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
class AuthController extends Controller
{
    public function register(){
        return view('register');
    }
    public function register_process(Request $r){
        $r->validate([
            'name'=>'required|min:3|max:30',
            'email'=>'required|email|unique:users,email',
            'password' => 'required|confirmed|min:6',
        ]);
        
        $insert = new User();
        $insert->name=$r->name;
        $insert->email=$r->email;
        $insert->password=Hash::make($r->password);
        $insert->save();

        $r->session()->flash('msg','Registration Successful.');
        return redirect('register');
    }
    public function login(){
        return view('login');
    }
    public function login_process(Request $r){
        $r->validate([
            'email'=>'required|email|min:6|max:50|exists:users,email',
            'password'=>'required|min:6|max:20',
        ]);


        $user=User::where('email',$r->email)->first();

        if (Hash::check($r->password,$user->password)) {
           Auth::attempt(['email' => $r->email, 'password' => $r->password]);
           return redirect('/');
        }else{
            return redirect()->back()->withErrors(['password'=>'Password is invalid'])->withInput();
        }
    }
    public function logout(){
        Auth::logout();
        return redirect('/');
    }
    public function profile() {
        return view('profile');
    }

    public function profile_process(Request $req) {
        $iduser = Auth::user()->id;
        $req->validate([
            "name" => "required|min:3|max:30",
            "email" => "required|min:5|max:50|email|unique:users,email, $iduser",
            "password" => "nullable|confirmed|min:6",
            "old_password" => "nullable|min:6",
        ]); 

        $new = User::findOrFail($iduser);
        $new->name = $req->name;
        $new->email = $req->email;
        if($req->password) {
            if(Hash::check($req->old_password, $new->password)) {
                $new->password = Hash::make($req->password);
            }else {
                return redirect('profile')
                ->withErrors(['password'=>'Old Password Is Wrong']);
                
            }
        }
        // $new->password = Hash::make($req->password);
        
        $new->save();
        $req->session()->flash('message','Process Successful.');
        return redirect('profile');

    }
}
