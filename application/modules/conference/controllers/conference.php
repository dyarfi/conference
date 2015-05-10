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
			
            $crud->set_relation_n_n('speakers', 'tbl_conference_speakers', 'tbl_speakers', 'conference_id', 'speaker_id', 'subject', 'priority');
            
            // Set new action
			//$crud->add_action('Set To Employee', '', '','fa fa-arrow-circle-left',array($this,'_callback_set_Conference_to_employee'));
			
            // Callback Column 
            //$crud->callback_column('set_to',array($this,'_callback_set_link'));
            
            
			// Set column to display in add / edit
            $crud->columns('subject','name','description','open_date','close_date','photo','status');
            
            // Set column display 
            $crud->display_as('is_submit','Submissions');
			$crud->display_as('is_speaker','Speakers');
            $crud->display_as('is_invitation','Invitation');
			$crud->display_as('registration_fee','Registration Fee');
			
            // Callback Field
            $crud->callback_field('is_fee',array($this,'_callback_is_fee'));
            
            // Fields
            $crud->fields('type','name','subject','speakers','synopsis','description','open_date','close_date','registration_fee','is_speaker','is_invitation','is_submit','photo','messages','location','status');
			
            // Set custom field display
            $crud->field_type('type','dropdown',array('1' => 'Conference', '2' => 'Symposium','3'=>'Seminar','3'=>'Colloquium','4'=>'Workshop','5'=>'Roundtable')); 
            
            $crud->field_type('is_submit','true_false',array('1' => 'Yes', '0' => 'No')); 
            $crud->field_type('is_speaker','true_false',array('1' => 'Yes', '0' => 'No')); 
            $crud->field_type('is_invitation','true_false',array('1' => 'Yes', '0' => 'No')); 
            $crud->field_type('is_fee','true_false',array('1' => 'Yes', '0' => 'No')); 
            
            $crud->field_type('open_date','date');
            $crud->field_type('close_date','date');
            
			// Set custom field display for status
            $crud->field_type('status','enum',array('publish', 'draft', 'unpublish')); 
            
            $crud->field_type('user_id','hidden');
            $crud->field_type('added','hidden');
            $crud->field_type('modified','hidden');
            
            //$this->db->last_query();
            
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
    
    public function _callback_is_fee ($value, $row) {
        return '<script>$("input[name="is_fee"]).click(function() { alert("asdf"); })</script>';
		//return '<input type="text" maxlength="50" value="'.$value.'" name="is_fee">asdasdas';
    }
    
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