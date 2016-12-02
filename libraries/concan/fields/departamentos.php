<?php 

defined('JPATH_BASE') or die;

jimport('joomla.html.html');
jimport('joomla.form.formfield');
jimport('joomla.form.helper');

JFormHelper::loadFieldClass('list');

class JFormFieldDepartamentos extends JFormFieldList{

	protected $type = 'departamentos';

	protected function getOptions(){

		// Initialize variables.	
		$options = array();

		$db = JFactory::getDbo();
		
		$query = $db->getQuery(true);
		$query->select('a.id AS value, a.name AS text');
		$query->from('#__core_departamento AS a');				
		$query->order('a.name ASC');				
			
		// Get the options.
		$db->setQuery($query);
		$option = $db->loadAssocList();
		
		if(is_array($option) && !empty($option)){
			$options = Array('value' => '' , 'text'=> 'Seleccione Departamento');
			array_unshift($option, $options); 
			$options = array_merge(parent::getOptions(), $option);		
		}else{
			$options[] = JHtml::_('select.option', '', JText::_('Seleccione Departamento'));	
			$options = array_merge(parent::getOptions(), $options);
		}
				
		return $options;

	}

}
