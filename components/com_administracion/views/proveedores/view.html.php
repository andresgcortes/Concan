<?php
/**
* @package Author
* @author 
* @website 
* @email 
* @copyright 
* @license 
**/

// no direct access
defined('_JEXEC') or die('Restricted access');

class AdministracionViewProveedores extends JViewLegacy{
	
	protected $items;
	protected $pagination;
	
	protected $item;
	protected $form;
	protected $state;

	function display ($tpl = null){
				
		$this->items         = $this->get('Items');
		$this->pagination    = $this->get('Pagination');
		
		$this->item         = $this->get('Item');
		$this->form         = $this->get('Form');
		
		$this->state         = $this->get('State');
				
		/*$this->filterForm    = $this->get('FilterForm');
		$this->activeFilters = $this->get('ActiveFilters');*/
				
		// Check for errors.
		if (count($errors = $this->get('Errors'))){			
			JLog::add(implode('<br />', $errors), JLog::WARNING, 'jerror');
			return false;
		}
				
		if(!empty($this->items)){			
			foreach ($this->items as &$item){
				$this->ordering[$item->id][] = $item->id;
			}
		
		}
		
		// Display the view
		parent::display($tpl);
	}

} ?>