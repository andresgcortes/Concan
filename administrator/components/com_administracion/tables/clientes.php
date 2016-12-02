<?php

// No direct access
defined('_JEXEC') or die;

class AdministracionTableClientes extends JTable{
	
	public function __construct(&$db){
				
		parent::__construct('#__core_clientes', 'id', $db);
	
	}	
	
	public function check(){
		
		$db = &JFactory::getDBO();
				
		// check for existing username
		$query = $db->getQuery(true);
		$query->select($db->quoteName('id'));
		$query->from($db->quoteName('#__core_clientes'));
		$query->where($db->quoteName('nit') . ' = ' . $db->quote($this->nit));
		$query->where($db->quoteName('id') . ' != ' . (int) $this->id);
		$db->setQuery($query);

		$xid = intval($db->loadResult());
				
		if ($xid && $xid != intval($this->id)){
			
			$this->setError(JText::_('Cliente ya Ingresado'));
			return false;
		}
		
		return true;
	}
		
} ?>