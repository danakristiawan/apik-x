<?php
defined('BASEPATH') or exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;

class Data extends RestController
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('Data_detail_model', 'detail');
        $this->load->model('Data_nota_model', 'nota');
        $this->load->model('Data_rekening_model', 'rekening');
        $this->load->model('Data_transaksi_model', 'transaksi');
    }


    // -----------------------------------
    // detail (1)
    // -----------------------------------

    public function count_detail_get()
    {
        $data = $this->detail->count();
        $this->response($data, 200);
    }

    public function detail_get()
    {
        $id = $this->get('id');
        $keyword = $this->get('keyword');
        $limit = $this->get('limit');
        $offset = $this->get('offset');
        if ($keyword) {
            $data = $this->detail->find($keyword, $limit, $offset);
        } else {
            $data = $this->detail->get($id, $limit, $offset);
        }
        $this->response($data, 200);
    }

    public function detail_post()
    {
        $data = [
            'kdsatker' => $this->post('kdsatker'),
            'bulan' => $this->post('bulan'),
            'tahun' => $this->post('tahun'),
            'kdk' => $this->post('kdk'),
            'kdj' => $this->post('kdj'),
            'urut' => $this->post('urut'),
            'nominal' => $this->post('nominal'),
            'nota_id' => $this->post('nota_id'),
            'tansaksi_id' => $this->post('tansaksi_id'),
            'sts' => $this->post('sts')
        ];
        if ($this->post('nip') === null | $this->post('nip') === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were added'
            ], 404);
        } else {
            $this->detail->create($data);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully added'
            ], 200);
        }
    }

    public function detail_put()
    {
        $id = $this->put('id');
        $data = [
            'kdsatker' => $this->put('kdsatker'),
            'bulan' => $this->put('bulan'),
            'tahun' => $this->put('tahun'),
            'kdk' => $this->put('kdk'),
            'kdj' => $this->put('kdj'),
            'urut' => $this->put('urut'),
            'nominal' => $this->put('nominal'),
            'nota_id' => $this->put('nota_id'),
            'tansaksi_id' => $this->put('tansaksi_id'),
            'sts' => $this->put('sts')
        ];
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were changed'
            ], 404);
        } else {
            $this->detail->update($data, $id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully changed'
            ], 200);
        }
    }

    public function detail_delete()
    {
        $id = $this->delete('id');
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were deleted'
            ], 404);
        } else {
            $this->detail->delete($id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully deleted'
            ], 200);
        }
    }

    public function empty_detail_delete()
    {
        $this->detail->empty();
        $this->response([
            'status' => true,
            'message' => 'Data was successfully deleted'
        ], 200);
    }

    // -----------------------------------
    // nota (2)
    // -----------------------------------

    public function count_nota_get()
    {
        $data = $this->nota->count();
        $this->response($data, 200);
    }

    public function nota_get()
    {
        $id = $this->get('id');
        $keyword = $this->get('keyword');
        $limit = $this->get('limit');
        $offset = $this->get('offset');
        if ($keyword) {
            $data = $this->nota->find($keyword, $limit, $offset);
        } else {
            $data = $this->nota->get($id, $limit, $offset);
        }
        $this->response($data, 200);
    }

    public function nota_post()
    {
        $data = [
            'kdsatker' => $this->post('kdsatker'),
            'bulan' => $this->post('bulan'),
            'tahun' => $this->post('tahun'),
            'kdn' => $this->post('kdn'),
            'jns' => $this->post('jns'),
            'urut' => $this->post('urut'),
            'jumlah' => $this->post('jumlah'),
            'nominal' => $this->post('nominal'),
            'tanggal' => $this->post('tanggal'),
            'keg' => $this->post('keg'),
            'sts' => $this->post('sts'),
            'ket' => $this->post('ket'),
            'tgl_kirim' => $this->post('tgl_kirim'),
            'tgl_sah' => $this->post('tgl_sah'),
            'tgl_buku' => $this->post('tgl_buku')
        ];
        if ($this->post('nip') === null | $this->post('nip') === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were added'
            ], 404);
        } else {
            $this->nota->create($data);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully added'
            ], 200);
        }
    }

    public function nota_put()
    {
        $id = $this->put('id');
        $data = [
            'kdsatker' => $this->put('kdsatker'),
            'bulan' => $this->put('bulan'),
            'tahun' => $this->put('tahun'),
            'kdn' => $this->put('kdn'),
            'jns' => $this->put('jns'),
            'urut' => $this->put('urut'),
            'jumlah' => $this->put('jumlah'),
            'nominal' => $this->put('nominal'),
            'tanggal' => $this->put('tanggal'),
            'keg' => $this->put('keg'),
            'sts' => $this->put('sts'),
            'ket' => $this->put('ket'),
            'tgl_kirim' => $this->put('tgl_kirim'),
            'tgl_sah' => $this->put('tgl_sah'),
            'tgl_buku' => $this->put('tgl_buku')
        ];
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were changed'
            ], 404);
        } else {
            $this->nota->update($data, $id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully changed'
            ], 200);
        }
    }

    public function nota_delete()
    {
        $id = $this->delete('id');
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were deleted'
            ], 404);
        } else {
            $this->nota->delete($id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully deleted'
            ], 200);
        }
    }

    public function empty_nota_delete()
    {
        $this->nota->empty();
        $this->response([
            'status' => true,
            'message' => 'Data was successfully deleted'
        ], 200);
    }

    // -----------------------------------
    // rekening (3)
    // -----------------------------------

    public function count_rekening_get()
    {
        $data = $this->rekening->count();
        $this->response($data, 200);
    }

    public function rekening_get()
    {
        $id = $this->get('id');
        $keyword = $this->get('keyword');
        $limit = $this->get('limit');
        $offset = $this->get('offset');
        if ($keyword) {
            $data = $this->rekening->find($keyword, $limit, $offset);
        } else {
            $data = $this->rekening->get($id, $limit, $offset);
        }
        $this->response($data, 200);
    }

    public function rekening_post()
    {
        $data = [
            'kdsatker' => $this->post('kdsatker'),
            'nomor' => $this->post('nomor'),
            'nama_bank' => $this->post('nama_bank'),
            'atas_nama' => $this->post('atas_nama'),
            'ket' => $this->post('ket'),
            'surat_izin' => $this->post('surat_izin'),
            'sts' => $this->post('sts')
        ];
        if ($this->post('nip') === null | $this->post('nip') === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were added'
            ], 404);
        } else {
            $this->rekening->create($data);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully added'
            ], 200);
        }
    }

    public function rekening_put()
    {
        $id = $this->put('id');
        $data = [
            'kdsatker' => $this->put('kdsatker'),
            'nomor' => $this->put('nomor'),
            'nama_bank' => $this->put('nama_bank'),
            'atas_nama' => $this->put('atas_nama'),
            'ket' => $this->put('ket'),
            'surat_izin' => $this->put('surat_izin'),
            'sts' => $this->put('sts')
        ];
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were changed'
            ], 404);
        } else {
            $this->rekening->update($data, $id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully changed'
            ], 200);
        }
    }

    public function rekening_delete()
    {
        $id = $this->delete('id');
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were deleted'
            ], 404);
        } else {
            $this->rekening->delete($id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully deleted'
            ], 200);
        }
    }

    public function empty_rekening_delete()
    {
        $this->rekening->empty();
        $this->response([
            'status' => true,
            'message' => 'Data was successfully deleted'
        ], 200);
    }

    // -----------------------------------
    // transaksi (4)
    // -----------------------------------

    public function count_transaksi_get()
    {
        $data = $this->transaksi->count();
        $this->response($data, 200);
    }

    public function transaksi_get()
    {
        $id = $this->get('id');
        $keyword = $this->get('keyword');
        $limit = $this->get('limit');
        $offset = $this->get('offset');
        if ($keyword) {
            $data = $this->transaksi->find($keyword, $limit, $offset);
        } else {
            $data = $this->transaksi->get($id, $limit, $offset);
        }
        $this->response($data, 200);
    }

    public function transaksi_post()
    {
        $data = [
            'kdsatker' => $this->post('kdsatker'),
            'bulan' => $this->post('bulan'),
            'tahun' => $this->post('tahun'),
            'kdk' => $this->post('kdk'),
            'kdj' => $this->post('kdj'),
            'jns' => $this->post('jns'),
            'urut' => $this->post('urut'),
            'nominal' => $this->post('nominal'),
            'uraian' => $this->post('uraian'),
            'tanggal' => $this->post('tanggal'),
            'va' => $this->post('va'),
            'keg' => $this->post('keg'),
            'nota_d_id' => $this->post('nota_d_id'),
            'nota_k_id' => $this->post('nota_k_id'),
            'rekening_id' => $this->post('rekening_id'),
            'sts' => $this->post('sts'),
            'ket' => $this->post('ket')
        ];
        if ($this->post('nip') === null | $this->post('nip') === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were added'
            ], 404);
        } else {
            $this->transaksi->create($data);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully added'
            ], 200);
        }
    }

    public function transaksi_put()
    {
        $id = $this->put('id');
        $data = [
            'kdsatker' => $this->put('kdsatker'),
            'bulan' => $this->put('bulan'),
            'tahun' => $this->put('tahun'),
            'kdk' => $this->put('kdk'),
            'kdj' => $this->put('kdj'),
            'jns' => $this->put('jns'),
            'urut' => $this->put('urut'),
            'nominal' => $this->put('nominal'),
            'uraian' => $this->put('uraian'),
            'tanggal' => $this->put('tanggal'),
            'va' => $this->put('va'),
            'keg' => $this->put('keg'),
            'nota_d_id' => $this->put('nota_d_id'),
            'nota_k_id' => $this->put('nota_k_id'),
            'rekening_id' => $this->put('rekening_id'),
            'sts' => $this->put('sts'),
            'ket' => $this->put('ket')
        ];
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were changed'
            ], 404);
        } else {
            $this->transaksi->update($data, $id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully changed'
            ], 200);
        }
    }

    public function transaksi_delete()
    {
        $id = $this->delete('id');
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were deleted'
            ], 404);
        } else {
            $this->transaksi->delete($id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully deleted'
            ], 200);
        }
    }

    public function empty_transaksi_delete()
    {
        $this->transaksi->empty();
        $this->response([
            'status' => true,
            'message' => 'Data was successfully deleted'
        ], 200);
    }
}
