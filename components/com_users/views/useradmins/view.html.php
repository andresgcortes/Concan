
<?php

// No direct access
defined('_JEXEC') or die;

class UsersViewUserAdmins extends JViewLegacy{
	
	protected $items;
	protected $pagination;
	protected $state;
	
	public function display($tpl = null){
		
		$this->items			= $this->get('Items');
		$this->pagination		= $this->get('Pagination');
		$this->state			= $this->get('State');
		$this->canDo         	= JHelperContent::getActions('com_users');
		$this->filterForm    	= $this->get('FilterForm');
		$this->activeFilters	= $this->get('ActiveFilters');
	  	
	  	// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}
		
		parent::display($tpl);
	}
 	
}
