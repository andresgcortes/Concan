<?php

defined('_JEXEC') or die;

JHtml::_('behavior.tooltip');
JHTML::_('behavior.formvalidation');

?>

<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/icheck/skins/square/_all.css"/>
<script src="<?php echo $this->baseurl ?>/components/com_administracion/assets/administracion.js"></script>
<script src="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/autonumeric/autoNumeric.js" type="text/javascript"></script>
<script src="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/inputmask/jquery.inputmask.bundle.min.js" type="text/javascript"></script>

<script type="text/javascript">

	Joomla.submitbutton = function(task){
		
		if ((task == 'conductor.cancel') || document.formvalidator.isValid(document.id('Conductor'))){
			
			Joomla.submitform(task, document.getElementById('Conductor'));
	  			
		}else{
	 		alert("Existen campos vacios por favor verifique!");
			return false;
		}	
	
	}

</script>		

<div class="col-md-12 col-sm-12 col-xs-12">

	<form action="<?php JRoute::_('index.php?option=com_administracion&view=conductor&layout=edit&id='.$this->item->id) ?>" method="post" name="adminForm" id="Vehiculo" enctype="multipart/form-data" class="form-validate form">
		
		<section class="box">
        	
        	<header class="panel_header">
                <h2 class="title pull-left">Datos Generales</h2>
                <div class="actions panel_actions pull-right">
                    <i class="box_toggle fa fa-chevron-down"></i>
                </div>
            </header>
                        	
        	<div class="content-body" style="display: block">			
			
				<div class="row">
					
					<div class="form-group col-xs-12">                                        
						<?php echo $this->form->getLabel('nombre'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('nombre'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-12">                                        
						<?php echo $this->form->getLabel('id_placa'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('id_placa'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-12">                                        
						<?php echo $this->form->getLabel('cedula'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('cedula'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-12">                                        
						<?php echo $this->form->getLabel('direccion'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('direccion'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-12">                                        
						<?php echo $this->form->getLabel('tel_fijo'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('tel_fijo'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-12">                                        
						<?php echo $this->form->getLabel('movil'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('movil'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-12">                                        
						<?php echo $this->form->getLabel('email'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('email'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-12">                                        
						<?php echo $this->form->getLabel('disabled'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('disabled'); ?>
						</div>
					</div>
					
				</div>
			
			</div>
		
		</section>
		
		<input type="hidden" name="option" value="com_administracion" />			
		<input type="hidden" name="task" value="" />
		<?php echo JHtml::_('form.token'); ?>
		<?php echo $this->form->getInput('id'); ?>
		
	</form>

	<div style="float: right;" >		
		<input type="button" onclick="Joomla.submitbutton('vehiculo.save');" class="btn btn-primary" value="Guardar">		
	</div>

</div>	