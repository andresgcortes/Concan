<?php

// No direct access.
defined('_JEXEC') or die;

use Joomla\Registry\Registry; 

JLoader::register('TFComforce', JPATH_LIBRARIES.'/tfcons/comforce.php');

class UsersModelUseradmin extends JModelAdmin{	
	
	public function __construct($config = array()){
		
		$config = array_merge(
			array(
				'event_after_delete'  => 'onUserAfterDelete',
				'event_after_save'    => 'onUserAfterSave',
				'event_before_delete' => 'onUserBeforeDelete',
				'event_before_save'   => 'onUserBeforeSave',
				'events_map'          => array('save' => 'user', 'delete' => 'user')
			), $config
		);

		parent::__construct($config);

		// Load the Joomla! RAD layer
		if(!defined('FOF_INCLUDED')){
			include_once JPATH_LIBRARIES . '/fof/include.php';
		}
	}
	
	/**
	 * Returns a reference to the a Table object, always creating it.
	 *
	 * @param	type	$type	The table type to instantiate
	 * @param	string	$prefix	A prefix for the table class name. Optional.
	 * @param	array	$config	Configuration array for model. Optional.
	 *
	 * @return	JTable	A database object
	 * @since	1.6
	*/
	public function getTable($type = 'user', $prefix = 'JTable', $config = array()){
				
		$table = JTable::getInstance($type, $prefix, $config);

		return $table;
	}

	/**
	 * Method to get a single record.
	 *
	 * @param	integer	$pk		The id of the primary key.
	 *
	 * @return	mixed	Object on success, false on failure.
	 * @since	1.6
	 */
	public function getItem($pk = null){
		
		$result = parent::getItem($pk);
		
		// Get the dispatcher and load the users plugins.
		$dispatcher	= JDispatcher::getInstance();
		JPluginHelper::importPlugin('user');

		// Trigger the data preparation event.
		$results = $dispatcher->trigger('onContentPrepareData', array('com_users.user', $result));
		
		return $result;
	
	
	}

	/**
	 * Method to get the record form.
	 *
	 * @param	array	$data		An optional array of data for the form to interogate.
	 * @param	boolean	$loadData	True if the form is to load its own data (default case), false if not.
	 * @return	JForm	A JForm object on success, false on failure
	 * @since	1.6
	 */
	public function getForm($data = array(), $loadData = true){
		// Initialise variables.
		
		
		$app = JFactory::getApplication();

		// Get the form.
		$form = $this->loadForm('com_users.user', 'user', array('control' => 'tfcons', 'load_data' => $loadData));
		if (empty($form)) {
			return false;
		}
		
		
		return $form;
	}

	/**
	 * Method to get the data that should be injected in the form.
	 *
	 * @return	mixed	The data for the form.
	 * @since	1.6
	 */
	protected function loadFormData(){

		$id	=	JRequest::getvar('id');
		
		if($id){	
		
			$db		= Jfactory::getDbo();
			
			$query	= $db->getQuery(true);
			$query->select('*');
			$query->from('#__users');
			$query->where('id = '.$id);
			$db->setQuery($query);
			
			$item	=	$db->loadObject();
				
			$this->state->set('select.area',$item->core_area);
			$this->state->set('select.rol',$item->core_rol);
		
		}
		
		// Check the session for previously entered form data.
		$data = JFactory::getApplication()->getUserState('com_users.edit.user.data', array());

		if (empty($data)) {
			$data = $this->getItem();
		}

		// TODO: Maybe this can go into the parent model somehow?
		// Get the dispatcher and load the users plugins.
		$dispatcher	= JDispatcher::getInstance();
		JPluginHelper::importPlugin('user');

		// Trigger the data preparation event.
		$results = $dispatcher->trigger('onContentPrepareData', array('com_users.profile', $data));

		// Check for errors encountered while preparing the data.
		if (count($results) && in_array(false, $results, true)) {
			$this->setError($dispatcher->getError());
		}

		return $data;
	}

	/**
	 * Override JModelAdmin::preprocessForm to ensure the correct plugin group is loaded.
	 *
	 * @param	object	$form	A form object.
	 * @param	mixed	$data	The data expected for the form.
	 * @param	string	$group	The name of the plugin group to import (defaults to "content").
	 *
	 * @throws	Exception if there is an error in the form event.
	 * @since	1.6
	 */
	protected function preprocessForm(JForm $form, $data, $group = 'user'){
		
		parent::preprocessForm($form, $data, $group);
	}

	/**
	 * Method to save the form data.
	 *
	 * @param	array	$data	The form data.
	 *
	 * @return	boolean	True on success.
	 * @since	1.6
	 */
	public function save($data){
		
		// Initialise variables;
		$pk		= (!empty($data['id'])) ? $data['id'] : (int) $this->getState('useradmin.id');
		$user	= JUser::getInstance($pk);
		$my 	= JFactory::getUser();
				
			if ($data['block'] && $pk == $my->id && !$my->block) {
				$this->setError(JText::_('COM_USERS_USERS_ERROR_CANNOT_BLOCK_SELF'));
				return false;
			}

			// Make sure that we are not removing ourself from Super Admin group
			$iAmSuperAdmin = $my->authorise('core.admin');
			
			if ($iAmSuperAdmin && $my->get('id') == $pk) {
				
				// Check that at least one of our new groups is Super Admin
				$stillSuperAdmin = false;
				$myNewGroups = $data['groups'];
				
				foreach ($myNewGroups as $group) {
					$stillSuperAdmin = ($stillSuperAdmin) ? ($stillSuperAdmin) : JAccess::checkGroup($group, 'core.admin');
				}
				
				if (!$stillSuperAdmin) {
					$this->setError(JText::_('COM_USERS_USERS_ERROR_CANNOT_DEMOTE_SELF'));
					return false;
				}
			
			}
			
			// Handle the two factor authentication setup
			if (array_key_exists('twofactor', $data)){
				
				$twoFactorMethod = $data['twofactor']['method'];

				// Get the current One Time Password (two factor auth) configuration
				$otpConfig = $this->getOtpConfig($pk);

				if ($twoFactorMethod != 'none')																						{
				
				// Run the plugins
				FOFPlatform::getInstance()->importPlugin('twofactorauth');
				$otpConfigReplies = FOFPlatform::getInstance()->runPlugins('onUserTwofactorApplyConfiguration', array($twoFactorMethod));

				// Look for a valid reply
				foreach ($otpConfigReplies as $reply){
					
					if (!is_object($reply) || empty($reply->method) || ($reply->method != $twoFactorMethod)){
						continue;
					}

					$otpConfig->method = $reply->method;
					$otpConfig->config = $reply->config;

					break;
				}

				// Save OTP configuration.
				$this->setOtpConfig($pk, $otpConfig);

				// Generate one time emergency passwords if required (depleted or not set)
				if (empty($otpConfig->otep)){
					$oteps = $this->generateOteps($pk);
				}
			
			}else{
					$otpConfig->method = 'none';
					$otpConfig->config = array();
					$this->setOtpConfig($pk, $otpConfig);
				}

				// Unset the raw data
				unset($data['twofactor']);

				// Reload the user record with the updated OTP configuration
				$user->load($pk);
			}
			
			// Bind the data.
			if (!$user->bind($data)){
				$this->setError($user->getError());
				return false;
			}

			// Store the data.
			if(!$user->save()){
				$this->setError($user->getError());
				return false;
			}
	
			$this->setState('useradmin.id', $user->id);
			
			return true;
		
	}
	
	public function SetGroups($id_rol, $id_user){
		
		$db 	= $this->getDbo(); 	
		$query 	= $db->getQuery(true);
		$query->delete();
		$query->from($db->quoteName('#__user_usergroup_map'));
		$query->where($db->quoteName('user_id') . ' = ' .$id_user);
		$db->setQuery($query);
		$db->execute();
		
		$rol['0']	= 2;
		$rol['1']	= 11;
		
		if($id_rol == 2){
			$rol['2']	= 12;
		}elseif($id_rol == 3){
			$rol['2']	= 13;
		}
		
		$n = count($rol); 
		
		$grupo = new stdClass;				
		
		for($i = 0; $i < $n; $i++){
		 
		   	$grupo->user_id 	= $id_user;
		   	$grupo->group_id 	= $rol[$i]; 
			    	
			if(!$db->insertObject('#__user_usergroup_map', $grupo, 'user_id')){
				return false;    
			}
		
		}
		
		return true; 
		
	}
		
	public function block(&$pks, $value = 1){
		
		// Initialise variables.
		$app		= JFactory::getApplication();
		$dispatcher	= JDispatcher::getInstance();
		$user		= JFactory::getUser();
        // Check if I am a Super Admin
		$iAmSuperAdmin	= $user->authorise('core.admin');
		$table		= $this->getTable();
		$pks		= (array) $pks;

		JPluginHelper::importPlugin('user');

		// Access checks.
		foreach ($pks as $i => $pk){
			
				if ($value == 1 && $pk == $user->get('id')) {
					// Cannot block yourself.
					unset($pks[$i]);
					JError::raiseWarning(403, JText::_('COM_USERS_USERS_ERROR_CANNOT_BLOCK_SELF'));

				}elseif($table->load($pk)) {
				
					$old	= $table->getProperties();
					$allow	= $user->authorise('core.edit.state', 'com_users');
					// Don't allow non-super-admin to delete a super admin
					$allow = (!$iAmSuperAdmin && JAccess::check($pk, 'core.admin')) ? false : $allow;

					// Prepare the logout options.
					$options = array(
						'clientid' => array(0, 1)
					);

					if($allow){
						
						// Skip changing of same state
						if ($table->block == $value) {
							unset($pks[$i]);
							continue;
						}

						$table->block = (int) $value;

						// Allow an exception to be thrown.
						try{
							
							if (!$table->check()) {
								$this->setError($table->getError());
								return false;
							}

							// Trigger the onUserBeforeSave event.
							$result = $dispatcher->trigger('onUserBeforeSave', array($old, false));
							if (in_array(false, $result, true)) {
								// Plugin will have to raise it's own error or throw an exception.
								return false;
							}

							// Store the table.
							if (!$table->store()) {
								$this->setError($table->getError());
								return false;
							}

							// Trigger the onAftereStoreUser event
							$dispatcher->trigger('onUserAfterSave', array($table->getProperties(), false, true, null));
						}
						
						catch (Exception $e)				{
						
						$this->setError($e->getMessage());

						return false;
					}

						// Log the user out.
						if($value)		{
						$app->logout($table->id, $options);
					}
					
					}else {
						// Prune items that you can't change.
						unset($pks[$i]);
						JError::raiseWarning(403, JText::_('JLIB_APPLICATION_ERROR_EDITSTATE_NOT_PERMITTED'));
					}
				}
			
		}

		return true;
	}
	
	public function getGroups(){
		
		$user = JFactory::getUser();
		
		//if ($user->authorise('core.edit', 'com_users') && $user->authorise('core.manage', 'com_users')){
			
			$model = JModelLegacy::getInstance('Groups', 'UsersModel', array('ignore_request' => true));
			return $model->getItems();
		//}
		/*else
		{
			return null;
		}*/
	}

	public function getAssignedGroups($userId = null){
	 	
		// Initialise variables.
		$userId = (!empty($userId)) ? $userId : (int)$this->getState('useradmin.id');

		if (empty($userId)) {
			$result = array();
			$config = JComponentHelper::getParams('com_users');
			if ($groupId = $config->get('new_usertype')) {
				$result[] = $groupId;
			}
		}
		else {
			jimport('joomla.user.helper');
			$result = JUserHelper::getUserGroups($userId);
		}

		return $result;
	}
		
}
