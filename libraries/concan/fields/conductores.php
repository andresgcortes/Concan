<?php 

defined('JPATH_BASE') or die;

jimport('joomla.html.html');
jimport('joomla.form.formfield');
jimport('joomla.form.helper');

JFormHelper::loadFieldClass('list');

class JFormFieldConductores extends JFormFieldList{

	protected $type = 'conductores';

	protected function getOptions(){

		// Initialize variables.	
		$options = array();
		
		$db = JFactory::getDbo();
		
		$query = $db->getQuery(true);
		$query->select('a.id AS value, a.nombre AS text');
		$query->from('#__core_conductores AS a');
		$query->where('a.disabled = 0');
		$query->order('a.nombre ASC');				
		
		// Get the options.
		$db->setQuery($query);
		$option = $db->loadAssocList();
		
		if(is_array($option) && !empty($option)){
			
			$options = Array('value' => '' , 'text'=> 'Seleccione Conductor');
			array_unshift($option, $options); 
			$options = array_merge(parent::getOptions(), $option);		
			
		}else{
			
			$options[] = JHtml::_('select.option', '', JText::_('Seleccione Vehículo'));	
			$options = array_merge(parent::getOptions(), $options);
		
		}
		
		return $options;

	}

} ?>