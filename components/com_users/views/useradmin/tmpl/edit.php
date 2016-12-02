<?php

defined('_JEXEC') or die;

// Include the component HTML helpers.
JHtml::addIncludePath(JPATH_COMPONENT.'/helpers/html');
//JHTML::_('behavior.formvalidation');  

defined('_JEXEC') or die;

JHtml::_('behavior.tooltip');
JHTML::_('behavior.formvalidation'); ?>

<script type="text/javascript" >
	
	Joomla.submitbutton = function(task){
		  
		if (task == 'useradmin.cancel' || document.formvalidator.isValid(document.id('user-form'))) {
			Joomla.submitform(task, document.getElementById('user-form'));
		
		}else{
			alert('Los campos en rojo son obligatorios');
		} 
		
		return; 

	}
	
</script>

<div class="col-md-12 col-sm-12 col-xs-12">
				
	<form action="<?php echo JRoute::_('index.php?option=com_users&view=useradmin&layout=edit&id='.(int) $this->item->id); ?>" method="post" autocomplete="off" name="adminForm" id="user-form" class="form-validate smart-form">
	
		<section class="box">
        	
        	<header class="panel_header">
                <h2 class="title pull-left"><?php echo JText::_('Formulario de datos Generales del Usuario') ?></h2>
				<div class="actions panel_actions pull-right">
                    <i class="box_toggle fa fa-chevron-down"></i>
                </div>
            </header>            
			
			<div class="content-body" style="display: block">			
				
				<div class="row">
							
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('name'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('name'); ?> 
						</div>
					</div>
					
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('username'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('username'); ?> 
						</div>
					</div>
					
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('password'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('password'); ?> 
						</div>
					</div>
					
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('password2'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('password2'); ?> 
						</div>
					</div>
					
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('email'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('email'); ?> 
						</div>
					</div>
					
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('sendEmail'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('sendEmail'); ?> 
						</div>
					</div>
					
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('block'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('block'); ?> 
						</div>
					</div>
					
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('id_cantera'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('id_cantera'); ?> 
						</div>
					</div>
					
				</div>
				
				<div class="row">
						
					<h2 class="dotted">
						<?php echo JText::_('Roles de usuario') ?>
					</h2>
						
					<?php echo $this->loadTemplate('groups');?>
					
				</div>	
				
				<div class="row">
                	
                	<div class="col-xs-12">
						<button onclick="Joomla.submitbutton('useradmin.apply')" class="btn btn-primary pull-right">Guardar</button>
                	</div>
					
				</div>			
			</div>			
		
		</section>
		
		<input type="hidden" name="task" value="" />
		<?php echo JHtml::_('form.token'); ?>
	
	</form>		
	
</div>	