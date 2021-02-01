<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product_services_model extends MY_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function getProductServices(){
        $qry = $this->db->get_where('accounting_product_services', array('status' => '1'));
        return $qry->result();
    }

    public function getProductServicesById($id){
        $qry = $this->db->get_where('accounting_product_services',array('id'=>$id));
        return $qry->result();
    }

    public function getProductServicesByTransactionId($transaction_id){
        $qry = $this->db->get_where('accounting_expense_category',array('transaction_id'=>$transaction_id));
        return $qry->result();
    }
    public function getProductServicesBySearch($search){
        $this->db->like('category_name',$search);
        $qry = $this->db->get('accounting_list_category');
        return $qry->result();
    }
}