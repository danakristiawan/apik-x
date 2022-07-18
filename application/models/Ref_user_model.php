<?php

class Ref_user_model extends CI_Model
{
    private $_table = 'ref_user';

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Data_hris_model', 'hris');
    }

    public function get($id = null, $limit = 0, $offset = null)
    {
        if ($id == null) {
            return $this->db->get($this->_table, $limit, $offset)->result_array();
        } else {
            return $this->db->get_where($this->_table, ['id' => $id])->row_array();
        }
    }

    public function find($keyword = null, $limit = 0, $offset = null)
    {
        $this->db->like('nama', $keyword);
        return $this->db->get($this->_table, $limit, $offset)->result_array();
    }

    public function count()
    {
        return $this->db->get($this->_table)->num_rows();
    }

    public function create($post)
    {
        $this->db->insert($this->_table, $post);
        return $this->db->affected_rows();
    }

    public function update($post, $id)
    {
        $this->db->update($this->_table, $post, ['id' => $id]);
        return $this->db->affected_rows();
    }

    public function delete($id)
    {
        $this->db->delete($this->_table, ['id' => $id]);
        return $this->db->affected_rows();
    }

    public function empty()
    {
        $this->db->delete($this->_table);
        return $this->db->affected_rows();
    }

    public function signIn($post)
    {
        $nip = $post['nip'];
        $password = $post['password'];
        $user = $this->db->get_where($this->_table, ['nip' => $nip])->row_array();
        if ($user) {
            if (password_verify($password, $user['password'])) {
                $data = [
                    'nip' => $user['nip'],
                    'nama' => $user['nama'],
                    'profil' => $this->hris->getProfil($nip)['Data']
                ];
                $this->session->set_userdata($data);
                redirect('beranda');
            } else {
                $this->session->set_flashdata('pesan', 'Password Anda salah!');
                redirect('sign-in');
            }
        } else {
            $this->session->set_flashdata('pesan', 'NIP Anda belum terdaftar!');
            redirect('sign-in');
        }
    }
}
