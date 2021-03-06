<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Read extends Public_Controller {
    
	public function __construct() {
		parent::__construct();
				
		// Load Setting data
		$this->load->model('admin/Settings');

		// Load User related model in admin module
		$this->load->model('page/Pagemenus');
		$this->load->model('page/Pages');
		
		// Load Conference related model in admin module
		$this->load->model('conference/Conferences');
		$this->load->model('conference/Informations');		
		$this->load->model('conference/Speakers');
        $this->load->model('conference/Schedules');
        $this->load->model('conference/Submissions');

	}
	
	public function index() {
        // Redirect to home
        redirect(base_url());
	}
	
	public function menu ($menu='') {
		
		// Set menu data
		$data['menu'] = $menu;
		
		// Set pages data
		$data['pages'] = $this->Pagemenus->getPagesByMenu($menu);
		//exit('asdf');
		// Set main template
		$data['main'] = 'home';
		
		// Load admin template
		$this->load->view('page', $this->load->vars($data));
	}
	
	public function page ($page='') {
		
        	// Set site title page with module menu
		$data['page_title'] = $this->config->item('developer_name') .' | '. $this->Settings->getByParameter('title_default')->value;
		
		// Get latest conference
		$conference         = $this->Conferences->getConferenceLatest();

		// Set conference link data
		$data['conference']	= $conference;
        
        // Set conference submission
        $data['submission'] = $conference->is_submit ? $this->Submissions->getByConference($conference->id) : '';
        
		// Set informations link data
		$data['informations'] = $this->Informations->getByConferenceId($conference->id);

		// Set speakers link data
		$data['speakers']   = $this->Conferences->getSpeakers($conference->id);

		// Set speakers link data
		$data['schedules']  = $this->Schedules->getAllSchedule(array('conference_id'=>$conference->id));

		// Set facebook link data
		$data['facebook']	= $this->Settings->getByParameter('socmed_facebook');
				
		// Set twitter link data
		$data['twitter']	= $this->Settings->getByParameter('socmed_twitter');
		
		// Set google link data
		$data['google']		= $this->Settings->getByParameter('socmed_gplus');
		
		// Set contact email info data
		$data['email_info']	= $this->Settings->getByParameter('email_info');		
		
		// Set contactus address info data
		$data['contactus_address']	= $this->Settings->getByParameter('contactus_address');		
		
		// Set pages data
		$data['page'] = $this->Pages->getPageByName($page);
		
		// Set main template
		$data['main'] = 'page';
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
	}
}

/* End of file user.php */
/* Location: ./application/controllers/user.php */