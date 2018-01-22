@extends('layout')
@section('pagina_titulo', 'HOME')

@section('pagina_conteudo')

<div class="container">

        <div class="row">
            
            <div id="input-busca" class="col s12 m12 l12">
                <form method="GET" action="{{ url('') }}">
                    <div class="col s10 m10 l10">          
                        <input type="text" id="example-input2-group2" name="search" class="form-control" placeholder="Buscar">                        
                    </div>
					<div class="col s2 m2 l2">
					<span class="input-group-btn">
                            <button style="margin-top:10px" type="submit" class="btn waves-effect waves-light btn-primary">Buscar</button>							
                        </span>  
					</div>					
                </form>
            </div>
        </div>
		<div class="row">
	 <ul class="right hide-on-med-and-down">
		<li>    
			<a class="dropdown-button" href="#!" data-activates="dropdown-categorias">Por Categoria <i class="material-icons right">arrow_drop_down</i></a>
			<ul id="dropdown-categorias" class="dropdown-content">
					<li class="divider"></li>
					@foreach($categorias as $categoria)					
					<li>
						<a href="{{ route('categoria', $categoria->id_categoria) }}">
							{{ $categoria->nome }}
						</a>
					</li>
					@endforeach	
					
				</ul>
		</li>
		</ul>
	
	</div>
	<div class="row">
	@foreach($registros as $registro)
		<div class="col s12 m6 l4">
			<div class="card medium">
				<div class="card-image">
					<img src="http://localhost/carrinhoDeCompras/public/images/{{ $registro->imagem }}">
				</div>
				<div class="card-content">
					<span class="card-title grey-text text-darken-4 truncate" title="{{ $registro->nome }}">{{ $registro->nome }}</span>
					<p>R$ {{ number_format($registro->valor, 2, ',', '.') }}</p>
				</div>
				<div class="card-action">
					<a class="blue-text" href="{{ route('produto', $registro->id) }}">Ver mais</a>
				</div>
			</div>
		</div>
	@endforeach	
	</div>
	<div class="row">
	
	</div>
</div>

@endsection