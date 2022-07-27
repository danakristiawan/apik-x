<?php

class Data_transaksi_model extends CI_Model
{
    private $_table = 'data_transaksi';

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
        $this->db->like('uraian', $keyword);
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

    public function getApp($kdsatker = null, $tahun = null, $keg = null, $limit = 0, $offset = null, $id = null)
    {
        if ($id === null) {
            return $this->db->get_where($this->_table, ['kdsatker' => $kdsatker, 'tahun' => $tahun, 'keg' => $keg, 'nota_d_id' => 0], $limit, $offset)->result_array();
        } else {
            return $this->db->get_where($this->_table, ['id' => $id])->row_array();
        }
    }

    public function findApp($kdsatker = null, $tahun = null, $keg = null, $keyword = null, $limit = 0, $offset = null)
    {
        $this->db->like('uraian', $keyword);
        return $this->db->get_where($this->_table, ['kdsatker' => $kdsatker, 'tahun' => $tahun, 'keg' => $keg, 'nota_d_id' => 0], $limit, $offset)->result_array();
    }

    public function countApp($kdsatker = null, $tahun = null, $keg = null)
    {
        return $this->db->get_where($this->_table, ['kdsatker' => $kdsatker, 'tahun' => $tahun, 'keg' => $keg, 'nota_d_id' => 0])->num_rows();
    }

    public function getNota($kdsatker = null, $tahun = null, $kdk = null, $kdj = null, $jns = null, $keg = null, $sts = 0, $limit = 0, $offset = null)
    {
        return $this->db->get_where($this->_table, ['kdsatker' => $kdsatker, 'tahun' => $tahun, 'kdk' => $kdk, 'kdj' => $kdj, 'jns' => $jns, 'keg' => $keg, 'sts' => $sts], $limit, $offset)->result_array();
    }

    public function countNota($kdsatker = null, $tahun = null, $kdk = null, $kdj = null, $jns = null, $keg = null, $sts = 0)
    {
        return $this->db->get_where($this->_table, ['kdsatker' => $kdsatker, 'tahun' => $tahun, 'kdk' => $kdk, 'kdj' => $kdj, 'jns' => $jns, 'keg' => $keg, 'sts' => $sts])->num_rows();
    }

    public function findNota($kdsatker = null, $tahun = null, $kdk = null, $kdj = null, $jns = null, $keg = null, $sts = 0, $keyword = null, $limit = 0, $offset = null)
    {
        $this->db->like('uraian', $keyword);
        return $this->db->get_where($this->_table, ['kdsatker' => $kdsatker, 'tahun' => $tahun, 'kdk' => $kdk, 'kdj' => $kdj, 'jns' => $jns, 'keg' => $keg, 'sts' => $sts], $limit, $offset)->result_array();
    }

    public function countBulan($kdsatker = null, $tahun = null)
    {
        $query = "SELECT a.bulan, b.bulan, count(a.nominal) AS jumlah FROM data_transaksi a LEFT JOIN ref_bulan b ON a.bulan=b.kode WHERE a.kdsatker='$kdsatker' AND a.tahun='$tahun' GROUP BY a.bulan, b.bulan ASC";
        return $this->db->query($query)->result_array();
    }

    public function countKeg($kdsatker = null, $tahun = null, $keg = null)
    {
        $query = "SELECT keg, count(keg) as jumlah FROM data_transaksi WHERE kdsatker='$kdsatker' AND tahun='$tahun' AND keg='$keg' GROUP BY keg";
        return $this->db->query($query)->row_array();
    }

    public function sum($kdsatker = null, $tahun = null, $keg = null)
    {
        $query = "SELECT kdk, 
        SUM(IF(jns = 'D', nominal, 0)) AS debet, 
        SUM(IF(jns = 'K', nominal, 0)) AS kredit
        FROM data_transaksi WHERE kdsatker='$kdsatker' AND tahun='$tahun' AND keg='$keg' GROUP BY kdk ORDER BY kdk ASC";
        return $this->db->query($query)->result_array();
    }
}
