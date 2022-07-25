<?php

class Transaksi_lelang extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Data_transaksi_model', 'transaksi');
    }

    public function index()
    {
        $data['header'] = 'Transaksi Lelang';

        // setting halaman
        $config['base_url'] = base_url('lelang/transaksi-lelang/index/');
        $config['total_rows'] = $this->transaksi->countApp(sesi()['kdsatker'], sesi()['tahun']);
        $config['per_page'] = 10;
        $config["num_links"] = 3;
        $this->pagination->initialize($config);
        $data['pagination'] = $this->pagination->create_links();
        $data['page'] = $this->uri->segment(4) ? $this->uri->segment(4) : 0;
        $limit = $config["per_page"];
        $offset = $data['page'];

        // menangkap pencarian jika ada
        $data['uraian'] = $this->input->post('uraian');

        // pilih tampilan data, semua atau berdasarkan pencarian
        if ($data['uraian']) {
            $data['transaksi'] = $this->transaksi->findApp(sesi()['kdsatker'], sesi()['tahun'], $data['uraian'], $limit, $offset);
        } else {
            $data['transaksi'] = $this->transaksi->getApp(sesi()['kdsatker'], sesi()['tahun'], $limit, $offset);
        }

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar');
        $this->load->view('lelang/transaksi_lelang/index', $data);
        $this->load->view('template/footer');
    }
}
