<?php

defined('_JEXEC') or die;

class UsersViewUserAdmin extends JViewLegacy{

	protected $form;
	protected $item;
	protected $grouplist;
	protected $groups;
	protected $state;

	public function display($tpl = null){
		
		$this->form				= $this->get('Form');		
		$this->item				= $this->get('Item');
		$this->grouplist		= $this->get('Groups');
		$this->groups			= $this->get('AssignedGroups');
		$this->state			= $this->get('State');
		$this->select_companie 	= $this->get('Selectcompanie');
		$this->select_area 		= $this->get('Selectarea');
		$this->select_cargo 	= $this->get('Selectcargo');
		
		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}
				
		$this->form->setValue('password',	null);
		$this->form->setValue('password2',	null);

		parent::display($tpl);
	
	}

}
