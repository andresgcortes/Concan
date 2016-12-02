<?php

// No direct access
defined('_JEXEC') or die;

class AdministracionTableProveedores extends JTable{
	
	public function __construct(&$db){
				
		parent::__construct('#__core_proveedores', 'id', $db);
	
	}	
	
	public function check(){
		
		$db = JFactory::getDBO();
				
		// check for existing username
		$query = $db->getQuery(true);
		$query->select($db->quoteName('id'));
		$query->from($db->quoteName('#__core_proveedores'));
		$query->where($db->quoteName('nit') . ' = ' . $db->quote($this->nit));
		$query->where($db->quoteName('id') . ' != ' . (int) $this->id);
		$db->setQuery($query);

		$xid = intval($db->loadResult());
				
		if ($xid && $xid != intval($this->id)){
			
			$this->setError(JText::_('Proveedores Ya Ingresado'));
			return false;
		
		}
		
		return true;
	
	}
		
} ?>
