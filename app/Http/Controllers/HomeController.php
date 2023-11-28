<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;


class HomeController extends Controller
{
    public function index(){
        return view ('/home');
    }
    public function catalog(Request $r){
        
        $random= Product::inRandomOrder()->get();
        return view('/home',compact('random'));
    } 
}
