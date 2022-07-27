<?php

class Pembukuan_piutang extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Data_nota_model', 'nota');
        $this->load->model('Data_detail_model', 'detail');
    }

    public function index()
    {
        $data['header'] = 'Pembukuan Piutang';

        // setting halaman
        $config['base_url'] = base_url('piutang/pembukuan-piutang/index/');
        $config['total_rows'] = $this->nota->countApp(sesi()['kdsatker'], sesi()['tahun'], 'P', 2);
        $config['per_page'] = 10;
        $config["num_links"] = 3;
        $this->pagination->initialize($config);
        $data['pagination'] = $this->pagination->create_links();
        $data['page'] = $this->uri->segment(4) ? $this->uri->segment(4) : 0;
        $limit = $config["per_page"];
        $offset = $data['page'];

        // menangkap pencarian jika ada
        $data['urut'] = $this->input->post('urut');

        // pilih tampilan data, semua atau berdasarkan pencarian
        if ($data['urut']) {
            $data['nota'] = $this->nota->findApp(sesi()['kdsatker'], sesi()['tahun'], 'P', 2, $data['urut'], $limit, $offset);
        } else {
            $data['nota'] = $this->nota->getApp(sesi()['kdsatker'], sesi()['tahun'], 'P', 2, $limit, $offset);
        }

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar');
        $this->load->view('piutang/pembukuan_piutang/index', $data);
        $this->load->view('template/footer');
    }

    public function process($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->nota->update(['sts' => 3, 'tgl_buku' => time()], $id)) {
            $this->session->set_flashdata('success', 'Data berhasil diproses.');
        }
        redirect('piutang/pembukuan-piutang');
    }

    public function reject($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->nota->update(['sts' => 1, 'tgl_sah' => 0], $id)) {
            $this->session->set_flashdata('success', 'Data berhasil ditolak.');
        }
        redirect('piutang/pembukuan-piutang');
    }

    public function detail($nota_id = null)
    {
        if (!isset($nota_id)) show_404();

        $data['header'] = 'Pembukuan Piutang';
        $data['nota_id'] = $nota_id;

        // setting halaman
        $config['base_url'] = base_url('piutang/pembukuan-piutang/detail/' . $nota_id . '/');
        $config['total_rows'] = $this->detail->countNotaId($nota_id);
        $config['per_page'] = 10;
        $config["num_links"] = 3;
        $this->pagination->initialize($config);
        $data['pagination'] = $this->pagination->create_links();
        $data['page'] = $this->uri->segment(5) ? $this->uri->segment(5) : 0;
        $limit = $config["per_page"];
        $offset = $data['page'];

        // menangkap pencarian jika ada
        $data['urut'] = $this->input->post('urut');

        // pilih tampilan data, semua atau berdasarkan pencarian
        if ($data['urut']) {
            $data['detail'] = $this->detail->findNotaId($data['urut'], $nota_id, $limit, $offset);
        } else {
            $data['detail'] = $this->detail->getNotaId($nota_id, $limit, $offset);
        }

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar');
        $this->load->view('piutang/pembukuan_piutang/detail', $data);
        $this->load->view('template/footer');
    }
}
