<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    public function __construct(){
        parent::__construct();
        if($this->session->userdata('role_id') != '2'){
            $this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
            Anda belum login!
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>');
          redirect('auth/login');
        }
    }

    public function addToCart($id)
    {
        $barang = $this->ModelBarang->find($id);

        $data = array(
            'id'      => $barang->id_brg,
            'qty'     => 1,
            'price'   => $barang->harga_brg,
            'name'    => $barang->nama_brg
        );

        $this->cart->insert($data);
        redirect('welcome');
    }

    public function cartDetails()
    {
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('keranjang');
        $this->load->view('templates/footer');
    }

    public function hapusKeranjang($rowid)
    {
        $data = array(
            'rowid' => $rowid,
            'qty' => 0
        );
        $this->cart->update($data);
        redirect('welcome');
    }

    public function checkout()
    {
        $total = $this->cart->total_items();
        $data["tag"] = "keranjangkosong";

        if ($total === 0) {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar');
            $this->load->view('prosespesanan', $data);
            $this->load->view('templates/footer');
        } else {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar');
            $this->load->view('checkout');
            $this->load->view('templates/footer');
        }
    }

    public function prosesPesanan()
    {
        $data["tag"] = "keranjangadaisi";

        $is_processed = $this->ModelInvoice->index();
        if ($is_processed) {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar');
            $this->load->view('prosespesanan', $data);
            $this->load->view('templates/footer');
            $this->cart->destroy();
        } else {
            echo "Maaf pesanan anda gagal diproses";
        }
    }

    public function detailBarang($idBarang)
    {
        $data['barang'] = $this->ModelBarang->detailBrg($idBarang)[0];

        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('detailbarang', $data);
        $this->load->view('templates/footer');
    }
}
