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

class OperacionController extends JControllerLegacy{
	
	public function display($cachable = true, $urlparams = false){

		$document	= JFactory::getDocument();

		// Set the default view name and format from the Request.
		$vName	 = JRequest::getCmd('view', 'canteras');
		$vFormat = $document->getType();
		$lName	 = JRequest::getCmd('layout', 'default');
		
		if ($view = $this->getView($vName, $vFormat)){
		
			// Do any specific processing by view.
			if($vName != "close"){
			
				switch ($vName) {
					
					case 'ordenesweb': 
						
						if($lName == 'default'){
							$model = $this->getModel('OrdenesWeb');
						}else{
							$model = $this->getModel('OrdenWeb');
						}
						
					break;
					
					case 'ordenespedido': 
					
						if($lName == 'default'){
							$model = $this->getModel('OrdenesPedido');
						}else{
							$model = $this->getModel('OrdenPedido');
						}
				
					break;
				
					case 'ordenesmaterial': 
					
						if($lName == 'default'){
							$model = $this->getModel('OrdenesMaterial');
						}else{
							$model = $this->getModel('OrdenMaterial');
						}
					
					break;
					
					case 'facturacion': 
												
						if($lName == 'default'){
							$model = $this->getModel('facturaciones');
						}else{
							$model = $this->getModel('facturacion');
						}
					 
					break;
					
					case 'operacion': 
					
						$model = $this->getModel('operacion');
							
					break;
					
					default:
				
						$this->setRedirect(JRoute::_('index.php', false));
					
					return;

				}
			
				$view->setModel($model, true);
				$view->setLayout($lName);

				// Push document object into the view.
				$view->assignRef('document', $document);
				$view->display();
		
			}else{
			
				// Check for edit form.
				parent::display();

				return $this;
			
			} // Push the model into the view (as default).
		
		}				

	}

} ?>