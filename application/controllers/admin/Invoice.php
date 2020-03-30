<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Invoice extends CI_Controller
{
    public function __construct(){
        parent::__construct();
        if($this->session->userdata('role_id') != '1'){
            $this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
            Anda belum login!
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>');
          redirect('auth/login');
        }
    }
    public function index()
    {
        $data["invoice"] = $this->ModelInvoice->tampilData();

        $this->load->view('templatesAdmin/header');
        $this->load->view('templatesAdmin/sidebar');
        $this->load->view('admin/invoice', $data);
        $this->load->view('templatesAdmin/footer');
    }

    public function detail($id_invoice)
    {
        $data['invoice'] = $this->ModelInvoice->ambilIdInvoice($id_invoice)[0];
        $data['pesanan'] = $this->ModelInvoice->ambilIdPesanan($id_invoice);

        $this->load->view('templatesAdmin/header');
        $this->load->view('templatesAdmin/sidebar');
        $this->load->view('admin/detailinvoice', $data);
        $this->load->view('templatesAdmin/footer');
    }
}
