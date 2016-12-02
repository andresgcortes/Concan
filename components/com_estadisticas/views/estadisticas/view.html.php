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

class EstadisticasViewEstadisticas extends JViewLegacy{
	
	protected $form;
	protected $params;
	protected $state;
	protected $user;

	function display ($tpl = null){
		
		$this->user   = JFactory::getUser();
		
		/*$this->form   = $this->get('Form');
		$this->state  = $this->get('State');
		$this->params = $this->state->get('params');*/
				
		// Display the view
		parent::display($tpl);
	
	}

} ?>