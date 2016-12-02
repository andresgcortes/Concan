<?php

defined('_JEXEC') or die;
//$document = JFactory::getDocument();
//$document->addScript('/components/com_administracion/assets/administracion.js');

$materiales = null; 
JHTML::_('behavior.formvalidation'); ?>

<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/icheck/skins/square/_all.css"/>

<script src="<?php echo $this->baseurl ?>/components/com_administracion/assets/administracion.js"></script>
<script src="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/autonumeric/autoNumeric.js" type="text/javascript"></script>
<script src="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/inputmask/jquery.inputmask.bundle.min.js" type="text/javascript"></script>

<script type="text/javascript">

	Joomla.submitbutton = function(task){
		
		if ((task == 'vehiculo.cancel') || document.formvalidator.isValid(document.id('Vehiculo'))){
			
			Joomla.submitform(task, document.getElementById('Vehiculo'));
	  			
		}else{
	 		alert("Existen campos vacios por favor verifique!");
			return false;
		}	
	
	}

</script>		

<div class="col-md-12 col-sm-12 col-xs-12">

	<form action="index.php?option=com_administracion&view=vehiculo&layout=edit&id=<?php echo $this->item->id ?>" method="post" name="adminForm" id="Vehiculo" enctype="multipart/form-data" class="form-validate form">
		
		<section class="box">
        	
        	<header class="panel_header">
                <h2 class="title pull-left">Datos Generales</h2>
                <div class="actions panel_actions pull-right">
                    <i class="box_toggle fa fa-chevron-down"></i>
                </div>
            </header>
                        	
        	<div class="content-body" style="display: block">			
				
				<div class="row">
                
					<div class="form-group col-xs-3">                                        
						<?php echo $this->form->getLabel('placa'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('placa'); ?>
						</div>
					</div>				
					
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('propietario'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('propietario'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-3">                                        
						<?php echo $this->form->getLabel('identificacion'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('identificacion'); ?>
						</div>
					</div>
										
					<div class="form-group col-xs-3">                                        
						<?php echo $this->form->getLabel('marca'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('marca'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-3">                                        
						<?php echo $this->form->getLabel('modelo'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('modelo'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-3">                                        
						<?php echo $this->form->getLabel('color'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('color'); ?>
						</div>
					</div>
						
					<div class="form-group col-xs-3">                                        
						<?php echo $this->form->getLabel('carga'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('carga'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-3">                                        
						<?php echo $this->form->getLabel('propiedad'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('propiedad'); ?>
						</div>
					</div>					
					
					<div class="form-group col-xs-3">                                        
						<?php echo $this->form->getLabel('id_propiedad'); ?>
						<div class="controls" id="propiedadmsg">
							<?php echo $this->form->getInput('id_propiedad'); ?>
						</div>
					</div>					
										
					<div class="form-group col-xs-3">                                        
						<?php echo $this->form->getLabel('disabled'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('disabled'); ?>
						</div>
					</div>					
				
				</div>
				
				<div class="clearfix"></div>
                
				<div class="row">
                	
                	<div class="col-xs-12">
						<input type="button" onclick="Joomla.submitbutton('vehiculo.save');" class="btn btn-primary pull-right" value="Guardar">		
                	</div>
					
				</div>
                
			</div>
		
		</section>
		
		
        
       

		<input type="hidden" name="option" value="com_administracion" />			
		<input type="hidden" name="task" value="" />
		<?php echo JHtml::_('form.token'); ?>
		<?php echo $this->form->getInput('id'); ?>
	
	</form>

</div>

