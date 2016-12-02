<?php

defined('_JEXEC') or die;

use Joomla\Utilities\ArrayHelper;

class OperacionControllerOrdenesWeb extends JControllerForm{	
	
	public function __construct($config = array()){

		parent::__construct($config);
		
		$this->registerTask('apply', 	'save');
		$this->registerTask('unpublish', 'publish');

	}
		
    function save($key = NULL, $urlVar = NULL){
				
		// Check for request forgeries.
		JSession::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
		
		$app	= JFactory::getApplication();
		$model	= $this->getModel('ordenweb');
		$form	= $model->getForm();
		$data	= JRequest::getVar('concan', array(), 'post', 'array');
		$id		= JRequest::getInt('id');
		$option	= JRequest::getCmd('option');
		
		/*if (!JFactory::getUser()->authorise('core.create', $option)){
			JFactory::getApplication()->redirect('index.php', JText::_('JERROR_ALERTNOAUTHOR'));
			return;
		}*/
				
		// Validate the posted data.
		$return = $model->validate($form, $data);
		
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
			$app->setUserState('com_operacion.edit.ordenesweb.global', $data);

			// Redirect back to the edit screen.
			$this->setRedirect(JRoute::_('index.php', false));
			
			return false;
		
		}
		
		$return = $model->save($data);
		
		if($return === false){
			
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
			
			$this->setRedirect(JRoute::_('index.php', false));
			
			return false;
		
		}		
			
		// Set the redirect based on the task.
		switch ($this->getTask()){
			
			case 'apply':
				$message = JText::_('Orden Guardada Correctamente');
				$this->setRedirect(JRoute::_('http://www.kcarisma.com/concan/'), $message);
				break;

			case 'save':
				
				$message = JText::_('Orden Guardada Correctamente');
				$this->setRedirect(JRoute::_('index.php'), $message);
				break;
			
		}

		return true;
	}
		
} ?>