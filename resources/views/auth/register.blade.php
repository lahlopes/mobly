@extends('layout')
@section('pagina_titulo', 'Cadastro de usuário' )

@section('pagina_conteudo')

<div class="container">
    <div class="row">
        <div class="col l10 offset-l1 s12 m12">
            <h4>Cadastro de usuário</h4>
            <form method="POST" action="{{ url('/register') }}">
                {{ csrf_field() }}

                <div class="row">
                    <div class="input-field">
                        <input id="name" type="text" name="name" value="{{ old('name') }}" class="validate {{ $errors->has('name') ? ' invalid' : '' }}" required autofocus>
                        <label for="name" data-error="{{ $errors->has('name') ? $errors->first('name') : null }}" >Nome</label>
                    </div>
                </div>

                @include('auth._form_email')
                @include('auth._form_password')
                @include('auth._form_password_confirm')
                <h4>Dados de entrega</h4>
                <div class="row">
                    <input id="nm_entrega" type="text" name="nm_entrega" value="{{ old('nm_entrega') }}" class="validate {{ $errors->has('nm_entrega') ? ' invalid' : '' }}" required autofocus>
                    <label for="nm_entrega" data-error="{{ $errors->has('nm_entrega') ? $errors->first('nm_entrega') : null }}" >Nome</label>
                </div>
                <div class="row">
                    <input id="sobrenome_entrega" type="text" name="sobrenome_entrega" value="{{ old('sobrenome_entrega') }}" class="validate {{ $errors->has('sobrenome_entrega') ? ' invalid' : '' }}" required autofocus>
                    <label for="sobrenome_entrega" data-error="{{ $errors->has('sobrenome_entrega') ? $errors->first('sobrenome_entrega') : null }}" >Sobrenome</label>
                </div>
                <div class="row">
                    <input id="nr_telefone" type="text" name="nr_telefone" value="{{ old('nr_telefone') }}" class="validate {{ $errors->has('nr_telefone') ? ' invalid' : '' }}" required autofocus>
                    <label for="nr_telefone" data-error="{{ $errors->has('nr_telefone') ? $errors->first('nr_telefone') : null }}" >Telefone</label>

                    <input id="nr_celular" type="text" name="nr_celular" value="{{ old('nr_celular') }}" class="validate {{ $errors->has('nr_celular') ? ' invalid' : '' }}" required autofocus>
                    <label for="nr_celular" data-error="{{ $errors->has('nr_celular') ? $errors->first('nr_celular') : null }}" >Celular</label>
                </div>

                <div class="row">
                    <input id="nr_cep" type="text" name="nr_cep" value="{{ old('nr_cep') }}" class="validate {{ $errors->has('nr_cep') ? ' invalid' : '' }}" required autofocus>
                    <label for="nr_cep" data-error="{{ $errors->has('nr_cep') ? $errors->first('nr_cep') : null }}" >Cep</label>

                    <input id="ds_endereco" type="text" name="ds_endereco" value="{{ old('ds_endereco') }}" class="validate {{ $errors->has('ds_endereco') ? ' invalid' : '' }}" required autofocus>
                    <label for="ds_endereco" data-error="{{ $errors->has('ds_endereco') ? $errors->first('ds_endereco') : null }}" >Endereço</label>

                     <input id="nr_endereco" type="text" name="nr_endereco" value="{{ old('nr_endereco') }}" class="validate {{ $errors->has('nr_endereco') ? ' invalid' : '' }}" required autofocus>
                    <label for="nr_endereco" data-error="{{ $errors->has('nr_endereco') ? $errors->first('nr_endereco') : null }}" >Número Endereço</label>
                </div>

                <div class="row">
                    <input id="ds_complemento" type="text" name="ds_complemento" value="{{ old('ds_complemento') }}" class="validate {{ $errors->has('ds_complemento') ? ' invalid' : '' }}" required autofocus>
                    <label for="ds_complemento" data-error="{{ $errors->has('ds_complemento') ? $errors->first('ds_complemento') : null }}" >Complemento</label>

                    <input id="ds_referencia" type="text" name="ds_referencia" value="{{ old('ds_referencia') }}" class="validate {{ $errors->has('ds_referencia') ? ' invalid' : '' }}" required autofocus>
                    <label for="ds_referencia" data-error="{{ $errors->has('ds_referencia') ? $errors->first('ds_referencia') : null }}" >Referência</label>
                </div>

                <div class="row">
                    <input id="ds_bairro" type="text" name="ds_bairro" value="{{ old('ds_bairro') }}" class="validate {{ $errors->has('ds_bairro') ? ' invalid' : '' }}" required autofocus>
                    <label for="ds_bairro" data-error="{{ $errors->has('ds_bairro') ? $errors->first('ds_bairro') : null }}" >Bairro</label>

                    <input id="ds_cidade" type="text" name="ds_cidade" value="{{ old('ds_cidade') }}" class="validate {{ $errors->has('ds_cidade') ? ' invalid' : '' }}" required autofocus>
                    <label for="ds_cidade" data-error="{{ $errors->has('ds_cidade') ? $errors->first('ds_cidade') : null }}" >Cidade</label>

                    <input id="ds_estado" type="text" name="ds_estado" value="{{ old('ds_estado') }}" class="validate {{ $errors->has('ds_estado') ? ' invalid' : '' }}" required autofocus>
                    <label for="ds_estado" data-error="{{ $errors->has('ds_estado') ? $errors->first('ds_estado') : null }}" >Estado</label>
                </div>
                <div class="row">
                    <button type="submit" class="btn blue waves-effect waves-light col l6 m6 s12">
                        Cadastrar
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
