<?php

defined('BASEPATH') or exit('No direct script access allowed');

function base_uri()
{
    $base_uri = 'https://esign.kemenkeu.go.id/api/sign/';
    return $base_uri;
}

function auth()
{
    $auth = ['alika_djkn', '4l!k4DJKN!@#'];
    return $auth;
}

function nomor_skp($kdsatker)
{
    $ci = get_instance();
    $no_urut_skp = $ci->nomor->getNomor($kdsatker)['no_urut_skp'];
    $ext_skp = $ci->nomor->getNomor($kdsatker)['ext_skp'];
    $next = intval($no_urut_skp) + 1;
    switch (strlen($next)) {
        case '1':
            $next = '0000' . $next;
            break;
        case '2':
            $next = '000' . $next;
            break;
        case '3':
            $next = '00' . $next;
            break;
        case '4':
            $next = '0' . $next;
            break;
        default:
            $next = $next;
            break;
    }
    return [
        'no_urut_skp' => $no_urut_skp,
        'ext_skp' => $ext_skp,
        'next' => $next
    ];
}

function nomor_daftar($kdsatker)
{
    $ci = get_instance();
    $no_urut_daftar = $ci->nomor->getNomor($kdsatker)['no_urut_daftar'];
    $ext_daftar = $ci->nomor->getNomor($kdsatker)['ext_daftar'];
    $next = intval($no_urut_daftar) + 1;
    switch (strlen($next)) {
        case '1':
            $next = '0000' . $next;
            break;
        case '2':
            $next = '000' . $next;
            break;
        case '3':
            $next = '00' . $next;
            break;
        case '4':
            $next = '0' . $next;
            break;
        default:
            $next = $next;
            break;
    }
    return [
        'no_urut_daftar' => $no_urut_daftar,
        'ext_daftar' => $ext_daftar,
        'next' => $next
    ];
}

function nomor_kp4($kdsatker)
{
    $ci = get_instance();
    $no_urut_kp4 = $ci->nomor->getNomor($kdsatker)['no_urut_kp4'];
    $ext_kp4 = $ci->nomor->getNomor($kdsatker)['ext_kp4'];
    $next = intval($no_urut_kp4) + 1;
    switch (strlen($next)) {
        case '1':
            $next = '0000' . $next;
            break;
        case '2':
            $next = '000' . $next;
            break;
        case '3':
            $next = '00' . $next;
            break;
        case '4':
            $next = '0' . $next;
            break;
        default:
            $next = $next;
            break;
    }
    return [
        'no_urut_kp4' => $no_urut_kp4,
        'ext_kp4' => $ext_kp4,
        'next' => $next
    ];
}

function nomor_pph($kdsatker)
{
    $ci = get_instance();
    $no_urut_pph = $ci->nomor->getNomor($kdsatker)['no_urut_pph'];
    $ext_pph = $ci->nomor->getNomor($kdsatker)['ext_pph'];
    $next = intval($no_urut_pph) + 1;
    switch (strlen($next)) {
        case '1':
            $next = '0000' . $next;
            break;
        case '2':
            $next = '000' . $next;
            break;
        case '3':
            $next = '00' . $next;
            break;
        case '4':
            $next = '0' . $next;
            break;
        default:
            $next = $next;
            break;
    }
    return [
        'no_urut_pph' => $no_urut_pph,
        'ext_pph' => $ext_pph,
        'next' => $next
    ];
}

function nomor_final($kdsatker)
{
    $ci = get_instance();
    $no_urut_final = $ci->nomor->getNomor($kdsatker)['no_urut_final'];
    $ext_final = $ci->nomor->getNomor($kdsatker)['ext_final'];
    $next = intval($no_urut_final) + 1;
    switch (strlen($next)) {
        case '1':
            $next = '0000' . $next;
            break;
        case '2':
            $next = '000' . $next;
            break;
        case '3':
            $next = '00' . $next;
            break;
        case '4':
            $next = '0' . $next;
            break;
        default:
            $next = $next;
            break;
    }
    return [
        'no_urut_final' => $no_urut_final,
        'ext_final' => $ext_final,
        'next' => $next
    ];
}

function tanggal($tgl)
{
    $bulan = date('m', $tgl);
    $daftar_bulan = [
        '01' => 'Januari',
        '02' => 'Februari',
        '03' => 'Maret',
        '04' => 'April',
        '05' => 'Mei',
        '06' => 'Juni',
        '07' => 'Juli',
        '08' => 'Agustus',
        '09' => 'September',
        '10' => 'Oktober',
        '11' => 'November',
        '12' => 'Desember',
    ];
    $nama_bulan = $daftar_bulan[$bulan];
    return date('d', $tgl) . ' ' . $nama_bulan . ' ' . date('Y', $tgl);
}
