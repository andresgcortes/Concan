<?php 

defined('JPATH_BASE') or die;

jimport('joomla.html.html');
jimport('joomla.form.formfield');
jimport('joomla.form.helper');

JFormHelper::loadFieldClass('list');

class JFormFieldIdPropietario extends JFormFieldList{

	protected $type = 'idpropietario';

	protected function getOptions(){

		$data	= JRequest::getVar('concan', array(), 'post', 'array');
		
		// Initialize variables.	
		$options 	= array();
		$option		= array();
		
		if(!empty($data)){
	
			$db = JFactory::getDbo();
			
			$query = $db->getQuery(true);
			$query->select('a.id AS value, a.nombre AS text');
			$query->from('#__core_clientes AS a');
			$query->where('a.tipo_cliente = '. $data['tipo']);	
			$query->where('a.estado = 2');
			$query->order('a.nombre ASC');				
			
			// Get the options.
			$db->setQuery($query);
			$option = $db->loadAssocList();
				
			if(is_array($option) && !empty($option)){
				
				$options = Array('value' => '' , 'text'=> 'Seleccione Propietario');
				array_unshift($option, $options); 
				$options = array_merge(parent::getOptions(), $option);		
				
			}else{
				
				$options[] = JHtml::_('select.option', '', JText::_('Seleccione Propietario'));	
				$options = array_merge(parent::getOptions(), $options);
			
			}
		
		}
		
		return $options;

	}

} ?>