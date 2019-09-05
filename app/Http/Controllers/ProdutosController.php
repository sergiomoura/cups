<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Produto;

class ProdutosController extends Controller
{
    public function index(){
        // Carrega todos os Produtos da tabela
        $produtos = Produto::all();

        // // Carrega o produto do id dado
        // $p = Produto::find(3);

        // Retornando a view listarProdutos.blade.php
        return view('listarProdutos',compact('produtos'));
    }
}
