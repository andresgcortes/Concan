<?php

/**
* @package Author
* @author 
* @website 
* @email 
* @copyright 
* @license 
**/

// no direct access

defined('_JEXEC') or die('Restricted access');

class OperacionViewOperacion extends JViewLegacy{
	
	protected $item;
	protected $form;
	protected $state;

	function display ($tpl = null){

		$this->item         	= $this->get('Item');
		$this->form         	= $this->get('Form');
		$this->state        	= $this->get('State');
		
		// Check for errors.
		if (count($errors = $this->get('Errors'))){			
			JLog::add(implode('<br />', $errors), JLog::WARNING, 'jerror');
			return false;
		}
				
		// Display the view
		parent::display($tpl);

	}

} ?>