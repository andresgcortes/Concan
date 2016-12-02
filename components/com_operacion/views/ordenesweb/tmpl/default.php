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

JHtml::_('bootstrap.tooltip');
JHtml::_('behavior.multiselect');

$document	= JFactory::getDocument();
$user      	= JFactory::getUser();
$userId    	= $user->get('id');
$listOrder 	= $this->escape($this->state->get('list.ordering'));
$listDirn  	= $this->escape($this->state->get('list.direction'));
$archived  	= $this->state->get('filter.state') == 2 ? true : false;
$saveOrder 	= $listOrder == 'a.ordering'; ?>

<div class="col-lg-12">

  	<section class="box ">
       
        <header class="panel_header">
            <h2 class="title pull-left">Solicitudes Web</h2>
            <div class="actions panel_actions pull-right">
                <i class="box_toggle fa fa-chevron-down"></i>
            </div>            
        </header>

        <div class="content-body"> 

        	<div class="row">
            	<div class="col-md-12 col-sm-12 col-xs-12">

                	<form action="<?php echo JRoute::_('index.php?option=com_operacion&view=ordenesweb'); ?>" method="post" name="adminForm" id="adminForm" class="form-horizontal">

						<div id="j-main-container" class="span12">

							<?php echo JLayoutHelper::render('joomla.searchtools.default', array('view' => $this)); ?>

							<?php if (empty($this->items)){ ?>			
								
								<div class="alert alert-no-items">
									<?php echo JText::_('JGLOBAL_NO_MATCHING_RESULTS'); ?>
								</div>

							<?php }else{ ?>

								<table class="table table-striped" id="articleList" >

									<thead>

										<tr>

											<th>
												<?php echo JHtml::_('searchtools.sort', '# Ordén', 'tipoorden', $listDirn, $listOrder); ?>
											</th>
											<th>
												<?php echo JHtml::_('searchtools.sort', 'Tipo Orden', 'a.nombre', $listDirn, $listOrder); ?>
											</th>
											<th>
												<?php echo JHtml::_('searchtools.sort', 'Cliente', 'a.departamento', $listDirn, $listOrder); ?>
											</th>
											<th>
												<?php echo JHtml::_('searchtools.sort', 'Placa', 'a.ciudad', $listDirn, $listOrder); ?>
											</th>						
											<th>
												<?php echo JHtml::_('searchtools.sort', 'Fecha Ingreso', 'a.ciudad', $listDirn, $listOrder); ?>
											</th>						
											<th>
												<?php echo JHtml::_('searchtools.sort', 'Cantidad', 'a.cantidad', $listDirn, $listOrder); ?>
											</th>						
										</tr>

									</thead>

									<tfoot>
										<tr>
											<td colspan="6">
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
													<a href="index.php?option=com_operacion&view=ordenespedido&layout=edit&id=<?php echo $item->id ?>" >
														<?php echo $item->id ?>
													</a>
												</td>
					                            <td>
					                            	<?php echo $item->tipoorden ?>
												</td>
					                            <td>
					                            	<?php echo $item->cliente ?>
												</td>
					                            <td>
													<?php echo $item->placa ?>
												</td>
												<td>
													<?php echo $item->fecha_ingreso ?>
												</td>
												<td>
													<?php echo $item->cantidad ?>
												</td>
										
											</tr>

										<?php } ?>

									</tbody>

								</table>			

							<?php } ?>

							<input type="hidden" name="task" value="" />
							<?php echo JHtml::_('form.token'); ?>

  						</div>

					</form>  

  				</div>
            </div>

        </div>

    </section>
</div>