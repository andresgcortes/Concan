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
defined('_JEXEC') or die('Restricted access');


jimport( 'joomla.application.component.view');
class AdministracionViewAdministracion extends JViewLegacy
{
	function display ($tpl = null)
	{
		// Assign data to the view
		$this->msg = $this->get('Msg');
		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			JLog::add(implode('<br />', $errors), JLog::WARNING, 'jerror');
			return false;
		}

		$this->addToolBar()

;		// Display the view
		parent::display($tpl);
	}

	protected function addToolBar()
	{
		JToolBarHelper::title(JText::_('COM_Administracion_TOOLBAR'));
	}

}


?>