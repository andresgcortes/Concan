<?php

// No direct access
defined('_JEXEC') or die;

class AdministracionTableConductores extends JTable{
	
	public function __construct(&$db){
				
		parent::__construct('#__core_conductores', 'id', $db);
	
	}	
	
	public function check(){
		
		$db = &JFactory::getDBO();
				
		// check for existing username
		$query = $db->getQuery(true);
		$query->select($db->quoteName('id'));
		$query->from($db->quoteName('#__core_conductores'));
		$query->where($db->quoteName('cedula') . ' = ' . $db->quote($this->cedula));
		$query->where($db->quoteName('id') . ' != ' . (int) $this->id);
		$db->setQuery($query);

		$xid = intval($db->loadResult());
				
		if ($xid && $xid != intval($this->id)){
			
			$this->setError(JText::_('Conductor Ya Ingresado'));
			return false;
		}
		
		return true;
	}
		
} ?>