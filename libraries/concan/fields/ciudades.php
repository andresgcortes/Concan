<?php 

defined('JPATH_BASE') or die;

jimport('joomla.html.html');
jimport('joomla.form.formfield');
jimport('joomla.form.helper');

JFormHelper::loadFieldClass('groupedlist');

class JFormFieldCiudades extends JFormFieldGroupedList{

	protected $type = 'GroupedList';

	protected function getGroups(){
		
		$options 	= array();
		$data	= JRequest::getVar('concan', array(), 'post', 'array');
		
		if(isset($data['departamento']) || isset($data['pais'])){
		
			$db = JFactory::getDbo();
		
			$query = $db->getQuery(true);
		
			if((isset($data['pais']) && $data['pais'] == 'COL') || isset($data['departamento'])){
				
				$query->select('a.id AS value, a.name AS text');
				$query->from('#__core_departamento AS a');		
				
				if(isset($data['departamento'])){
					$query->where('a.id = '. $data['departamento']);		
				}
						
				$query->order('a.name ASC');		
				
			}else{
				
				$query->select('a.Code AS value, a.Name AS text');
				$query->from('#__core_paises AS a');				
				$query->where('a.Code = "'. $data['pais'] .'"');		
							
			}
		
			$db->setQuery($query);
			$areas = $db->loadObjectList();
		
			foreach($areas AS $area){
				
				$query = $db->getQuery(true);
				$query->select('a.Id AS value, a.Name AS text');
				$query->from('#__core_ciudades AS a');
				
				if($data['pais'] == 'COL' || isset($data['departamento'])){
					$query->where('a.geo_depart_id = '. $area->value);		
				}else{		
						
					if(isset($data['pais'])){
						$query->where('a.CountryCode = '. $db->quote($area->value));		
					}
				}
				
				$query->order('a.name ASC');
				
				// Get the options.
				$db->setQuery($query);
				
				$option[$area->text] = $db->loadObjectList();
					
			}
		
		}
		
		$options = array_merge(parent::getGroups(), $option);
				
		return $options;

	}

}

