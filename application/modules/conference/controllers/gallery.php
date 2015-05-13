<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Gallery extends Admin_Controller {

    public function __construct() {
            parent::__construct();

            // Load Conferences model
            $this->load->model('conference/Conferences');

            // Load Image CRUD
            $this->load->library('image_CRUD');
      
    }
	
    public function index() {
        
        try {
            
            $image_crud = new image_CRUD();
		
            $image_crud->set_primary_key_field('id');
            $image_crud->set_url_field('file_name');
            $image_crud->set_table('tbl_conference_images');
            $image_crud->set_title_field('title')        
            ->set_relation_field('conference_id')
            ->set_ordering_field('priority')
            ->set_image_path('uploads/conferences');
            
            $this->load($image_crud);
        
        } catch (Exception $e) {
            show_error($e->getMessage() . ' --- ' . $e->getTraceAsString());
        }
        
    }
    
    public function _callback_time ($value, $row) {
		return empty($value) ? '-' : date('D, d-M-Y',$value);
    }
    
    public function _callback_time_added ($value, $row) {
		$time = time();
		return '<input type="hidden" maxlength="50" value="'.$time.'" name="added">';
    }
    
    public function _callback_time_modified ($value, $row) {		
		$time = time();
		return '<input type="hidden" maxlength="50" value="'.$time.'" name="modified">'.date('D, d-M-Y',$time);
    }
	
	public function _callback_filename($value, $row) {
		$row->file_name = strip_tags($row->file_name);
        return '<div class="text-center"><a href="'.base_url('uploads/gallery/'.$row->file_name).'" class="image-thumbnail"><img height="110px" src="'.base_url('uploads/gallery/'.$row->file_name).'"/></a></div>';
    }
	
	public function _callback_filename_url($value, $row) {
		return ($row->file_name) ? base_url('uploads/users/'.$row->file_name) : '-';
	}
	
	public function _send_email() {
			

		$this->load->library('email');

		$subject = 'Selamat anda';
		$message = 'Hey <b>'.$user->username.'</b>, this is your new password: <b>'.$password.'</b>';
		
		$this->email->from('noreply');
		$this->email->to($user->email);
		$this->email->subject('Your new password');
		$this->email->message('Hey <b>'.$user->username.'</b>, this is your new password: <b>'.$password.'</b>');

		//$this->email->send();
		
	}
    
    private function load($crud) {
        
        $output = $crud->render();

        // Set Gallery Title 
        $output->page_title = 'Conference Gallery Listings';

        // Set Main Template
        $output->main       = 'upload_index';

        // Set Output 
        $data->output       = $output;

        // Set Primary Template
        $this->load->view('template/admin/popup_uploader', $output);
            
    }
}
