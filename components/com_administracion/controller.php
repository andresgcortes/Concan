<?php
/**
* @package ConCan
* @author Andre sCortes
* @website 
* @email andres.cortes@gmail.com
* @copyright 
* @license 
**/

// no direct access
defined('_JEXEC') or die;

class AdministracionController extends JControllerLegacy{

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
					
					case 'canteras': 
						
						if($lName == 'default'){
							$model = $this->getModel('canteras');
						}else{
							$model = $this->getModel('cantera');
						}
					
					break;
							
					case 'materiales':					
						
						if($lName == 'default'){
							$model = $this->getModel('materiales');
						}else{
							$model = $this->getModel('material');
						}
				
					break;
					
					case 'clientes':					
						
						if($lName == 'default'){
							$model = $this->getModel('clientes');
						}else{
							$model = $this->getModel('cliente');
						}
				
					break;
					
					case 'proveedores':					
						
						if($lName == 'default'){
							$model = $this->getModel('proveedors');
						}else{
							$model = $this->getModel('proveedor');
						}
				
					break;
					
					case 'vehiculos':					
						
						if($lName == 'default'){
							$model = $this->getModel('vehiculos');
						}else{
							$model = $this->getModel('vehiculo');
						}
				
					break;
					
					case 'conductores':					
						
						if($lName == 'default'){
							$model = $this->getModel('conductores');
						}else{
							$model = $this->getModel('conductor');
						}
				
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