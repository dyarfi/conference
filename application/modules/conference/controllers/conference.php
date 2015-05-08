<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Conference extends Admin_Controller {

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     *	- or -  
     * 		http://example.com/index.php/welcome/index
     *	- or -
     * Since this controller is set as the default controller in 
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see http://codeigniter.com/user_guide/general/urls.html
     */

    public function __construct() {
	    parent::__construct();

        // Load Conference model
        $this->load->model('Conferences');

	    // Load Informations model
	    $this->load->model('Informations');

	    // Load Schedule model
	    $this->load->model('Schedules');

        // Load Speaker model
        $this->load->model('Speakers');

		// Load Grocery CRUD
		$this->load->library('grocery_CRUD');

    }
	
    public function index() {
        try {
			// Set our Grocery CRUD
            $crud = new grocery_CRUD();
			// Set query for Conferences that doesn't have user id
			//$crud->where('tbl_conferences.user_id',NULL);
			//$crud->where('tbl_conferences.status','1');
            // Set tables
            $crud->set_table('tbl_conferences');
            // Set CRUD subject
            $crud->set_subject('Conference');                            
            // Set table relation
            //$crud->set_relation('career_id', 'tbl_careers', 'subject');
			// Set new action
			//$crud->add_action('Set To Employee', '', '','fa fa-arrow-circle-left',array($this,'_callback_set_Conference_to_employee'));
			// Callback_column set to
            $crud->callback_column('set_to',array($this,'_callback_set_link'));
			// Set column
            $crud->columns('subject','name','description','open_date','close_date','photo','status');
            // Set column display 
            
            //$crud->display_as('career_id','Career Applied');
			// Set column display 
            //$crud->display_as('set_to','Set to Employee');
			
            // Set custom field display for gender
            //$crud->field_type('gender','dropdown',array('1' => 'Male', '0' => 'Female')); 
			// Set custom field display for status
            $crud->field_type('status','dropdown',array('1' => 'Active', '0' => 'Inactive')); 
            $crud->field_type('added','hidden');
            $crud->field_type('modified','hidden');
            // Set upload field
			$crud->set_field_upload('photo','uploads/conferences');
            $this->load($crud, 'Conferences');
        } catch (Exception $e) {
            show_error($e->getMessage() . ' --- ' . $e->getTraceAsString());
        }
    }
    /*
    public function _callback_set_Conference_to_employee($primary_key , $row) {
	if ($row->user_id !== NULL) { return base_url(ADMIN).'/employee/set/'.$row->id; } else { return 'sdfgdsfg'; }
    }
     * 
     */
    
    public function _callback_set_link ($value, $row) {
		if ($row->user_id == NULL) { 
			return '<a href="'.base_url(ADMIN).'/employee/set/'.$row->id.'" class="fa fa-arrow-circle-left">&nbsp;</a>'; 
		} else { 
			return 'Already Employed';
		}
    }
    
    public function _callback_total_image($value, $row) {
        $total = $this->user_model->total_image_submitted($row->participant_id);
        return $total;
    }
    
    private function load($crud, $nav) {
        $output = $crud->render();
        $output->nav = $nav;
        if ($crud->getState() == 'list') {
            // Set Page Title 
            $output->page_title = 'Conference Listings';
            // Set Main Template
            $output->main       = 'template/admin/metronix';
            // Set Primary Template
            $this->load->view('template/admin/template.php', $output);
        } else {
            $this->load->view('template/admin/popup.php', $output);
        }    
    }
}

/* End of file Conference.php */
/* Location: ./application/module/career/controllers/Conference.php */