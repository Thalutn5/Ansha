<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kategori extends CI_Controller
{
    public function elektronik()
    {
        $data['elektronik'] = $this->ModelKategori->data_elektronik();

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('kategori/elektronik', $data);
        $this->load->view('templates/footer');
    }

    public function clothes()
    {
        $data['clothes'] = $this->ModelKategori->data_clothes();

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('kategori/clothes', $data);
        $this->load->view('templates/footer');
    }

    public function sports()
    {
        $data['sports'] = $this->ModelKategori->data_sports();

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('kategori/sports', $data);
        $this->load->view('templates/footer');
    }
}
