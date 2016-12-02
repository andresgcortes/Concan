<?php

defined('_JEXEC') or die;
//$document = JFactory::getDocument();
//$document->addScript('/components/com_administracion/assets/administracion.js');

$materiales = null; 
JHTML::_('behavior.formvalidation'); ?>

<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/select2/select2.css"/>
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/icheck/skins/square/_all.css"/>

<script src="<?php echo $this->baseurl ?>/components/com_administracion/assets/administracion.js"></script>
<script src="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/autonumeric/autoNumeric.js" type="text/javascript"></script>
<script src="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/inputmask/jquery.inputmask.bundle.min.js" type="text/javascript"></script>
<script src="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/select2/select2.min.js" type="text/javascript"></script>

<script type="text/javascript">

	Joomla.submitbutton = function(task){
		
		if ((task == 'proveedor.cancel') || document.formvalidator.isValid(document.id('Proveedor'))){
			
			Joomla.submitform(task, document.getElementById('Proveedor'));
	  			
		}else{
	 		alert("Existen campos vacios por favor verifique!");
			return false;
		}	
	
	}

</script>		

<div class="col-md-12 col-sm-12 col-xs-12">

	<form action="index.php?option=com_administracion&view=proveedor&layout=edit&id=<?php echo $this->item->id ?>" method="post" name="adminForm" id="Proveedor" enctype="multipart/form-data" class="form-validate form">
		
		<section class="box">
        	
        	<header class="panel_header">
                <h2 class="title pull-left">Datos Generales</h2>
                <div class="actions panel_actions pull-right">
                    <i class="box_toggle fa fa-chevron-down"></i>
                </div>
            </header>
                        	
        	<div class="content-body" style="display: block">			
				
				<div class="row">
                
					<div class="form-group col-xs-9">                                        
						<?php echo $this->form->getLabel('nombre'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('nombre'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-3">                                        
						<?php echo $this->form->getLabel('nit'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('nit'); ?>
						</div>
					</div>
						
					<div class="form-group col-xs-4">                                        
						<?php echo $this->form->getLabel('pais'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('pais'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-4" id="ciudadaj">                                        
						<?php echo $this->form->getLabel('ciudad'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('ciudad'); ?>
						</div>
					</div>	
					
					<div class="form-group col-xs-4">                                        
						<?php echo $this->form->getLabel('barrio'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('barrio'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('direccion'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('direccion'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-2">                                        
						<?php echo $this->form->getLabel('oficina'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('oficina'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-2">                                        
						<?php echo $this->form->getLabel('tel_fijo'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('tel_fijo'); ?>
						</div>
					</div>
						
					<div class="form-group col-xs-2">                                        
						<div class="controls">
						<?php echo $this->form->getLabel('trel_movil'); ?>
							<?php echo $this->form->getInput('trel_movil'); ?>
						</div>
					</div>
						
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('email'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('email'); ?>
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
						<input type="button" onclick="Joomla.submitbutton('proveedor.save');" class="btn btn-primary pull-right" value="Guardar">		
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

