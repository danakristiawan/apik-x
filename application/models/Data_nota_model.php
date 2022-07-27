<?php

class Data_nota_model extends CI_Model
{
    private $_table = 'data_nota';

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
        $this->db->like('urut', $keyword);
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

    public function findDetail($kdsatker = null, $tahun = null, $jns = null, $keg = null, $sts = null, $keyword = null, $limit = 0, $offset = null)
    {
        $this->db->like('urut', $keyword);
        return $this->db->get_where($this->_table, ['kdsatker' => $kdsatker, 'tahun' => $tahun, 'jns' => $jns, 'keg' => $keg, 'sts' => $sts], $limit, $offset)->result_array();
    }

    public function countDetail($kdsatker = null, $tahun = null, $jns = null, $keg = null, $sts = null)
    {
        return $this->db->get_where($this->_table, ['kdsatker' => $kdsatker, 'tahun' => $tahun, 'jns' => $jns, 'keg' => $keg, 'sts' => $sts])->num_rows();
    }

    public function getDetail($kdsatker = null, $tahun = null, $jns = null, $keg = null, $sts = null, $limit = 0, $offset = null, $id = null)
    {
        if ($id === null) {
            return $this->db->get_where($this->_table, ['kdsatker' => $kdsatker, 'tahun' => $tahun, 'jns' => $jns, 'keg' => $keg, 'sts' => $sts], $limit, $offset)->result_array();
        } else {
            return $this->db->get_where($this->_table, ['id' => $id])->row_array();
        }
    }

    public function getApp($kdsatker = null, $tahun = null, $keg = null, $sts = null, $limit = 0, $offset = null, $id = null)
    {
        if ($id === null) {
            return $this->db->get_where($this->_table, ['kdsatker' => $kdsatker, 'tahun' => $tahun, 'keg' => $keg, 'sts' => $sts], $limit, $offset)->result_array();
        } else {
            return $this->db->get_where($this->_table, ['id' => $id])->row_array();
        }
    }

    public function findApp($kdsatker = null, $tahun = null, $keg = null, $sts = null, $keyword = null, $limit = 0, $offset = null)
    {
        $this->db->like('urut', $keyword);
        return $this->db->get_where($this->_table, ['kdsatker' => $kdsatker, 'tahun' => $tahun, 'keg' => $keg, 'sts' => $sts], $limit, $offset)->result_array();
    }

    public function countApp($kdsatker = null, $tahun = null, $keg = null, $sts = null)
    {
        return $this->db->get_where($this->_table, ['kdsatker' => $kdsatker, 'tahun' => $tahun, 'keg' => $keg, 'sts' => $sts])->num_rows();
    }
}
