<?php 

defined('JPATH_BASE') or die;

jimport('joomla.html.html');
jimport('joomla.form.formfield');
jimport('joomla.form.helper');

JFormHelper::loadFieldClass('list');

class JFormFieldCantera extends JFormFieldList{

	protected $type = 'cantera';

	protected function getOptions(){

		// Initialize variables.	
		$options = array();

		$db = JFactory::getDbo();
		
		$query = $db->getQuery(true);
		$query->select('a.id AS value, a.nombre AS text');
		$query->from('#__core_canteras AS a');
		$query->where('disabled = 0');
		$query->order('a.nombre ASC');				
			
		// Get the options.
		$db->setQuery($query);
		$option = $db->loadAssocList();
		
		if(is_array($option) && !empty($option)){
			
			$options = Array('value' => '' , 'text'=> 'Seleccione Cantera');
			array_unshift($option, $options); 
			$options = array_merge(parent::getOptions(), $option);		
			
		}else{
			$options[] = JHtml::_('select.option', '', JText::_('Seleccione Cantera'));	
			$options = array_merge(parent::getOptions(), $options);
		}
				
		return $options;

	}

}
