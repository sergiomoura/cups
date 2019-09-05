<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'PagesController@getIndex');
Route::get('/cart', 'PagesController@getCart');
Route::get('/checkout', 'PagesController@getCheckout');
Route::get('/product-details', 'PagesController@getProductDetails');
Route::get('/shop', 'PagesController@getShop');

Route::get('/admin/produtos','ProdutosController@index');