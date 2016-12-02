<?php

defined('_JEXEC') or die;

use Joomla\Utilities\ArrayHelper;

class OperacionControllerOperacion extends JControllerForm{	
	
	public function __construct($config = array()){

		parent::__construct($config);
		
		$this->registerTask('apply', 	'save');
		$this->registerTask('unpublish', 'publish');

		$this->registerTask('AprobarOrden',  'ReglasNegocio');
		$this->registerTask('Cancelacion',  'ReglasNegocio');
		$this->registerTask('PorCobrar',  'ReglasNegocio');
		$this->registerTask('Realizado',  'ReglasNegocio');
		$this->registerTask('Novedad',  'ReglasNegocio');

	}
		
    function save($key = NULL, $urlVar = NULL){
				
		// Check for request forgeries.
		JSession::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
		
		$app	= JFactory::getApplication();
		$model	= $this->getModel('operacion');
		$form	= $model->getForm();
		$data	= JRequest::getVar('concan', array(), 'post', 'array');
		$id		= JRequest::getInt('id');
		$option	= JRequest::getCmd('option');
		
		/*if (!JFactory::getUser()->authorise('core.create', $option)){
			JFactory::getApplication()->redirect('index.php', JText::_('JERROR_ALERTNOAUTHOR'));
			return;
		}*/
				
		// Validate the posted data.
		/*$return = $model->validate($form, $data);
		
		if ($return === false) {
			// Get the validation messages.
			$errors	= $model->getErrors();

			// Push up to three validation messages out to the user.
			for ($i = 0, $n = count($errors); $i < $n && $i < 3; $i++) {
				if ($errors[$i] instanceof Exception) {
					$app->enqueueMessage($errors[$i]->getMessage(), 'warning');
				} else {
					$app->enqueueMessage($errors[$i], 'warning');
				}
			}

			// Save the data in the session.
			$app->setUserState('com_operacion.edit.ordenespedido.global', $data);

			// Redirect back to the edit screen.
			$this->setRedirect(JRoute::_('index.php?option=com_operacion&view=operacion&layout=edit', false));
			
			return false;
		
		}*/
		
		$return = $model->save($data);
		
		if ($return === false){
			
			$errors	= $model->getErrors();

			// Push up to three validation messages out to the user.
			for ($i = 0, $n = count($errors); $i < $n && $i < 3; $i++) {
				if ($errors[$i] instanceof Exception) {
					$app->enqueueMessage($errors[$i]->getMessage(), 'warning');
				} else {
					$app->enqueueMessage($errors[$i], 'warning');
				}
			}

			// Save the data in the session.
			$app->setUserState('com_operacion.edit.ordenespedido.global', $data);

			// Save failed, go back to the screen and display a notice.
			$message = JText::sprintf('Error al Guardar la información', $model->getError());
			
			$this->setRedirect(JRoute::_('index.php?option=com_operacion&view=operacion&layout=edit', false));
			
			return false;
		
		}		
	
		// Set the redirect based on the task.
		switch ($this->getTask()){
			
			case 'apply':
				$message = JText::_('Placa Correctamente');
				$this->setRedirect(JRoute::_('index.php?option=com_operacion&view=operacion&layout=edit&id='.$model->GetState('ordnespedido.id')), $message);
				break;

			case 'save':
				$message = JText::_('Placa Correctamente');
				$this->setRedirect(JRoute::_('index.php?option=com_operacion&view=operacion&layout=edit&id='.$model->GetState('ordnespedido.id')), $message);
				break;
			
		}

		return true;
	}
	
	public function ReglasNegocio(){

		JSession::checkToken() or jexit(JText::_('JINVALID_TOKEN'));		
		
		$app		= JFactory::getApplication();
		$model		= $this->getModel('operacion');
		$data		= JRequest::getVar('concan', array(), 'post', 'array');
		$dato['id']	= JRequest::getInt('id');
		
		switch ($this->getTask()){
			
			case 'AprobarOrden':
				
				$dato['id_estado']	= 2;
				
				$db = 	JFactory::getDbo();
				
				$query = $db->getQuery(true);  
				$query->select('cantidad, id_cantera, id_material');
				$query->from('#__operacion_ordenes_pedido AS a');
				$query->where('a.id = '. $dato['id']);
				$db->setQuery($query);
				$cantidad = $db->loadObject();
				
				$query = $db->getQuery(true);
		        $query->update('#__core_canteras_rel_materiales');
		        $query->set('cantidad = (cantidad - '. $cantidad->cantidad .')');
		        $query->where("id_cantera = ". $cantidad->id_cantera ." AND id_material =  ". $cantidad->id_material);
		        $db->setQuery($query);
				$db->execute(); 
						
				$message = 'Orden Correctamente Aprobada';
			
			break; 
			
			case 'Cancelacion':
			
				$dato['id_estado']	= 3;
				
				$message = 'Orden Cancelada Correctamente';
			
			break;
			
			case 'PorCobrar':
			
				$dato['estado_factura']	= 3;
				
				$message = 'Orden en estado de Facturación por Cobrar';
			
			break;
			
			case 'Realizado':
			
				$dato['estado_factura']	= 2;
				
				$message = 'Orden en estado de Facturación por Cobrar';
			
			break;
			
			case 'Novedad':
			
				$dato['id_estado']	= 4;
				
				$model->Setnovedad($data);
				
				$message = 'Nueva Novesas Creada';
			
			break;

		}		
		
		$model->SetEstadoProceso($dato);

		$this->setRedirect(JRoute::_('index.php?option=com_operacion&view=ordenespedido&layout=edit&id='.$dato['id'],false), $message);

		return true; 			
		
	}
		
} ?>