<?php

// No direct access
defined('_JEXEC') or die;

class AdministracionTableVehiculos extends JTable{
	
	public function __construct(&$db){
				
		parent::__construct('#__core_vehiculos', 'id', $db);
	
	}	
	
	public function check(){
		
		$db = &JFactory::getDBO();
				
		// check for existing username
		$query = $db->getQuery(true);
		$query->select($db->quoteName('id'));
		$query->from($db->quoteName('#__core_vehiculos'));
		$query->where($db->quoteName('placas') . ' = ' . $db->quote($this->placas));
		$query->where($db->quoteName('id') . ' != ' . (int) $this->id);
		$db->setQuery($query);

		$xid = intval($db->loadResult());
				
		if ($xid && $xid != intval($this->id)){
			
			$this->setError(JText::_('Placa ya Ingresada'));
			return false;
		}
		
		return true;
	}
		
} ?>