<?php

class Tahun_anggaran extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
    }

    public function index()
    {
        $data['header'] = 'Tahun Anggaran';
        $data['pegawai'] = $this->session->userdata('profil');

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar');
        $this->load->view('beranda/index', $data);
        $this->load->view('template/footer');
    }
}
