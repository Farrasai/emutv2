<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Verifikasi_model extends CI_Model

{
    public function tampilUser()
    {
        return $this->db->get('user')->result_array();
    }
}
