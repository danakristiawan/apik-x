<?php

class Nota_penerimaan_lelang extends CI_Controller
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
        $data['header'] = 'Nota Penerimaan Lelang';

        // setting halaman
        $config['base_url'] = base_url('lelang/nota-penerimaan-lelang/index/');
        $config['total_rows'] = $this->nota->countApp(sesi()['kdsatker'], sesi()['tahun']);
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
            $data['nota'] = $this->nota->findApp(sesi()['kdsatker'], sesi()['tahun'], $data['urut'], $limit, $offset);
        } else {
            $data['nota'] = $this->nota->getApp(sesi()['kdsatker'], sesi()['tahun'], $limit, $offset);
        }

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar');
        $this->load->view('lelang/nota_penerimaan_lelang/index', $data);
        $this->load->view('template/footer');
    }

    private $rules_nota = [
        [
            'field' => 'nominal',
            'label' => 'Nominal',
            'rules' => 'required|numeric'
        ]
    ];

    public function create()
    {
        $data['header'] = 'Nota Penerimaan Lelang';

        $validation = $this->form_validation->set_rules($this->rules_nota);
        if ($validation->run()) {
            $data = [
                'kdsatker' => sesi()['kdsatker'],
                'bulan' => date('m'),
                'tahun' => sesi()['tahun'],
                'kdn' => '01',
                'urut' =>  '0004',
                'nominal' => htmlspecialchars($this->input->post('nominal', true)),
                'tanggal' => time(),
                'rekening_id' => 1
            ];
            $this->nota->create($data);
            $this->session->set_flashdata('success', 'Data berhasil ditambah.');
            redirect('lelang/nota-penerimaan-lelang');
        }

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar');
        $this->load->view('lelang/nota_penerimaan_lelang/create');
        $this->load->view('template/footer');
    }

    public function update($id = null)
    {
        $data['header'] = 'Nota Penerimaan Lelang';

        if (!isset($id)) show_404();
        $data['nota'] = $this->nota->getApp(sesi()['kdsatker'], sesi()['tahun'], 0, null, $id);

        $validation = $this->form_validation->set_rules($this->rules_nota);

        if ($validation->run()) {
            $data = [
                'nominal' =>  htmlspecialchars($this->input->post('nominal', true))
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

    public function delete($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->nota->delete($id)) {
            $this->session->set_flashdata('danger', 'Data berhasil dihapus.');
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

        if ($this->detail->delete($id)) {
            $this->session->set_flashdata('danger', 'Data berhasil dihapus.');
        }
        redirect('lelang/nota-penerimaan-lelang/detail/' . $nota_id . '');
    }

    private $rules_detail = [
        [
            'field' => 'nominal',
            'label' => 'Nominal',
            'rules' => 'required|numeric'
        ]
    ];

    public function create_detail($nota_id = null)
    {
        if (!isset($nota_id)) show_404();
        $data['header'] = 'Nota Penerimaan Lelang';

        $validation = $this->form_validation->set_rules($this->rules);
        if ($validation->run()) {
            $data = [
                'kdsatker' => sesi()['kdsatker'],
                'bulan' => date('m'),
                'tahun' => sesi()['tahun'],
                'kdn' => '01',
                'urut' =>  '0004',
                'nominal' => htmlspecialchars($this->input->post('nominal', true)),
                'tanggal' => time(),
                'rekening_id' => 1
            ];
            $this->nota->create($data);
            $this->session->set_flashdata('success', 'Data berhasil ditambah.');
            redirect('lelang/nota-penerimaan-lelang');
        }

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar');
        $this->load->view('lelang/nota_penerimaan_lelang/create');
        $this->load->view('template/footer');
    }
}
