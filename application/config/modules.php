<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
				
//======================== Administrator Access - start config - ========================//

$config['module_list.models']		= array('admin/ModuleLists');
$config['module_list.module_menu']	= array('modulelist/index'  => 'Module List');
$config['module_list.module_function']	= array(
											'modulelist/edit'   => 'Edit Module',
											'modulelist/trash'	=> 'Delete User Permission'
											);

/* MODULE MENU 
 * 
 * Current MENU is only set to user and setting
 * Accessed by administrators only
 * 
 */

// Module Menu List
$config['admin_list.module_menu']	= array(
						'userhistory/index' => 'User Histories',
						'dashboard/index'   => 'Dashboard Panel',
						'user/index'	    => 'Users',
						'usergroup/index'   => 'User Groups',
						'language/index'    => 'Languages',
						'setting/index'	    => 'Settings'
						);
									
/* MODULE FUNCTION
 * 
 * Current FUNCTION is only set to user and setting
 * Accessed by administrators only
 */

// Module Function Menu List
$config['admin_list.module_function']	= array(
						'dashboard/add'	    => 'Add New Dashboard',
						'dashboard/view'    => 'View Dashboard',
						'dashboard/edit'    => 'Edit Dashboard',
						'dashboard/delete'  => 'Delete Dashboard',
						);

//======================== Administrator Access - end config - ========================//

// Default modules
$config['modulelist'] = array(	
	// Admin module
	'Admin' => array(
		// Admin Models list
		'models'	=> array(
					'admin/Users',
					'admin/UserProfiles',
					'admin/UserHistories',
					'admin/ModulePermissions',
					'admin/UserGroupPermissions',
					//'admin/Languages',
					'admin/Settings',
					//'admin/ServerLogs',
					'admin/Sessions'
        ),
		// Admin module menus
		'module_menu'	=> array(
					// Dashboard index
					'dashboard/index'   => 'Dashboard Panel',
					// User index
					'user/index'	    => 'Users',
					// User Group index
					'usergroup/index'   => 'User Groups',
					// Language index
					// 'language/index'     => 'Languages',
					// Setting index
					'setting/index'     => 'Settings',
					// Server Log index
					// 'serverlog/index'   => 'Server Logs'
        ),
		// Admin module functions
		'module_function'	=> array(
                    // Dashboard functions
                    'dashboard/add'	    => 'Add New Dashboard',
                    'dashboard/view'    => 'View Dashboard',
                    'dashboard/edit'    => 'Edit Dashboard',
                    'dashboard/delete'  => 'Delete Dashboard',
                    'dashboard/change'  => 'Change Dashboard Status',
                    // User functions
                    'user/add'	    => 'Add User',
                    'user/view'	    => 'View User',
                    'user/edit'	    => 'Edit User',
                    'user/delete'	=> 'Delete User',
                    'user/change'	=> 'Change User Status',
                    'user/image'	=> 'Change User Image', /** Upload temp user image **/
                    'user/upload'	=> 'Upload User Image', /** Upload user image **/
                    // User Group functions
                    'usergroup/add'	    => 'Add User Group',
                    'usergroup/view'    => 'View User Group',
                    'usergroup/edit'    => 'Edit User Group',
                    'usergroup/delete'  => 'Delete User Group',
                    'usergroup/change'  => 'Change User Group Status',
                    /*
                    // Language functions
                    'language/add'	    => 'Add Language',
                    'language/view'	    => 'View Language',
                    'language/edit'	    => 'Edit Language',
                    'language/delete'   => 'Delete Language',
                    'language/change'   => 'Change Language Status',
                     */
                    // Setting functions
                    'setting/add'	    => 'Add Setting',
                    'setting/view'	    => 'View Setting',
                    'setting/edit'	    => 'Edit Setting',
                    'setting/delete'    => 'Delete Setting',
                    'setting/change'    => 'Change Setting Status',
                    /*
                    // Server Log functions
                    'serverlog/view'	=> 'View Server Log',
                    'serverlog/edit'	=> 'Edit Server Log',
                    'serverlog/delete'	=> 'Delete Server Log',
                    'serverlog/trash'	=> 'Trash Server Log'
                     */
        )
	),
	// Page module
	'Page' => array (
		// Page Models list
		'models'	=> array('page/PageMenus','page/Pages'),
		// Page module menus
		'module_menu'	=> array(
                    'pagemenu/index'	=> 'Menus',
                    'page/index'		=> 'Pages'
        ),
		// Page module functions
		'module_function'	=> array(
						// Page functions
                    'page/index/add'	=> 'Add Page',							
                    'page/index/view'	=> 'View Page',
                    'page/index/edit'	=> 'Edit Page',
                    'page/index/delete'	=> 'Delete Page',
                    'page/index/change'	=> 'Change Page Status',
                    'page/index/export'	=> 'Export Page',
                    'page/index/print'	=> 'Print Page',
                    // Page Menu functions
                    'pagemenu/index/add'	=> 'Add Page Menu',
                    'pagemenu/index/view'	=> 'View Page Menu',
                    'pagemenu/index/edit'	=> 'Edit Page Menu',
                    'pagemenu/index/delete'	=> 'Delete Page Menu',
                    'pagemenu/index/change'	=> 'Change Page Menu Status',
                    'pagemenu/index/export'	=> 'Export Page Menu',
                    'pagemenu/index/print'	=> 'Print Page Menu'
        ),
	),
	// Conference module
	'Conference' => array (
		// Career Models list
		'models'		=> array('conference/Conferences','conference/Dates','conference/Speakers','conference/Informations','conference/Schedules','conference/Submissions','conference/Gallery'),
		// Career module menus
		'module_menu'	=> array(
                    'conference/index'	=> 'Conferences',
                    'conference_date/index'	=> 'Conference Date',
                    'speaker/index'     => 'Speaker',
                    'information/index'	=> 'Informations',
                    'schedule/index'	=> 'Schedules',
                    'submission/index'	=> 'Submissions'
        ),
		// Conference module functions
		'module_function'	=> array(
                // Conference functions
                'conference/index/add'	=> 'Add Conference',
                'conference/index/view'	=> 'View Conference',
                'conference/index/edit'	=> 'Edit Conference',
                'conference/index/delete'	=> 'Delete Conference',
                'conference/index/change'	=> 'Change Conference Status',
                'conference/index/export'	=> 'Export Conference',
                'conference/index/print'	=> 'Print Conference',
                // Speaker functions
                'speaker/index/add'     => 'Add Speaker',
                'speaker/index/view'	=> 'View Speaker',
                'speaker/index/edit'	=> 'Edit Speaker',
                'speaker/index/delete'	=> 'Delete Speaker',
                'speaker/index/change'	=> 'Change Speaker Status',
                'speaker/index/export'  => 'Export Speaker',
                'speaker/index/print'	=> 'Print Speaker',
                // Informations functions
                'information/index/add'     => 'Add Information',
                'information/index/view'	=> 'View Information',			
                'information/index/edit'	=> 'Edit Information',			
                'information/index/delete'  => 'Delete Information',
                'information/index/change'  => 'Change Information',
                'information/index/export'  => 'Export Information',
                'information/index/print'	=> 'Print Information',
                // Schedule functions
                'schedule/index/add'	=> 'Add Schedule',
                'schedule/index/view'	=> 'View Schedule',			
                'schedule/index/edit'	=> 'Edit Schedule',			
                'schedule/index/delete' => 'Delete Schedule',
                'schedule/set'			=> 'Set to Schedule',
                'schedule/index/change' => 'Change Schedule',
                'schedule/index/export' => 'Export Schedule',
                'schedule/index/print'	=> 'Print Schedule',

                // Conferences Submissions functions
                'conference/submission/index/add'	=> 'Add Submission',
                'conference/submission/index/view'	=> 'View Submission',			
                'conference/submission/index/edit'	=> 'Edit Submission',			
                'conference/submission/index/delete' => 'Delete Submission',
                'conference/submission/index/change' => 'Change Submission',
                'conference/submission/index/export' => 'Export Submission',
                'conference/submission/index/print'	=> 'Print Submission',

                // Conferences Gallery functions
                'conference_gallery/index'	=> 'Gallery',
                'conference_gallery/index/add'	=> 'Add Gallery',
                'conference_gallery/index/view'	=> 'View Gallery',			
                'conference_gallery/index/edit'	=> 'Edit Gallery',			
                'conference_gallery/index/delete' => 'Delete Gallery',
                'conference_gallery/index/change' => 'Change Gallery',
                'conference_gallery/index/export' => 'Export Gallery',
                'conference_gallery/index/print'	=> 'Print Gallery'
                ),
	),
    // Participant Module
    'Participant' => array(// Career Models list
		'models'    => array('participant/Participants','participant/Attachments'),
		// Participant module menus
		'module_menu'		=> array(
                    'participant/index' => 'Participant',
                    'attachment/index'	=> 'Attachment'
        ),
		// Participant module functions
		'module_function'	=> array(
                    // Participant functions
                    'participant/index/add'	    => 'Add Participant',
                    'participant/index/view'    => 'View Participant',
                    'participant/index/edit'    => 'Edit Participant',
                    'participant/index/delete'  => 'Delete Participant',
                    'participant/index/change'  => 'Change Participant Status',
                    'participant/index/export'  => 'Export Participant',
                    'participant/index/print'   => 'Print Participant',
                    // Attachment functions
                    'attachment/index/add'	=> 'Add Attachment',
                    'attachment/index/view'    => 'View Attachment',
                    'attachment/index/edit'    => 'Edit Attachment',
                    'attachment/index/delete'  => 'Delete Attachment',
                    'attachment/index/change'  => 'Change Attachment Status',
                    'attachment/index/export'  => 'Export Attachment',
                    'attachment/index/print'   => 'Print Attachment',
        )
	),
	// Region module
	'Region' => array (
		// Region Models list
		'models'		=> array('region/Countries','region/Provinces','region/SubUrbans','region/UrbanDistricts','region/Districts'),
		// Region module menus
		'module_menu'	=> array(
                'country/index'			=> 'Country',
                'province/index'		=> 'Province',
                'urbandistrict/index'	=> 'Urban District',
                'suburban/index'		=> 'Sub Urban',
                'district/index'		=> 'District',
        ),
		// Region module functions
		'module_function'	=> array(
                // Country functions
                'country/index/add'		=> 'Add Country',							
                'country/index/view'	=> 'View Country',
                'country/index/edit'	=> 'Edit Country',
                'country/index/delete'	=> 'Delete Country',
                'country/index/change'	=> 'Change Country Status',
                'country/index/export'	=> 'Export Country',
                'country/index/print'	=> 'Print Country',
                // Province functions
                'province/index/add'	=> 'Add Province',							
                'province/index/view'	=> 'View Province',
                'province/index/edit'	=> 'Edit Province',
                'province/index/delete'	=> 'Delete Province',
                'province/index/change'	=> 'Change Province Status',
                'province/index/export'	=> 'Export Province',
                'province/index/print'	=> 'Print Province',
                // Urban District functions
                'urbandistrict/index/add'	=> 'Add Urban District',
                'urbandistrict/index/view'	=> 'View Urban District',
                'urbandistrict/index/edit'	=> 'Edit Urban District',
                'urbandistrict/index/delete'	=> 'Delete Urban District',
                'urbandistrict/index/change'	=> 'Change Urban District Status',
                'urbandistrict/index/export'	=> 'Export Urban District',
                'urbandistrict/index/print'	=> 'Print Urban District',
                // Sub District functions
                'suburban/index/add'	=> 'Add Sub Urban',
                'suburban/index/view'	=> 'View Sub Urban',
                'suburban/index/edit'	=> 'Edit Sub Urban',
                'suburban/index/delete'	=> 'Delete Sub Urban',
                'suburban/index/change'	=> 'Change Sub Urban Status',
                'suburban/index/export'	=> 'Export Sub Urban',
                'suburban/index/print'	=> 'Print Sub Urban',
                // District functions
                'district/index/add'	=> 'Add District',
                'district/index/view'	=> 'View District',
                'district/index/edit'	=> 'Edit District',
                'district/index/delete'	=> 'Delete District',
                'district/index/change'	=> 'Change District Status',
                'district/index/export'	=> 'Export District',
                'district/index/print'	=> 'Print District',
        ),
	),
);


/* End of file modules.php */
/* Location: ./application/config/modules.php */