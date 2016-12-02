<?php 

defined('JPATH_BASE') or die;

jimport('joomla.html.html');
jimport('joomla.form.formfield');
jimport('joomla.form.helper');

JFormHelper::loadFieldClass('list');

class JFormFieldClientes extends JFormFieldList{

	protected $type = 'clientes';

	protected function getOptions(){

		// Initialize variables.	
		$options = array();

		$db = JFactory::getDbo();
		
		$data		= JRequest::getVar('concan', array(), 'post', 'array');
		$id_cantera = JFactory::getUser()->id_cantera;
		
		$query = $db->getQuery(true);
		
		$query->select('a.id AS value, a.nombre AS text');
		$query->from('#__core_clientes AS a');
		
		if($data['id_orden'] == 1 || isset($data['id_orden'])){	
			$query->where('estado = 2');		
		}elseif($data['id_orden'] == 2){			
			$query->where('estado = 1');
		}
		
		$query->where('id_cantera = '. $id_cantera);
		$query->order('a.nombre ASC');				
			
		// Get the options.
		$db->setQuery($query);
		$option = $db->loadAssocList();
		
		if(is_array($option) && !empty($option)){
			
			if($data['id_orden'] == 1 || empty($data['id_orden'])){				
				$options = Array('value' => '' , 'text'=> 'Seleccione Cliente');
			}elseif($data['id_orden'] == 2){
				$options = Array('value' => '' , 'text'=> 'Seleccione Proveedor');			
			}
			
			array_unshift($option, $options); 
			$options = array_merge(parent::getOptions(), $option);		
			
		}else{
			
			if($data['id_orden'] == 1 || empty($data['id_orden'])){				
				$options[] = JHtml::_('select.option', '', JText::_('Seleccione Cliente'));		
			}elseif($data['id_orden'] == 2){
				$options[] = JHtml::_('select.option', '', JText::_('Seleccione Proveedor'));				
			}
			
			$options = array_merge(parent::getOptions(), $options);
		
		}
				
		return $options;

	}

}
