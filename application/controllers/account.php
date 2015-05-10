<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Account extends Public_Controller {

	public function __construct() {
		parent::__construct();
		
        // Load config for controller
        $this->load->config('admin/admin');
        
        // Load CAPTCHA model
		$this->load->model('Captcha');
		
		// Load Participant related model 
		$this->load->model('participant/Participants');
        
		// Load Conference model 
		$this->load->model('conference/Conferences');
					
	}
	
	public function index() {
		        
        // Default data setup
        $fields	= array(
                        'email'        	=> '',
						'password'      => '',
                        );

        $errors	= $fields;
        $this->form_validation->set_rules('email', 'Email','trim|valid_email|required|min_length[5]|max_length[64]|xss_clean');
        $this->form_validation->set_rules('password', 'Password','trim|required|xss_clean');	
        
        // Check if post is requested
	    if ($this->input->server('REQUEST_METHOD') == 'POST') {			

		    // Validation form checks
		    if ($this->form_validation->run() === FALSE)
		    {

				// Set error fields
				$error = array();
				foreach(array_keys($fields) as $error) {
					$errors[$error] = form_error($error);
				}

				// Set previous post merge to default
				$fields = array_merge($fields, $this->input->post());
				
				if ($this->input->is_ajax_request()) {

					// Send fields and errors data
					$result['fields'] = $fields;
					$result['errors'] = $errors;

				}

		    } else {

                $fields = array();
				
				$fields['email']		= $this->input->get_post('email', true);
				$fields['password']		= $this->input->get_post('password', true);
				
                $return = $this->Participants->login($fields);
				
                if ($return) {
                    
                    // Unset variables 
                    unset($return->password);
                    
                    // Set participant 
                    $this->session->set_userdata('participant', $return);
                    
                }
                
                //$this->config->set_item('user_id', $user_id);

				//$this->session->set_userdata('user_id', $this->user_model->encode($user_id));

				if ($this->input->is_ajax_request()) {
					// Send json message
					$result['result']	= 'OK';
					$result['label']	= base_url('upload');
				} else {					
					// Redirect if not ajax
					redirect(base_url('account/dashboard'));
				}
		    }

	    }
        
		// Captcha data
        $data['captcha']		= $this->Captcha->image();

		// Set error data to view
		$data['errors'] = $errors;

		// Post Fields
		$data['fields']	= $fields;
		
        // Set gender data
        $data['genders']    = config_item('gender');

		// Set main template
		$data['main'] = 'account';
				
		// Set site title page with module menu
		$data['page_title'] = 'Account';
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
		
	}
    
    public function register() {
        
        // Default data setup
        $fields	= array(
                        'fullname'       => '',
                        'email_register' => '',
						'gender'         => '',
                        'phone'          => '',
                        'captcha'        => '');

        $errors	= $fields;
        $this->form_validation->set_rules('fullname', 'Full Name', 'trim|required|min_length[5]|max_length[32]|xss_clean');
		$this->form_validation->set_rules('email_register', 'Email','trim|valid_email|required|max_length[55]|callback_match_email|xss_clean');
        $this->form_validation->set_rules('gender', 'Gender','trim|required');		
        $this->form_validation->set_rules('phone', 'Phone','trim|is_numeric|xss_clean|max_length[25]');
        $this->form_validation->set_rules('captcha', 'Captcha Code','trim|required|xss_clean|callback_match_captcha');
		
        // Check if post is requested
        if ($this->input->server('REQUEST_METHOD') == 'POST') {			

		    // Validation form checks
		    if ($this->form_validation->run() === FALSE)
		    {

				// Set error fields
				$error = array();
				foreach(array_keys($fields) as $error) {
					$errors[$error] = form_error($error);
				}

				// Set previous post merge to default
				$fields = array_merge($fields, $this->input->post());
				
				if ($this->input->is_ajax_request()) {

					// Send fields and errors data
					$result['fields'] = $fields;
					$result['errors'] = $errors;

				}

		    } else {

                $part = array();
				
                $part['email_register']	= $this->input->get_post('email_register', true);
				$part['fullname']       = $this->input->get_post('fullname', true);
                $part['gender']         = $this->input->get_post('gender', true);
				$part['phone']          = $this->input->get_post('phone', true);
				
                //$this->Users->setUser($part);
				
                //$user_id = $this->user_model->reg_participant($part);

                //$this->config->set_item('user_id', $user_id);

				//$this->session->set_userdata('user_id', $this->user_model->encode($user_id));

				if ($this->input->is_ajax_request()) {
					// Send json message
					$result['result']	= 'OK';
					$result['label']	= base_url('upload');
				} else {					
					// Redirect if not ajax
					redirect(base_url());
				}
		    }

	    }
		
        // Captcha data
        $data['captcha'] = $this->Captcha->image();

		// Set error data to view
		$data['errors'] = $errors;
        
        // Post Fields
		$data['fields']	= $fields;
        
        // Set gender data
        $data['genders'] = config_item('gender');

		// Set main template
		$data['main'] = 'account';
				
		// Set site title page with module menu
		$data['page_title'] = 'Account';
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));
        
    }
    
    // Participant Dashboard
    public function dashboard() {

        // Get latest conference
		$conference         = $this->Conferences->getConferenceLatest();
        $data['conference'] = $conference;
        
        // Get Participant Conferences
        $data['part_conferences'] = $this->Participants->getConferences($conference->id,$this->participant->id);
        
		// Set main template
		$data['main'] = 'dashboard';
				
		// Set site title page with module menu
		$data['page_title'] = 'My Dashboard';
		
		// Load admin template
		$this->load->view('template/public/template', $this->load->vars($data));

    }
    
    // Reload Captcha to the view
    public function reload_captcha() {

		// Send image to display Captcha
		$captcha = $this->Captcha->image();

		// Echo captcha Image
		echo $captcha['image'];
		exit;

    }
    
    public function logout() {
		
	    // Set user's last login 
	    $this->Participants->setLastLogin($this->participant->id);

	    // Destroy user session		
	    $this->session->unset_userdata('participant');

	    // Redirect admin to refresh
	    redirect(base_url());

    }
    
    // -------------- CALLBACK METHODS -------------- //

    // Match Email post to Database
    public function match_email($email) {		

		// Check email if empty
		if ($email == '') {
				$this->form_validation->set_message('match_email', 'The %s can not be empty.');
				return false;
		}
		// Check email if match
		else if ($this->Users->getUserEmail($email) == 1) {
				$this->form_validation->set_message('match_email', 'The %s is already taken.');			
				return false;
		} else {
				return true;
		} 

    }

    // Match Captcha post to Database
    public function match_captcha($captcha) {		
		
        // Check captcha if empty
		if ($captcha == '') {
            $this->form_validation->set_message('match_captcha', 'The %s code can not be empty.');
            return false;
		}
		// Check captcha if match
		else if (!$this->Captcha->match($captcha)) {
            $this->form_validation->set_message('match_captcha', 'The %s code not match.');
            return false;
        } else {
            return true;
        }
    }
}

/* End of file user.php */
/* Location: ./application/controllers/user.php */