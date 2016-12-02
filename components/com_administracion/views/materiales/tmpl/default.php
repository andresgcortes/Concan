<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_banners
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');

$document = JFactory::getDocument();

JHtml::_('bootstrap.tooltip');
JHtml::_('behavior.multiselect');
JHtml::_('formbehavior.chosen', 'select');

$user      = JFactory::getUser();
$userId    = $user->get('id');
$listOrder = $this->escape($this->state->get('list.ordering'));
$listDirn  = $this->escape($this->state->get('list.direction'));
$archived  = $this->state->get('filter.state') == 2 ? true : false;
$saveOrder = $listOrder == 'a.ordering';

 ?>

<div class="panel panel-default">
	
	  <!-- Default panel contents -->
  	<h1 class="panel-heading" style="text-indent: 45px; margin-top: 20px">Materiales</h1>
  	
  	<a style="margin-right: 56px; margin-top: -30px; float: right;" href="index.php?option=com_administracion&view=materiales&layout=edit" class="btn btn-primary">
  		Nuevo Material
  	</a>
  		
	<form action="<?php echo JRoute::_('index.php?option=com_administraion&view=materiales'); ?>" method="post" name="adminForm" id="adminForm" class="form-horizontal">
	
		<div id="j-main-container" class="span12">
		
		<?php // Search tools bar
		//echo JLayoutHelper::render('joomla.searchtools.default', array('view' => $this)); ?>

		<?php if (empty($this->items)){ ?>			
			<div class="alert alert-no-items">
				<?php echo JText::_('JGLOBAL_NO_MATCHING_RESULTS'); ?>
			</div>
		<?php }else{ ?>
			<div id="success" style="display:none;"></div>
			<table class="table table-striped" id="articleList" style="width: 95%">

				<thead>
					<tr>
						<th>
							<?php echo JHtml::_('searchtools.sort', 'Nombre Material', 'a.nombre', $listDirn, $listOrder); ?>
						</th>						
					</tr>
				</thead>

				<tfoot>
					<tr>
						<td colspan="1">
							<?php echo $this->pagination->getListFooter(); ?>
						</td>
					</tr>
				</tfoot>
                                
				<tbody id="sortable">
					
					<?php foreach ($this->items as $i => $item){
						
						$orderkey   = array_search($item->id, $this->ordering[$item->id]);
						$ordering 	= ($listOrder == 'ordering'); ?>
						
						<tr class="row<?php echo $i % 2; ?>" sortable-group-id="<?php echo $item->id; ?>" itemid ="1">
						
							<td>
								<a href="index.php?option=com_administracion&view=materiales&layout=edit&id=<?php echo $item->id ?>" >
									<?php echo $item->nombre ?>
								</a>
                            </td>
							</tr>

					<?php } ?>

				</tbody>

			</table>			
			
		<?php } ?>
		
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="boxchecked" value="0" />
		<?php echo JHtml::_('form.token'); ?>
			
  		</div>
	
	</form>  	
  	
</div>