<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Produto;
use App\Categoria;

class HomeController extends Controller
{
    public function index(Request $request)
    {
       /* $registros = Produto::where([
            'ativo' => 'S'
            ])->get();*/

             $search = $request->search;
            $query = Produto::orderBy('nome', 'ASC');
            if(!empty($search)) {
                $query = Produto::where('nome', 'LIKE', '%'.$search.'%');
            }
            $registros = $query->paginate(6);

            $categorias = Categoria::all();

            return view('home.index')
                    ->with('registros', $registros)
                    ->with('categorias', $categorias)
                    ->with('search', $search);            


        //return view('home.index', compact('registros'));
    }

    public function produto($id = null)
    {
        if( !empty($id) ) {
            /*$registro = Produto::where([
                'id'    => $id,
                'ativo' => 'S'
                ])->first();*/

            $registro = DB::table('produtos')
            ->join('cor', 'cor.id', '=', 'produtos.id_cor')
            ->join('garantia', 'garantia.id', '=', 'produtos.id_garantia')
            ->join('material', 'material.id', '=', 'produtos.id_material')
            ->join('instrucoes', 'instrucoes.id', '=', 'produtos.id_instrucoes')
            ->join('tamanho', 'tamanho.id', '=', 'produtos.id_tamanho')
            ->select('produtos.*','cor.ds_cor','garantia.ds_garantia','material.ds_material','instrucoes.ds_instrucoes','tamanho.ds_tamanho')            
            ->where('produtos.id',$id)            
            ->get()->first();;                    

            if( !empty($registro) ) {
                return view('home.produto', compact('registro'));
            }
        }
        return redirect()->route('index');
    }    

    public function categoria($categoria = null)
    {
        //if( !empty($categoria) ) {
             
            $registros = DB::table('produtos')
            ->join('produto_categoria', 'produto_categoria.id_produto', '=', 'produtos.id')            
            ->select('produtos.*')
            ->where('id_categoria',$categoria)            
            ->get();
            
            //$registros = $query->paginate(5);
            $categorias = Categoria::all();

            return view('home.categoria')
                    ->with('registros', $registros)
                    ->with('categorias', $categorias)
                    ->with('id_categoria', $categoria);    
        //}
        //return redirect()->route('index');
    }
}
