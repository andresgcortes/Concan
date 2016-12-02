<?php

// No direct access.
defined('_JEXEC') or die;

JLoader::register('JHtmlUsers', JPATH_COMPONENT . '/helpers/html/users.php');

JHtml::_('bootstrap.tooltip');
JHtml::_('behavior.multiselect');
JHtml::_('formbehavior.chosen', 'select');
		
$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));
$loggeduser = JFactory::getUser(); ?>

<div class="jarviswidget jarviswidget-color-darken jarviswidget-sortable" id="wid-id-1" data-widget-editbutton="false" role="widget">

	<div class="col-lg-12">
                        <section class="box ">
                            <header class="panel_header">
                                <h2>Listado de Usuarios</h2>
                                <div class="actions panel_actions pull-right">
                                    <i class="box_toggle fa fa-chevron-down"></i>
                                    <i class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></i>
                                    <i class="box_close fa fa-times"></i>
                                </div>
                                <a style="margin-right: 56px; margin-top: 10px; float: right;" href="index.php?option=com_users&view=useradmin&layout=edit&Itemid=125&id=" class="btn btn-primary">
  		Nuevo Usuario
  	</a>
                            </header>
	
	<?php if (empty($this->items)) : ?>
	
		<div class="alert alert-no-items">
			<?php echo JText::_('JGLOBAL_NO_MATCHING_RESULTS'); ?>
		</div>	
	
	<?php else : ?>
		
		<div class="widget-body">
			
			<p>
				<?php echo JLayoutHelper::render('joomla.searchtools.default', array('view' => $this)); ?>
			</p>
		
			<div class="table-responsive">
				
				<form action="<?php echo JRoute::_('index.php?option=com_users&view=useradmins') ?>" method="post" name="adminForm" id="adminForm">
					
					
 <div class="content-body">    <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">

                                        <table class="table">
                                    <thead>
											<tr>									
												<th class="center"  width="23%";>
													<?php echo JHtml::_('searchtools.sort', 'Nombre', 'a.name', $listDirn, $listOrder); ?>
												</th>
												<th class="center" width="23%">
													<?php echo JHtml::_('grid.sort', 'Usuario', 'a.username', $listDirn, $listOrder); ?>
												</th>
												<th class="center" width="10%">
													<?php echo JHtml::_('grid.sort', 'Habilitado', 'a.block', $listDirn, $listOrder); ?>
												</th>
										
												<th class="center" width="22%">
													<?php echo JHtml::_('grid.sort', 'Email', 'a.email', $listDirn, $listOrder); ?>
												</th>
												<th class="center" width="22%">
													<?php echo JHtml::_('grid.sort', 'Último Ingreso', 'a.lastvisitDate', $listDirn, $listOrder); ?>
												</th>
											</tr>
									</thead>  

						<tbody>
															
							<?php foreach ($this->items as $i => $item) :		
							
								$canEdit	= $this->canDo->get('core.edit');
								$canChange	= $loggeduser->authorise('core.edit.state',	'com_users');
								// If this group is super admin and this user is not super admin, $canEdit is false
								if ((!$loggeduser->authorise('core.admin')) && JAccess::check($item->id, 'core.admin')) {
									$canEdit	= false;
									$canChange	= false;
								} ?>
								
								<tr class=" <?php echo $i % 2; ?>">
											
									<td>
										<?php if ($canEdit) : ?>
											<a href="<?php echo JRoute::_('index.php?option=com_users&task=useradmin.edit&id='.(int) $item->id); ?>" class="hasTooltip" data-original-title="<?php echo JText::sprintf('Editar usuario %s', $this->escape($item->name)); ?>" title="">
												<?php echo $this->escape($item->name); ?>
											</a>
										<?php else : ?>
											<?php echo $this->escape($item->name); ?>
										<?php endif; ?>												
									</td>					
									<td>
										<?php echo $this->escape($item->username); ?>
									</td>
									<td class="center">
										<div id="ocultarCheck"  style="display:none;">
											<?php echo JHtml::_('grid.id', $i, $item->id); ?>
										</div>
										
										<?php if ($canChange) : 
											$self = $loggeduser->id == $item->id;
											echo JHtml::_('jgrid.state', JHtmlUsers::blockStates($self), $item->block, $i, 'UserAdmins.', !$self);
										else : 
											echo JText::_($item->block ? 'JNO' : 'JYES'); 
										endif; ?>
										
									</td>		
									<td><?php echo $item->email; ?></td>
									<td><?php echo $item->lastvisitDate;  ?></td>
								
								</tr>			
								
							<?php endforeach; ?>
							
						</tbody>

                                        </table>

                                    </div>
                                </div>
                            </div>
                        </section>
         </div>



					<?php echo $this->pagination->getListFooter(); ?>
					
					<input type="hidden" name="task" value="" />
					<input type="hidden" name="boxchecked" value="0" />
					<?php echo JHtml::_('form.token'); ?>
	
				</form>
				
			</div>
		
		</div>
		
		
		
		
		
                           

		
	<?php endif; ?>
	
</div>