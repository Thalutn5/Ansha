<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ModelKategori extends CI_Model
{
    public function data_elektronik()
    {
        $result = $this->db->get_where('tb_barang', ['kategori_brg' => 'Electronics']);
        return $result->result_array();
    }

    public function data_clothes()
    {
        $result = $this->db->get_where('tb_barang', ['kategori_brg' => 'Clothes']);
        return $result->result_array();
    }

    public function data_sports()
    {
        $result = $this->db->get_where('tb_barang', ['kategori_brg' => 'Sports']);
        return $result->result_array();
    }
}
