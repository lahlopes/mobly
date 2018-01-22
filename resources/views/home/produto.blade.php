@extends('layout')
@section('pagina_titulo', $registro->nome )

@section('pagina_conteudo')

<div class="container">
    <div class="row">
        <h4>{{ $registro->nome }}</h4>
        <div class="divider"></div>
        <div class="section col s12 m6 l4">
            <div class="card small">
                <img class="col s12 m12 l12 materialboxed" data-caption="{{ $registro->nome }}" src="http://localhost/carrinhoDeCompras/public/images/{{ $registro->imagem }}" alt="{{ $registro->nome }}" title="{{ $registro->nome }}">
            </div>
        </div>
        <div class="section col s12 m6 l6">
            <h4 class="left col l6"> R$ {{ number_format($registro->valor, 2, ',', '.') }} </h4>
            <form method="POST" action="{{ route('carrinho.adicionar') }}">
                {{ csrf_field() }}
                <input type="hidden" name="id" value="{{ $registro->id }}">
                <button class="btn-large col l6 m6 s6 green accent-4 tooltipped" data-position="bottom" data-delay="50" data-tooltip="O produto será adicionado ao seu carrinho">Adicionar ao carrinho</button>   
            </form>
        </div>
        <div class="section col s12 m6 l6">
            {!! $registro->descricao !!}
        </div>
    </div>
    <div class="row">
<table width="100%">
                                                                                                                                        <tbody><tr class=" odd">
            <th width="45%" class="strong">Cor</th>
            <td width="55%">
                <span class="dynamic_option_color">{{$registro->ds_cor}}</span>
            </td>
            </tr>
            <tr class=" even">
                <th width="45%" class="strong">
                    Garantia                            </th>
                <td width="55%">
                    <span class="dynamic_option_product_warranty">{{$registro->ds_garantia}}</span>
                </td>
            </tr>
                                                                                                                                <tr class=" odd">
                <th width="45%" class="strong">
                    Instruções/Cuidados                            </th>
                <td width="55%">
                    <span class="dynamic_option_product_instructions">{{$registro->ds_instrucoes}}</span>
                </td>
            </tr>
                                                                                            <tr class=" even">
                <th width="45%" class="strong">
                    Modelo                            </th>
                <td width="55%">
                    <span class="dynamic_option_model">BALCÃO FORNO E MICRO</span>
                </td>
            </tr>
                                                                                            <tr class=" odd">
                <th width="45%" class="strong">
                    Material                            </th>
                <td width="55%">
                    <span class="dynamic_option_material">{{$registro->ds_material}}</span>
                </td>
            </tr>
                                                                                            <tr class=" even">
                <th width="45%" class="strong">
                    Descrição do Tamanho                            </th>
                <td width="55%">
                    <span class="dynamic_option_size_description">{{$registro->ds_tamanho}}</span>
                </td>
            </tr>

                                    </tbody></table>
    </div>
</div>
@endsection