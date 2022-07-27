<?php
defined('BASEPATH') or exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;

class Referensi extends RestController
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('Ref_jenis_model', 'jenis');
        $this->load->model('Ref_kategori_model', 'kategori');
        $this->load->model('Ref_kelompok_model', 'kelompok');
        $this->load->model('Ref_menu_model', 'menu');
        $this->load->model('Ref_nota_model', 'nota');
        $this->load->model('Ref_satker_model', 'satker');
        $this->load->model('Ref_sub_model', 'sub');
        $this->load->model('Ref_user_model', 'user');
    }


    // -----------------------------------
    // user (1)
    // -----------------------------------

    public function count_user_get()
    {
        $data = $this->user->count();
        $this->response($data, 200);
    }

    public function user_get()
    {
        $id = $this->get('id');
        $keyword = $this->get('keyword');
        $limit = $this->get('limit');
        $offset = $this->get('offset');
        if ($keyword) {
            $data = $this->user->find($keyword, $limit, $offset);
        } else {
            $data = $this->user->get($id, $limit, $offset);
        }
        $this->response($data, 200);
    }

    public function user_post()
    {
        $data = [
            'nip' => $this->post('nip'),
            'nama' => $this->post('nama'),
            'email' => $this->post('email'),
            'password' => $this->post('password'),
            'level' => $this->post('level'),
            'is_active' => $this->post('is_active'),
            'date_created' => $this->post('date_created')
        ];
        if ($this->post('nip') === null | $this->post('nip') === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were added'
            ], 404);
        } else {
            $this->user->create($data);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully added'
            ], 200);
        }
    }

    public function user_put()
    {
        $id = $this->put('id');
        $data = [
            'nip' => $this->put('nip'),
            'nama' => $this->put('nama'),
            'email' => $this->put('email'),
            'password' => $this->put('password'),
            'level' => $this->put('level'),
            'is_active' => $this->put('is_active'),
            'date_created' => $this->put('date_created')
        ];
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were changed'
            ], 404);
        } else {
            $this->user->update($data, $id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully changed'
            ], 200);
        }
    }

    public function user_delete()
    {
        $id = $this->delete('id');
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were deleted'
            ], 404);
        } else {
            $this->user->delete($id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully deleted'
            ], 200);
        }
    }

    public function empty_user_delete()
    {
        $this->user->empty();
        $this->response([
            'status' => true,
            'message' => 'Data was successfully deleted'
        ], 200);
    }

    // -----------------------------------
    // kategori (2)
    // -----------------------------------

    public function count_kategori_get()
    {
        $data = $this->kategori->count();
        $this->response($data, 200);
    }

    public function kategori_get()
    {
        $id = $this->get('id');
        $keyword = $this->get('keyword');
        $limit = $this->get('limit');
        $offset = $this->get('offset');
        if ($keyword) {
            $data = $this->kategori->find($keyword, $limit, $offset);
        } else {
            $data = $this->kategori->get($id, $limit, $offset);
        }
        $this->response($data, 200);
    }

    public function kategori_post()
    {
        $data = [
            'nama' => $this->post('nama')
        ];
        if ($this->post('nama') === null | $this->post('nama') === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were added'
            ], 404);
        } else {
            $this->kategori->create($data);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully added'
            ], 200);
        }
    }

    public function kategori_put()
    {
        $id = $this->put('id');
        $data = [
            'nama' => $this->put('nama')
        ];
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were changed'
            ], 404);
        } else {
            $this->kategori->update($data, $id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully changed'
            ], 200);
        }
    }

    public function kategori_delete()
    {
        $id = $this->delete('id');
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were deleted'
            ], 404);
        } else {
            $this->kategori->delete($id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully deleted'
            ], 200);
        }
    }

    public function empty_kategori_delete()
    {
        $this->kategori->empty();
        $this->response([
            'status' => true,
            'message' => 'Data was successfully deleted'
        ], 200);
    }

    // -----------------------------------
    // menu (3)
    // -----------------------------------

    public function count_menu_get()
    {
        $data = $this->menu->count();
        $this->response($data, 200);
    }

    public function menu_get()
    {
        $id = $this->get('id');
        $keyword = $this->get('keyword');
        $limit = $this->get('limit');
        $offset = $this->get('offset');
        if ($keyword) {
            $data = $this->menu->find($keyword, $limit, $offset);
        } else {
            $data = $this->menu->get($id, $limit, $offset);
        }
        $this->response($data, 200);
    }

    public function menu_post()
    {
        $data = [
            'nama' => $this->post('nama'),
            'url' => $this->post('url'),
            'icon' => $this->post('icon'),
            'status' => $this->post('status'),
            'kategori_id' => $this->post('kategori_id')
        ];
        if ($this->post('nama') === null | $this->post('nama') === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were added'
            ], 404);
        } else {
            $this->menu->create($data);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully added'
            ], 200);
        }
    }

    public function menu_put()
    {
        $id = $this->put('id');
        $data = [
            'nama' => $this->put('nama'),
            'url' => $this->put('url'),
            'icon' => $this->put('icon'),
            'status' => $this->put('status'),
            'kategori_id' => $this->put('kategori_id')
        ];
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were changed'
            ], 404);
        } else {
            $this->menu->update($data, $id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully changed'
            ], 200);
        }
    }

    public function menu_delete()
    {
        $id = $this->delete('id');
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were deleted'
            ], 404);
        } else {
            $this->menu->delete($id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully deleted'
            ], 200);
        }
    }

    public function empty_menu_delete()
    {
        $this->menu->empty();
        $this->response([
            'status' => true,
            'message' => 'Data was successfully deleted'
        ], 200);
    }

    // -----------------------------------
    // sub (4)
    // -----------------------------------

    public function count_sub_get()
    {
        $data = $this->sub->count();
        $this->response($data, 200);
    }

    public function sub_get()
    {
        $id = $this->get('id');
        $keyword = $this->get('keyword');
        $limit = $this->get('limit');
        $offset = $this->get('offset');
        if ($keyword) {
            $data = $this->sub->find($keyword, $limit, $offset);
        } else {
            $data = $this->sub->get($id, $limit, $offset);
        }
        $this->response($data, 200);
    }

    public function sub_post()
    {
        $data = [
            'nama' => $this->post('nama'),
            'url' => $this->post('url'),
            'menu_id' => $this->post('menu_id')
        ];
        if ($this->post('nama') === null | $this->post('nama') === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were added'
            ], 404);
        } else {
            $this->sub->create($data);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully added'
            ], 200);
        }
    }

    public function sub_put()
    {
        $id = $this->put('id');
        $data = [
            'nama' => $this->put('nama'),
            'url' => $this->put('url'),
            'menu_id' => $this->put('menu_id')
        ];
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were changed'
            ], 404);
        } else {
            $this->sub->update($data, $id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully changed'
            ], 200);
        }
    }

    public function sub_delete()
    {
        $id = $this->delete('id');
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were deleted'
            ], 404);
        } else {
            $this->sub->delete($id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully deleted'
            ], 200);
        }
    }

    public function empty_sub_delete()
    {
        $this->sub->empty();
        $this->response([
            'status' => true,
            'message' => 'Data was successfully deleted'
        ], 200);
    }

    // -----------------------------------
    // kelompok (5)
    // -----------------------------------

    public function count_kelompok_get()
    {
        $data = $this->kelompok->count();
        $this->response($data, 200);
    }

    public function kelompok_get()
    {
        $id = $this->get('id');
        $keyword = $this->get('keyword');
        $limit = $this->get('limit');
        $offset = $this->get('offset');
        if ($keyword) {
            $data = $this->kelompok->find($keyword, $limit, $offset);
        } else {
            $data = $this->kelompok->get($id, $limit, $offset);
        }
        $this->response($data, 200);
    }

    public function kelompok_post()
    {
        $data = [
            'kode' => $this->post('kode'),
            'nama' => $this->post('nama')
        ];
        if ($this->post('nama') === null | $this->post('nama') === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were added'
            ], 404);
        } else {
            $this->kelompok->create($data);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully added'
            ], 200);
        }
    }

    public function kelompok_put()
    {
        $id = $this->put('id');
        $data = [
            'kode' => $this->put('kode'),
            'nama' => $this->put('nama')
        ];
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were changed'
            ], 404);
        } else {
            $this->kelompok->update($data, $id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully changed'
            ], 200);
        }
    }

    public function kelompok_delete()
    {
        $id = $this->delete('id');
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were deleted'
            ], 404);
        } else {
            $this->kelompok->delete($id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully deleted'
            ], 200);
        }
    }

    public function empty_kelompok_delete()
    {
        $this->kelompok->empty();
        $this->response([
            'status' => true,
            'message' => 'Data was successfully deleted'
        ], 200);
    }

    // -----------------------------------
    // jenis (6)
    // -----------------------------------

    public function count_jenis_get()
    {
        $data = $this->jenis->count();
        $this->response($data, 200);
    }

    public function jenis_get()
    {
        $id = $this->get('id');
        $keyword = $this->get('keyword');
        $limit = $this->get('limit');
        $offset = $this->get('offset');
        if ($keyword) {
            $data = $this->jenis->find($keyword, $limit, $offset);
        } else {
            $data = $this->jenis->get($id, $limit, $offset);
        }
        $this->response($data, 200);
    }

    public function jenis_post()
    {
        $data = [
            'kode' => $this->post('kode'),
            'nama' => $this->post('nama'),
            'kelompok_id' => $this->post('kelompok_id'),
            'jenis' => $this->post('jenis')
        ];
        if ($this->post('nama') === null | $this->post('nama') === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were added'
            ], 404);
        } else {
            $this->jenis->create($data);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully added'
            ], 200);
        }
    }

    public function jenis_put()
    {
        $id = $this->put('id');
        $data = [
            'kode' => $this->put('kode'),
            'nama' => $this->put('nama'),
            'kelompok_id' => $this->put('kelompok_id'),
            'jenis' => $this->put('jenis')
        ];
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were changed'
            ], 404);
        } else {
            $this->jenis->update($data, $id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully changed'
            ], 200);
        }
    }

    public function jenis_delete()
    {
        $id = $this->delete('id');
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were deleted'
            ], 404);
        } else {
            $this->jenis->delete($id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully deleted'
            ], 200);
        }
    }

    public function empty_jenis_delete()
    {
        $this->jenis->empty();
        $this->response([
            'status' => true,
            'message' => 'Data was successfully deleted'
        ], 200);
    }

    // -----------------------------------
    // nota (7)
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
            'kode' => $this->post('kode'),
            'nama' => $this->post('nama'),
            'kdk' => $this->post('kdk'),
            'kdj' => $this->post('kdj'),
            'jns' => $this->post('jns'),
            'keg' => $this->post('keg')
        ];
        if ($this->post('nama') === null | $this->post('nama') === "") {
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
            'kode' => $this->put('kode'),
            'nama' => $this->put('nama'),
            'kdk' => $this->put('kdk'),
            'kdj' => $this->put('kdj'),
            'jns' => $this->put('jns'),
            'keg' => $this->put('keg')
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
    // satker (8)
    // -----------------------------------

    public function count_satker_get()
    {
        $data = $this->satker->count();
        $this->response($data, 200);
    }

    public function satker_get()
    {
        $id = $this->get('id');
        $keyword = $this->get('keyword');
        $limit = $this->get('limit');
        $offset = $this->get('offset');
        if ($keyword) {
            $data = $this->satker->find($keyword, $limit, $offset);
        } else {
            $data = $this->satker->get($id, $limit, $offset);
        }
        $this->response($data, 200);
    }

    public function satker_post()
    {
        $data = [
            'kode' => $this->post('kode'),
            'nama' => $this->post('nama'),
            'urut_transaksi' => $this->post('urut_transaksi'),
            'urut_nota' => $this->post('urut_nota')
        ];
        if ($this->post('nama') === null | $this->post('nama') === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were added'
            ], 404);
        } else {
            $this->satker->create($data);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully added'
            ], 200);
        }
    }

    public function satker_put()
    {
        $id = $this->put('id');
        $data = [
            'kode' => $this->put('kode'),
            'nama' => $this->put('nama'),
            'urut_transaksi' => $this->put('urut_transaksi'),
            'urut_nota' => $this->put('urut_nota')
        ];
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were changed'
            ], 404);
        } else {
            $this->satker->update($data, $id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully changed'
            ], 200);
        }
    }

    public function satker_delete()
    {
        $id = $this->delete('id');
        if ($id === null | $id === "") {
            $this->response([
                'status' => false,
                'message' => 'No data were deleted'
            ], 404);
        } else {
            $this->satker->delete($id);
            $this->response([
                'status' => true,
                'message' => 'Data was successfully deleted'
            ], 200);
        }
    }

    public function empty_satker_delete()
    {
        $this->satker->empty();
        $this->response([
            'status' => true,
            'message' => 'Data was successfully deleted'
        ], 200);
    }
}
