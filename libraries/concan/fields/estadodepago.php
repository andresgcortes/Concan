<?php 

defined('JPATH_BASE') or die;

jimport('joomla.html.html');
jimport('joomla.form.formfield');
jimport('joomla.form.helper');

JFormHelper::loadFieldClass('list');

class JFormFieldEstadodepago extends JFormFieldList{

	protected $type = 'estadodepago';

	protected function getOptions(){

		// Initialize variables.	
		$options = array();
		
		$db = JFactory::getDbo();
		
		$query = $db->getQuery(true);
		$query->select('a.id AS value, a.nombre AS text');
		$query->from('#__operacion_estado_factura AS a');
		$query->where('disabled = 0');
		$query->order('a.nombre ASC');				
		
		// Get the options.
		$db->setQuery($query);
		$option = $db->loadAssocList();
		
		if(is_array($option) && !empty($option)){
			
			$options = Array('value' => '' , 'text'=> 'Seleccione Estado de pago');
			array_unshift($option, $options); 
			$options = array_merge(parent::getOptions(), $option);		
			
		}else{
			
			$options[] = JHtml::_('select.option', '', JText::_('Seleccione Estado de pago'));	
			$options = array_merge(parent::getOptions(), $options);
		
		}
		
		return $options;

	}

} ?>