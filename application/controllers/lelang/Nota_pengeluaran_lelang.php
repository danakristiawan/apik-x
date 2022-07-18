<?php

class Nota_pengeluaran_lelang extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
    }

    public function index()
    {
        $data['header'] = 'Nota Pengeluaran Lelang';
        $data['pegawai'] = $this->session->userdata('profil');

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar');
        $this->load->view('lelang/nota_pengeluaran_lelang/index', $data);
        $this->load->view('template/footer');
    }
}
