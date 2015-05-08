<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

// Model Class Object for Conferences
class Conferences Extends CI_Model {
	// Table name for this model
	protected $table = 'conferences';
	
	public function __construct(){
		// Call the Model constructor
		parent::__construct();
		
		$this->_model_vars	= array(
						'id'			=> 0,
						'type'			=> '',

						'name'			=> '',
						'subject'		=> '',
						'description'	=> '',
						
						'open_date'		=> '',
						'close_place'	=> '',
						
						'is_fee'		=> 0,
						'is_submit'  	=> 0,
						'is_speaker'  	=> 0,
						'is_invitation'	=> 0,

						'registration_fee'	=> '',
						
						'photo'			=> '',
						
						
						'is_located'		=> 0,
						'is_related'		=> 0,

						'location'		=> '',
						
						'messages'		=> '',

						'user_id'		=> 0,
						'status'		=> '',

						'added'			=> 0,
						'modified'		=> 0);
		
		$this->db = $this->load->database('default', true);
		
		// Set default table
		$this->table = $this->db->dbprefix($this->table);
				
	}
	
	public function install() {
		
		$insert_data	= FALSE;

		if (!$this->db->table_exists($this->table)) 
                $insert_data	= TRUE;
                
		$sql	= 'CREATE TABLE IF NOT EXISTS `'.$this->table.'` ('
				.'`id` int(11) NOT NULL AUTO_INCREMENT, '
				.'`type` int(11) NOT NULL, '

				.'`name` varchar(128) NOT NULL, '
				.'`subject` varchar(128) NOT NULL, '
				.'`description` TEXT NULL, '

				.'`open_date` int(32) NOT NULL, '
				.'`close_date` char(32) NOT NULL, '


				.'`is_fee` tinyint(1) NOT NULL, '
				.'`is_submit` tinyint(1) NOT NULL, '
				.'`is_speaker` tinyint(1) NOT NULL, '
				.'`is_invitation` tinyint(1) NOT NULL, '
				

				.'`registration_fee` varchar(256) NOT NULL, '


				.'`photo` varchar(256) NOT NULL, '
				
				
				.'`is_located` tinyint(1) NOT NULL, '
				.'`is_related` tinyint(1) NOT NULL, '

				.'`messages` TEXT NULL, '
				
				.'`user_id` int(11) NOT NULL, '
				.'`status` ENUM(\'publish\', \'draft\', \'unpublish\') NULL DEFAULT \'publish\', '
				.'`added` int(11) NOT NULL, '
				.'`modified` int(11) NOT NULL, '
				.'PRIMARY KEY (`id`) '
				//.'UNIQUE KEY `name` (`name`) '
				.') ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1';
				
				
		$this->db->query($sql);
		
        if(!$this->db->query('SELECT * FROM `'.$this->table.'` LIMIT 0, 1;'))
			$insert_data	= TRUE;
		
		/*
		if ($insert_data) {
			$sql	= 'INSERT INTO `'.$this->table.'` (`id`, `division_id`, `name`, `sent_to`, `ref_no`, `start_date`, `end_date`, `synopsis`, `qualification`, `location`, `language`, `status`, `is_deleted`, `added`, `modified`)'
				    . ' VALUES '
				    . '(1, 13, \'Web Developer\', \'defrian@webarq.com\', \'234210\', 0, 0, \'Synopsis\', \'Qualification\', \'\', \'indonesia\', \'publish\', 0, '.time().', 1336032870),'
				    . '(2, 13, \'Web Designer\', \'defrian@webarq.com\', \'234211\', 0, 0, \'Synopsis\', \'Qualification\', \'\', \'english\', \'publish\', 0, '.time().', 1336032823);';

			$this->db->query($sql);
		}
		*/

		return $this->db->table_exists($this->table);
		
	}
	public function getCount($status = null){
		$data = array();
		$options = array('status' => $status);
		$this->db->where($options,1);
		$this->db->from($this->table);
		$data = $this->db->count_all_results();
		return $data;
	}
	public function getConference($id = null){
		if(!empty($id)){
			$data = array();
			$options = array('id' => $id);
			$Q = $this->db->get_where($this->table,$options,1);
			if ($Q->num_rows() > 0){
				foreach ($Q->result_object() as $row)
				$data = $row;
			}
			$Q->free_result();
			return $data;
		}
	}

	public function getConferenceLatest(){
		$data = array();
		$options = array('status' => 'publish');
		$Q = $this->db->get_where($this->table,$options,1);
		if ($Q->num_rows() > 0){
			foreach ($Q->result_object() as $row)
			$data = $row;
		}
		$Q->free_result();
		return $data;
	}
	
	public function getByParameter($param = null){
		if(!empty($param)){
			$data = array();
			$options = array('parameter' => $email);
			$Q = $this->db->get_where($this->table,$options,1);
			if ($Q->num_rows() > 0){
				foreach ($Q->result_object() as $row)
				$data = $row;
			}
			$Q->free_result();
			return $data;
		}
	}
	public function getAllConference($status=null){
		$data = array();
		$this->db->order_by('added');
		$Q = $this->db->get($this->table);
			if ($Q->num_rows() > 0){
				//foreach ($Q->result_object() as $row){
					//$data[] = $row;
				//}
				$data = $Q->result_object();
			}
		$Q->free_result();
		return $data;
	}
	public function setConference($object=null){
		
		// Set User data
		$data = array(			
				'parameter' => $object['username'],
				'alias' => $object['alias'],
				'value' => $object['value'],
				'is_system' => $object['is_system'],
				'added'		=> time(),	
				'status' => $object['status']
			    );
		
		// Insert User data
		$this->db->insert($this->table, $data);
		
		// Return last insert id primary
		$insert_id = $this->db->insert_id();					
			
		// Return last insert id primary
		return $insert_id;
		
	}
	public function setEmployeeId($object=null){
		
		// Set User data
		$data = array(			
				'user_id' => $object->user_id,
				'modified'=> time(),	
			    );
		
		// Check Conference id
		$this->db->where('id', $object->id);
		
		// Update User data
		return $this->db->update($this->table, $data);
		
	}
	public function deleteConference($id) {
		
		// Check Conference id
		$this->db->where('id', $id);
		
		// Delete setting form database
		return $this->db->delete($this->table);
		
	}	
}
