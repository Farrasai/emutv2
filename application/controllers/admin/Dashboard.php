<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        //load model admin
        $this->load->model('admin');
        $this->load->model('mutasi');
        //cek session dan level user
        if ($this->admin->is_role() != "admin") {
            redirect("login/");
        }
    }

    public function index()
    {
        $data['user'] = $this->db->get_where('user', ['npsn' =>
        $this->session->userdata('npsn')])->row_array();
        $data['mutasi'] = $this->admin->tampil();
        $this->load->view('admin/index', $data);
        $this->load->view('templates/dash_header', $data);
        //$this->load->view('templates/footer', $data);
        //$this->load->view("templates/dash_navbar");
        //$this->load->view("templates/dash_footer");


    }




    public function logout()
    {
        $this->session->sess_destroy();
        redirect('login');
    }
}
