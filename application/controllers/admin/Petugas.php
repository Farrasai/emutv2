<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Petugas extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        //load model admin
        $this->load->model('admin');
        //cek session dan level user
        if ($this->admin->is_role() != "admin") {
            redirect("login/");
        }
    }

    public function index()
    {
        $data['user'] = $this->db->get_where('user', ['npsn' =>
        $this->session->userdata('npsn')])->row_array();

        $data['nama'] = $this->db->get('user')->result_array();

        $this->load->view('admin/petugas', $data);
        $this->load->view('templates/dash_header', $data);
    }
}
