<?php

class Nota_penerimaan_lelang extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('Data_nota_model', 'nota');
        $this->load->model('Data_detail_model', 'detail');
        $this->load->model('Ref_nota_model', 'refnota');
        $this->load->model('Ref_satker_model', 'satker');
        $this->load->model('Data_transaksi_model', 'transaksi');
    }

    public function index()
    {
        $data['header'] = 'Nota Penerimaan Lelang';

        // setting halaman
        $config['base_url'] = base_url('lelang/nota-penerimaan-lelang/index/');
        $config['total_rows'] = $this->nota->countDetail(sesi()['kdsatker'], sesi()['tahun'], 'D', 'L', 0);
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
            $data['nota'] = $this->nota->findDetail(sesi()['kdsatker'], sesi()['tahun'], 'D', 'L', 0, $data['urut'], $limit, $offset);
        } else {
            $data['nota'] = $this->nota->getDetail(sesi()['kdsatker'], sesi()['tahun'], 'D', 'L', 0, $limit, $offset);
        }

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar');
        $this->load->view('lelang/nota_penerimaan_lelang/index', $data);
        $this->load->view('template/footer');
    }

    private $rules = [
        [
            'field' => 'kode',
            'label' => 'kode',
            'rules' => 'required'
        ]
    ];

    public function create()
    {
        $data['header'] = 'Nota Penerimaan Lelang';
        $data['refnota'] = $this->refnota->getKegJns('L', 'D');

        $validation = $this->form_validation->set_rules($this->rules);
        if ($validation->run()) {
            $kode = htmlspecialchars($this->input->post('kode', true));
            $kdn = substr($kode, 0, 2);
            $ket = substr($kode, 2, strlen(trim($kode)) - 2);
            $data = [
                'kdsatker' => sesi()['kdsatker'],
                'bulan' => date('m'),
                'tahun' => sesi()['tahun'],
                'kdn' => $kdn,
                'urut' =>  urut_nota()['urut_nota'],
                'jumlah' => 0,
                'nominal' => 0,
                'tanggal' => time(),
                'ket' => $ket,
                'keg' => 'L'
            ];
            $this->nota->create($data);
            $this->satker->updateKode(['urut_nota' => urut_nota()['urut_nota_next']], sesi()['kdsatker']);
            $this->session->set_flashdata('success', 'Data berhasil ditambah.');
            redirect('lelang/nota-penerimaan-lelang');
        }

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar');
        $this->load->view('lelang/nota_penerimaan_lelang/create');
        $this->load->view('template/footer');
    }

    public function update($id = null, $jumlah = 1)
    {
        if (!isset($id)) show_404();

        if ($jumlah > 0) {
            $this->session->set_flashdata('danger', 'Data tidak dapat diubah, pada detail nota terdapat ' . $jumlah . ' transaksi yang belum dihapus.');
            redirect('lelang/nota-penerimaan-lelang');
        } else {
            $data['header'] = 'Nota Penerimaan Lelang';
            $data['nota'] = $this->nota->getApp(sesi()['kdsatker'], sesi()['tahun'], 'L', 0, 0, null, $id);
            $data['refnota'] = $this->refnota->getKegJns('L', 'D');

            $validation = $this->form_validation->set_rules($this->rules);

            if ($validation->run()) {
                $kode = htmlspecialchars($this->input->post('kode', true));
                $kdn = substr($kode, 0, 2);
                $ket = substr($kode, 2, strlen(trim($kode)) - 2);
                $data = [
                    'kdn' => $kdn,
                    'ket' => $ket
                ];
                $this->nota->update($data, $id);
                $this->session->set_flashdata('success', 'Data berhasil diubah.');
                redirect('lelang/nota-penerimaan-lelang');
            }

            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar');
            $this->load->view('lelang/nota_penerimaan_lelang/update', $data);
            $this->load->view('template/footer');
        }
    }

    public function delete($id = null, $jumlah = 1)
    {
        if (!isset($id)) show_404();

        if ($jumlah > 0) {
            $this->session->set_flashdata('danger', 'Data tidak dapat dihapus, pada detail nota terdapat ' . $jumlah . ' transaksi yang belum dihapus.');
            redirect('lelang/nota-penerimaan-lelang');
        } else {
            if ($this->nota->delete($id)) {
                $this->session->set_flashdata('success', 'Data berhasil dihapus.');
            }
        }
        redirect('lelang/nota-penerimaan-lelang');
    }

    public function process($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->nota->update(['sts' => 1, 'tgl_kirim' => time()], $id)) {
            $detail = $this->detail->getNotaId($id);
            foreach ($detail as $r) {
                $this->transaksi->update(['nota_d_id' => $id], $r['transaksi_id']);
            }
            $this->session->set_flashdata('success', 'Data berhasil diproses.');
        }
        redirect('lelang/nota-penerimaan-lelang');
    }

    public function detail($nota_id = null)
    {
        if (!isset($nota_id)) show_404();

        $data['header'] = 'Nota Penerimaan Lelang';
        $data['nota_id'] = $nota_id;

        // setting halaman
        $config['base_url'] = base_url('lelang/nota-penerimaan-lelang/detail/' . $nota_id . '/');
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
        $this->load->view('lelang/nota_penerimaan_lelang/detail', $data);
        $this->load->view('template/footer');
    }

    public function delete_detail($nota_id = null, $id = null)
    {
        if (!isset($id)) show_404();

        $detail = $this->detail->get($id);
        $transaksi_id = $detail['transaksi_id'];

        if ($this->detail->delete($id)) {
            $this->transaksi->update(['sts' => 0], $transaksi_id);
            $jumlah = $this->detail->countNotaId($nota_id);
            $nominal = $this->detail->sumNotaId($nota_id)['nominal'];
            $this->nota->update(['jumlah' => $jumlah, 'nominal' => $nominal], $nota_id);
            $this->session->set_flashdata('success', 'Data berhasil dihapus.');
        }
        redirect('lelang/nota-penerimaan-lelang/detail/' . $nota_id . '');
    }

    public function create_detail($nota_id = null)
    {
        if (!isset($nota_id)) show_404();

        $data['header'] = 'Nota Penerimaan Lelang';
        $data['nota_id'] = $nota_id;

        $kode = $this->nota->get($nota_id)['kdn'];
        $refnota = $this->refnota->getKode($kode);
        $kdk = $refnota['kdk'];
        $kdj = $refnota['kdj'];

        // setting halaman
        $config['base_url'] = base_url('lelang/nota-penerimaan-lelang/create-detail/' . $nota_id . '/');
        $config['total_rows'] = $this->transaksi->countNota(sesi()['kdsatker'], sesi()['tahun'], $kdk, $kdj, 'D', 'L', 0);
        $config['per_page'] = 10;
        $config["num_links"] = 3;
        $this->pagination->initialize($config);
        $data['pagination'] = $this->pagination->create_links();
        $data['page'] = $this->uri->segment(5) ? $this->uri->segment(5) : 0;
        $limit = $config["per_page"];
        $offset = $data['page'];

        // menangkap pencarian jika ada
        $data['uraian'] = $this->input->post('uraian');

        // pilih tampilan data, semua atau berdasarkan pencarian
        if ($data['uraian']) {
            $data['transaksi'] = $this->transaksi->findNota(sesi()['kdsatker'], sesi()['tahun'], $kdk, $kdj, 'D', 'L', 0, $data['uraian'], $limit, $offset);
        } else {
            $data['transaksi'] = $this->transaksi->getNota(sesi()['kdsatker'], sesi()['tahun'], $kdk, $kdj, 'D', 'L', 0, $limit, $offset);
        }

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar');
        $this->load->view('lelang/nota_penerimaan_lelang/create_detail', $data);
        $this->load->view('template/footer');
    }

    public function add_detail($nota_id = null, $id = null)
    {
        if (!isset($nota_id)) show_404();
        if (!isset($id)) show_404();

        if ($this->transaksi->update(['sts' => 1], $id)) {
            $t = $this->transaksi->get($id);
            $data = [
                'kdsatker' => $t['kdsatker'],
                'bulan' => $t['bulan'],
                'tahun' => $t['tahun'],
                'kdk' => $t['kdk'],
                'kdj' =>  $t['kdj'],
                'urut' => $t['urut'],
                'nominal' => $t['nominal'],
                'nota_id' => $nota_id,
                'transaksi_id' => $t['id'],
                'sts' => 0
            ];
            $this->detail->create($data);

            $jumlah = $this->detail->countNotaId($nota_id);
            $nominal = $this->detail->sumNotaId($nota_id)['nominal'];
            $this->nota->update(['jumlah' => $jumlah, 'nominal' => $nominal], $nota_id);
            $this->session->set_flashdata('success', 'Data berhasil dipilih.');
        }
        redirect('lelang/nota-penerimaan-lelang/create-detail/' . $nota_id . '');
    }
}
