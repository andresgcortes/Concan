<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_tags
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

use Joomla\Utilities\ArrayHelper;

class AdministracionControllerCantera extends JControllerForm{	
		
    public function __construct($config = array()){

		parent::__construct($config);
		
		$this->registerTask('apply', 	'save');
		$this->registerTask('unpublish', 'publish');

	}
		
    function save($key = NULL, $urlVar = NULL){
				
		// Check for request forgeries.
		JSession::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
		
		$app	= JFactory::getApplication();
		$model	= $this->getModel();
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
			$app->setUserState('com_administracion.edit.cantera.global', $data);

			// Redirect back to the edit screen.
			$this->setRedirect(JRoute::_('index.php?option=com_administracion&view=canteras&layout=edit', false));
			
			return false;
		
		}
		
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
			$app->setUserState('com_administracion.edit.cantera.global', $data);

			// Save failed, go back to the screen and display a notice.
			$message = JText::sprintf('Error al Guardar la información', $model->getError());
			$this->setRedirect(JRoute::_('index.php?option=com_administracion&view=canteras&layout=edit', false));
			
			return false;
		
		}		
	
		// Set the redirect based on the task.
		switch ($this->getTask()){
			
			case 'apply':
				$message = JText::_('Area Guardada Correctamente');
				$this->setRedirect(JRoute::_('index.php?option=com_administracion&view=canteras&layout=edit&id='.$model->GetState('cantera.id')), $message);
				break;

			case 'save':
				$message = JText::_('Area Guardada Correctamente');
				$this->setRedirect(JRoute::_('index.php?option=com_administracion&view=canteras&layout=edit&id='.$model->GetState('cantera.id')), $message);
				break;
			
		}

		return true;
	}
	
    public function publish(){
		
		// Check for request forgeries.
		JSession::checkToken() or jexit(JText::_('JINVALID_TOKEN'));

		$ids    = $this->input->get('cid', array(), 'array');
		$values = array('publish' => 0, 'unpublish' => 1);
		$task   = $this->getTask();
		$value  = ArrayHelper::getValue($values, $task, 1, 'int');
		
		if (empty($ids)){
			JError::raiseWarning(500, JText::_('No se selección un Area'));
		}else{
			// Get the model.
			/** @var BannersModelBanner $model */
			$model = $this->getModel();

			// Change the state of the records.
			if (!$model->stick($ids, $value)){
				JError::raiseWarning(500, $model->getError());
			}else{
				
				if ($value == 1){
					$ntext = 'Area Deshabilitada';
				}else{
					$ntext = 'Area Habilitada';
				}

				$this->setMessage(JText::plural($ntext, count($ids)));
			}
		}

		$this->setRedirect(JRoute::_('index.php?option=com_rrhh&view=areas'));
		
		return true; 
		
	}
	
	public function getciudades(){
				
		$document = JFactory::getDocument();
	    $document->setMimeEncoding( 'text/html' );

		$model = $this->getModel('Cantera'); // JModelForm
		$form = $model->getForm();
		
		$html = ''; 
				
		//$form->setFieldAttribute('ciudad', 'required', true);		
		$html.= $form->getLabel('ciudad').'<div class="controls">'. $form->getInput('ciudad').'</div>';
				
		print_r($html);
		
		die(); 		
		
	}
	
	public function setCanteralbyMaterial(){
		
		$data	= JRequest::getVar('concan', array(), 'post', 'array');
		
		$db = JFactory::getDbo();
		
		$query = $db->getQuery(true);
		$query->delete('#__core_canteras_rel_materiales');
		$query->where('id_cantera ='. $data['cantera']);
		$db->setQuery($query);
		$db->execute();		
		
		
		if($data['cantidad'] > 0 && $data['valor'] > 0){
			
			$object 				= new stdClass();		
			$object->id_cantera 	= $data['cantera'];
			$object->id_material	= $data['materiales'];
			$object->cantidad		= str_replace(',','',$data['cantidad']);
			$object->valor			= str_replace(',','',$data['valor']);
			$object->resistencia	= str_replace(',','',$data['resistencia']);
			$object->desgaste		= str_replace(',','',$data['desgaste']);
			$object->plasticidad	= str_replace(',','',$data['plasticidad']);
			$db->InsertObject('#__core_canteras_rel_materiales', $object ,'id_cantera');
				
			$query = $db->getQuery(true);
			$query->select('a.*, b.nombre AS material');
			$query->from('#__core_canteras_rel_materiales AS a');
			$query->join('inner', '#__core_materiales AS b ON a.id_material = b.id');
			$query->where('id_cantera ='. $data['cantera']);
			$db->setQuery($query);
			$db->query();
			$materiales	= $db->LoadObjectList();		
			
			foreach($materiales AS $key => $material){
											
				$html.='<tr id="'. $key .'">
	    			<td>'. $material->material .'</td>
	    			<td>'. number_format($material->cantidad, 2) .'</td>
	    			<td>$ '. number_format($material->valor, 2) .' COP</td>
	    			<td>'. number_format($material->resistencia, 2) .'</td>
	    			<td>'. number_format($material->desgaste, 2) .'</td> 
	    			<td>'. number_format($material->plasticidad, 2) .'</td> 
	    		</tr>'; 	
		
			}
			
			echo $html; 
		
		}
		
		die();		
		
	}
		
}