<?php

class Beranda extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Data_rekening_model', 'rekening');
        $this->load->model('Data_transaksi_model', 'transaksi');
        $this->load->model('Data_nota_model', 'nota');
    }

    public function index()
    {
        $data['header'] = 'Penting Hari Ini';
        $data['pegawai'] = $this->session->userdata('profil');
        $data['rekening'] = $this->rekening->getApp(sesi()['kdsatker'], 1);
        $data['count_l'] = $this->transaksi->countApp(sesi()['kdsatker'], sesi()['tahun'], 'L');
        $data['count_p'] = $this->transaksi->countApp(sesi()['kdsatker'], sesi()['tahun'], 'P');
        $data['count_nota_d_l'] = $this->nota->countDetail(sesi()['kdsatker'], sesi()['tahun'], 'D', 'L', 1);
        $data['count_nota_d_p'] = $this->nota->countDetail(sesi()['kdsatker'], sesi()['tahun'], 'D', 'P', 1);
        $data['count_nota_k_l'] = $this->nota->countDetail(sesi()['kdsatker'], sesi()['tahun'], 'K', 'L', 1);
        $data['count_nota_k_p'] = $this->nota->countDetail(sesi()['kdsatker'], sesi()['tahun'], 'K', 'P', 1);
        $data['count_buku_l'] = $this->nota->countApp(sesi()['kdsatker'], sesi()['tahun'], 'L', 2);
        $data['count_buku_p'] = $this->nota->countApp(sesi()['kdsatker'], sesi()['tahun'], 'P', 2);
        $data['grafik_bar'] = $this->transaksi->countBulan(sesi()['kdsatker'], sesi()['tahun']);
        $data['grafik_pie_l'] = $this->transaksi->countKeg(sesi()['kdsatker'], sesi()['tahun'], 'L');
        $data['grafik_pie_p'] = $this->transaksi->countKeg(sesi()['kdsatker'], sesi()['tahun'], 'P');
        $data['transaksi_l'] = $this->transaksi->sum(sesi()['kdsatker'], sesi()['tahun'], 'L');
        $data['transaksi_p'] = $this->transaksi->sum(sesi()['kdsatker'], sesi()['tahun'], 'P');

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar');
        $this->load->view('beranda/index', $data);
        $this->load->view('template/footer_grafik', $data);
    }
}
