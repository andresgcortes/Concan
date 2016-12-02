<?php 

defined('JPATH_BASE') or die;

jimport('joomla.html.html');
jimport('joomla.form.formfield');
jimport('joomla.form.helper');

JFormHelper::loadFieldClass('list');

class JFormFieldPaises extends JFormFieldList{

	protected $type = 'paises';

	protected function getOptions(){

		// Initialize variables.	
		$options = array();

		$db = JFactory::getDbo();
		
		$query = $db->getQuery(true);
		$query->select('a.Code AS value, a.Name AS text');
		$query->from('#__core_paises AS a');				
		$query->order('a.name ASC');				
			
		// Get the options.
		$db->setQuery($query);
		$option = $db->loadAssocList();
		
		if(is_array($option) && !empty($option)){
			$options = Array('value' => '' , 'text'=> 'Seleccione País');
			array_unshift($option, $options); 
			$options = array_merge(parent::getOptions(), $option);		
		}else{
			$options[] = JHtml::_('select.option', '', JText::_('Seleccione País'));	
			$options = array_merge(parent::getOptions(), $options);
		}
				
		return $options;

	}

}
