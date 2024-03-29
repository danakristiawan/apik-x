<?php

use GuzzleHttp\Client;

class Sso extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->_client = new Client([
            'base_uri' => sso()['base_uri'],
            'verify' => false
        ]);
        $this->load->model('Data_hris_model', 'hris');
    }

    public function index()
    {
        if ($_GET['code']) {

            // get token
            $response = $this->_client->request('POST', sso()['token']['endpoint'], [
                'form_params' => [
                    'client_id' => sso()['authorize']['client_id'],
                    'grant_type' => sso()['authorize']['grant_type'],
                    'client_secret' => sso()['token']['client_secret'],
                    'code' => $_GET['code'],
                    'redirect_uri' => sso()['authorize']['redirect_uri']
                ]
            ]);
            $token =  json_decode($response->getBody()->getContents(), true);

            // get user info
            $access_token = $token['access_token'];
            if ($access_token) {
                $response = $this->_client->request('POST', sso()['userinfo']['endpoint'], [
                    'form_params' => [
                        'access_token' => $access_token
                    ]
                ]);
                if ($response) {
                    // regenerate id session mulai
                    $_SESSION['authenticated'] = true;
                    session_regenerate_id();
                    // regenerate id session selesai

                    $userinfo =  json_decode($response->getBody()->getContents(), true);
                    $newdata = [
                        'nip' => $userinfo['nip'],
                        'nik' => $userinfo['g2c_Nik'],
                        'id_token' => $token['id_token'],
                        'profil' => $this->hris->getProfil($userinfo['nip'])['Data'],
                        'kdsatker' => $this->hris->getProfil($userinfo['nip'])['Data']['KdSatker'],
                        'tahun' => date('Y')
                    ];
                    $this->session->set_userdata($newdata);
                    redirect('beranda');
                } else {
                    redirect('welcome');
                }
            } else {
                redirect('welcome');
            }
        } else {
            redirect('welcome');
        }
    }
}
