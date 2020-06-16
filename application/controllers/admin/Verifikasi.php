<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Verifikasi extends CI_Controller
{

    public function index()
    {
        $data['user'] = $this->db->get_where('user', ['npsn' =>
        $this->session->userdata('npsn')])->row_array();

        $data['user'] = $this->Verifikasi_model->tampilUser();

        $this->load->view('admin/verifikasi', $data);
        $this->load->view('templates/dash_header', $data);
    }
}
