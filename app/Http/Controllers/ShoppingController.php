<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product; 
use App\Models\Category;
use App\Models\shoppingrico;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth; 

class ShoppingController extends Controller
{
    public function shopping() {
        $product = Product::all();
        return view('shopping_form', compact('product'));
    }

    public function shopping_process(Request $req){
        $req->validate([ 
            'name' => 'required|min:3|max:70',
            'whatsapp'=>'required|min:12|max:13',
            'address' => 'required|min:10|max:250',
            'product' => 'required',
            'qty' => 'required|integer|between: 1,10',
            'note' => 'nullable|min:5'
        ]); 
        $product = $req->product;
        $harga = Product::findOrFail($product);
        $save = new shoppingrico(); 
        $save-> buyer_name= $req->name; 
        $save->buyer_whatsapp = $req->whatsapp;
        $save->buyer_address = $req->address;
        $save->product_id =$req->product;
        $save->qty = $req->qty;
        $save->total = $req->qty*$harga['price'];
        $save->note = $req->note;


        $save->save(); 
        $req->session()->flash('msg','Shopping success, our admin will contact you soon'); 
        return redirect('shopping-form'); 
    }
    
}
