<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function getIndex(){
        return view('index');
    }

    public function getCart(){
        return view('cart');
    }

    public function getCheckout(){
        return view('checkout');
    }

    public function getShop(){
        return view('shop');
    }

    public function getProductDetails(){
        return view('product-details');
    }
}
