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

// Create the controller
$controller = JControllerLegacy::getInstance('administracion');

// Perform the Request task
$input = JFactory::getApplication()->input;
$controller->execute($input->getCmd('task'));

// Redirect if set by the controller
$controller->redirect(); ?>
