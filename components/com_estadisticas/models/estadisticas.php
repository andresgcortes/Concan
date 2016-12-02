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

class EstadisticasModelEstadisticas extends JModelForm{

	protected $msg;
	
	public function getForm($data = array(), $loadData = true){
		
		// Get the form.
		$form = $this->loadForm('com_estadisiticas.estadisiticas', 'estadisiticas', array('load_data' => $loadData));

		if (empty($form)){
			return false;
		}

		return $form;
	}
	
	protected function loadFormData(){
		
		return $data;
	
	}

} ?>