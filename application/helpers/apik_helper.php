<?php

defined('BASEPATH') or exit('No direct script access allowed');

function is_logged_in()
{
    $ci = get_instance();
    if (!$ci->session->userdata('nip')) {
        redirect('welcome');
    }
}

function sso()
{
    return [
        'base_uri' => 'https://demo-account.kemenkeu.go.id/connect/',
        'authorize' => [
            'endpoint' => 'authorize',
            'grant_type' => 'authorization_code',
            'response_type' => 'code',
            'client_id' => 'alika.djkn',
            'scope' => 'profile openid gateway jabatan.hris',
            'nonce' => '123456',
            'state' => '123456',
            'redirect_uri' => 'http://10.10.1.76/v2021/sso'
        ],
        'token' => [
            'endpoint' => 'token',
            'client_secret' => '3d8504960ad348a09c5a1aecd1373927'
        ],
        'userinfo' => [
            'endpoint' => 'userinfo'
        ],
        'endsession' => [
            'endpoint' => 'endsession'
        ]
    ];
}

function sesi()
{
    $ci = get_instance();
    return [
        'kdsatker' => $ci->session->userdata('kdsatker'),
        'tahun' => $ci->session->userdata('tahun')
    ];
}

function urut_nota()
{
    $ci = get_instance();
    $ci->load->model('Ref_satker_model', 'satker');
    $urut_nota = $ci->satker->getKode(sesi()['kdsatker'])['urut_nota'];
    $urut_nota_next = intval($urut_nota) + 1;
    switch (strlen($urut_nota_next)) {
        case '1':
            $urut_nota_next = '000' . $urut_nota_next;
            break;
        case '2':
            $urut_nota_next = '00' . $urut_nota_next;
            break;
        case '3':
            $urut_nota_next = '0' . $urut_nota_next;
            break;
        default:
            $urut_nota_next = $urut_nota_next;
            break;
    }
    return [
        'urut_nota' => $urut_nota,
        'urut_nota_next' => $urut_nota_next
    ];
}
