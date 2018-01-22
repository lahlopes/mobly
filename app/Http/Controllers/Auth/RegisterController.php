<?php

namespace App\Http\Controllers\Auth;

use App\User;
use Validator;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after login / registration.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6|confirmed',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return User
     */
    protected function create(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'nm_entrega' => $data['nm_entrega'],
            'sobrenome_entrega' => $data['sobrenome_entrega'],
            'nr_telefone' => $data['nr_telefone'],
            'nr_celular' => $data['nr_celular'],
            'nr_cep' => $data['nr_cep'],
            'nr_endereco' => $data['nr_endereco'],
            'ds_endereco' => $data['ds_endereco'],
            'ds_complemento' => $data['ds_complemento'],
            'ds_referencia' => $data['ds_referencia'],
            'ds_estado' => $data['ds_estado'],
            'ds_bairro' => $data['ds_bairro'],
            'ds_cidade' => $data['ds_cidade']
        ]);
    }
}
