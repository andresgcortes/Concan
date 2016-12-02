<?php 

defined('JPATH_BASE') or die;

jimport('joomla.html.html');
jimport('joomla.form.formfield');
jimport('joomla.form.helper');

JFormHelper::loadFieldClass('list');

class JFormFieldMateriales extends JFormFieldList{

	protected $type = 'materiales';

	protected function getOptions(){

		$data	= JRequest::getVar('concan', array(), 'post', 'array');
		
		// Initialize variables.	
		$options = array();
		
		$db = JFactory::getDbo();
		
		$query = $db->getQuery(true);
		$query->select('a.id AS value, a.nombre AS text');
		$query->from('#__core_materiales AS a');
		
		if(!empty($data['id_cantera']) && isset($data['id_cantera'])){
			$query->join('inner', '#__core_canteras_rel_materiales As b ON a.id = b.id_material AND b.id_cantera ='. $data['id_cantera']);
		}
		
		$query->where('disabled = 0');
		$query->order('a.nombre ASC');				
		
		// Get the options.
		$db->setQuery($query);
		$option = $db->loadAssocList();
		
		if(is_array($option) && !empty($option)){
			
			$options = Array('value' => '' , 'text'=> 'Seleccione Material');
			array_unshift($option, $options); 
			$options = array_merge(parent::getOptions(), $option);		
			
		}else{
			
			$options[] = JHtml::_('select.option', '', JText::_('Seleccione Material'));	
			$options = array_merge(parent::getOptions(), $options);
		
		}
		
		return $options;

	}

} ?>