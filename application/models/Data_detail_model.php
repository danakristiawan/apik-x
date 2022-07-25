<?php

class Data_detail_model extends CI_Model
{
    private $_table = 'data_detail';

    public function get($id = null, $limit = 0, $offset = null)
    {
        if ($id === null) {
            return $this->db->get($this->_table, $limit, $offset)->result_array();
        } else {
            return $this->db->get_where($this->_table, ['id' => $id])->row_array();
        }
    }

    public function find($keyword = null, $limit = 0, $offset = null)
    {
        $this->db->like('kdsatker', $keyword);
        return $this->db->get($this->_table, $limit, $offset)->result_array();
    }

    public function count()
    {
        return $this->db->get($this->_table)->num_rows();
    }

    public function create($data)
    {
        $this->db->insert($this->_table, $data);
        return $this->db->affected_rows();
    }

    public function update($data, $id = null)
    {
        $this->db->update($this->_table, $data, ['id' => $id]);
        return $this->db->affected_rows();
    }

    public function delete($id = null)
    {
        $this->db->delete($this->_table, ['id' => $id]);
        return $this->db->affected_rows();
    }

    public function empty()
    {
        $this->db->delete($this->_table);
        return $this->db->affected_rows();
    }

    public function countNotaId($nota_id = null)
    {
        return $this->db->get_where($this->_table, ['nota_id' => $nota_id])->num_rows();
    }

    public function findNotaId($urut = null, $nota_id = null, $limit = 0, $offset = null)
    {
        $this->db->like('urut', $urut);
        return $this->db->get_where($this->_table, ['nota_id' => $nota_id], $limit, $offset)->result_array();
    }

    public function getNotaId($nota_id = null, $limit = 0, $offset = null)
    {
        return $this->db->get_where($this->_table, ['nota_id' => $nota_id], $limit, $offset)->result_array();
    }
}
