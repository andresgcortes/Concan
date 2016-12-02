<?php
/**
 * @version		$Id: users.php 20228 2011-01-10 00:52:54Z eddieajau $
 * @copyright	Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.controlleradmin');

jimport('joomla.application.component.view');

/**
 * Users list controller class.
 *
 * @package		Joomla.Administrator
 * @subpackage	com_users
 * @since		1.6
 */
class UsersControllerUserAdmins extends JControllerAdmin
{
	/**
	* @var		string	The prefix to use with controller messages.
	* @since	1.6
	*/
	protected $text_prefix = 'COM_USERS_USERS';

	/**
	* Constructor.
	*
	* @param	array An optional associative array of configuration settings.
	* @see		JController
	* @since	1.6
	*/
	public function __construct($config = array()){
		
		parent::__construct($config);

		$this->registerTask('block',		'changeBlock');
		$this->registerTask('unblock',		'changeBlock');
	
	}
	
	/**
	 * Proxy for getModel.
	 *
	 * @since	1.6
	 */
	public function getModel($name = 'Useradmin', $prefix = 'UsersModel', $config = array('ignore_request' => true)){
		
		return parent::getModel($name, $prefix, $config);
	}

	/**
	 * Method to remove a record.
	 *
	 * @since	1.6
	 */
	public function changeBlock(){
		
		// Check for request forgeries.
		JRequest::checkToken() or jexit(JText::_('JINVALID_TOKEN'));

		// Initialise variables.
		$ids	= JRequest::getVar('cid', array(), '', 'array');
		$values	= array('block' => 1, 'unblock' => 0);
		$task	= $this->getTask();
		$value	= JArrayHelper::getValue($values, $task, 0, 'int');

		if (empty($ids)) {
			$COM_USERS_USERS_NO_ITEM_SELECTED = "Sin usuarios seleccionados";
			JError::raiseWarning(500, $COM_USERS_USERS_NO_ITEM_SELECTED);
		} else {
			// Get the model.
			$model = $this->getModel();
		
			// Change the state of the records.
			if (!$model->block($ids, $value)) {
				JError::raiseWarning(500, $model->getError());
			} else {
				if ($value == 1){
					$COM_USERS_N_USERS_BLOCKED = "%s usuarios han sido bloqueados";
					$this->setMessage(JText::plural($COM_USERS_N_USERS_BLOCKED , count($ids)));
				} else if ($value == 0){
					$COM_USERS_N_USERS_UNBLOCKED="%s usuarios han sido habilitados";
					$this->setMessage(JText::plural($COM_USERS_N_USERS_UNBLOCKED, count($ids)));
				}
			}
		}
		
		$this->setRedirect(JRoute::_('index.php?option=com_users&view=useradmins'));
		
		return true; 
	
	}
	
}