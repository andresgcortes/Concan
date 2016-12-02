<?php

defined('_JEXEC') or die;

//$document = JFactory::getDocument();
//$document->addScript('/components/com_administracion/assets/administracion.js');

$materiales = null; 

JHTML::_('behavior.formvalidation'); ?>

<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/icheck/skins/square/_all.css"/>
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/select2/select2.css"/>

<script src="<?php echo $this->baseurl ?>/components/com_operacion/assets/ordencompra.js"></script>
<script src="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/autonumeric/autoNumeric.js" type="text/javascript"></script>
<script src="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/inputmask/jquery.inputmask.bundle.min.js" type="text/javascript"></script>
<script src="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/select2/select2.min.js" type="text/javascript"></script>

<script type="text/javascript">
		
	Joomla.submitbutton = function(task){
		
		if ((task == 'operacion.cancel') || document.formvalidator.isValid(document.id('OrdenPedido'))){
			
			Joomla.submitform(task, document.getElementById('OrdenPedido'));

		}else{

	 		alert("Existen campos vacios por favor verifique!");

			return false;

		}	

	}

</script>		

<div class="col-md-12 col-sm-12 col-xs-12">

	<form action="index.php?option=com_operacion&view=ordenespedido&layout=edit&id=<?php echo $this->item->id ?>" method="post" name="adminForm" id="OrdenPedido" class="form-validate form">
	
		<section class="box">
        	
        	<header class="panel_header">
                <h2 class="title pull-left">formulario de Ingreso</h2>
                <div class="actions panel_actions pull-right">
                    <i class="box_toggle fa fa-chevron-down"></i>
                </div>
            </header>

        	<div class="content-body" style="display: block">			
	
				<div class="row">
                	
                	<div class="form-group col-xs-4">                                        
						<?php echo $this->form->getLabel('tipo_orden'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('tipo_orden'); ?>
						</div>
					</div>
               	
					<div class="form-group col-xs-4">                                        
						<?php echo $this->form->getLabel('placa'); ?>
						<div class="controls" id="tipo_orden">
							<?php echo $this->form->getInput('placa'); ?>
						</div>
					</div>

					<div class="form-group col-xs-4">                                        
						<?php echo $this->form->getLabel('fecha_ingreso'); ?>
						<div class="controls ciudad">
							<?php echo $this->form->getInput('fecha_ingreso'); ?>
						</div>
					</div>
	
					<div class="form-group col-xs-4">                                      
						<?php echo $this->form->getLabel('id_vehiculo'); ?>
						<?php echo $this->form->getInput('id_vehiculo'); ?>
					</div>
					
					<div class="form-group col-xs-12" id="vehiculo"></div>
					
					<div class="form-group col-xs-4">                                        
						<?php echo $this->form->getLabel('estado_factura'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('estado_factura'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-4">                                        
						<?php echo $this->form->getLabel('id_material'); ?>
						<div class="controls" id="material">
							<?php echo $this->form->getInput('id_material'); ?>
						</div>
					</div>
				
					<div class="form-group col-xs-12" id="datosmaterial"></div>
				
				</div>
			
				<div class="clearfix"></div>
               
				<div class="row">
                	
                	<div class="col-xs-12">
                	
                		<?php if(empty($this->item->id)){ ?>
							<input type="button" onclick="Joomla.submitbutton('ordenespedido.save');" class="btn btn-primary pull-right" value="Crear Orden">		
                		<?php } ?>
                		
                		<?php if($this->item->id_estado == 1 && $this->item->estado_factura != 1 && !empty($this->item->id)){ ?>
                			<input type="button" onclick="Joomla.submitbutton('operacion.AprobarOrden');" style="margin-right: 10px" class="btn btn-primary pull-right" value="Autorizar Orden">		
                		<?php } ?>
                		
                		<?php if($this->item->id_estado == 1 && $this->item->estado_factura != 1 && !empty($this->item->id)){ ?>
                			<input type="button" onclick="Joomla.submitbutton('operacion.cancelacion');" style="margin-right: 10px" class="btn btn-primary pull-right" value="Cancelar Orden">		
                		<?php } ?>
                		
                		<?php if($this->item->id_estado == 2 && !empty($this->item->id)){ ?>
                			<input type="button" onclick="Joomla.submitbutton('operacion.Novedad');" style="margin-right: 10px" class="btn btn-primary pull-right" value="Crear Novedad">		
                		<?php } ?>
                		
                		<?php if($this->item->estado_factura == 1 && !empty($this->item->id)){ ?>
                			<input type="button" onclick="Joomla.submitbutton('operacion.PorCobrar');" style="margin-right: 10px" class="btn btn-primary pull-right" value="Pago Por Cobrar">
                			<input type="button" onclick="Joomla.submitbutton('operacion.Realizado');" style="margin-right: 10px" class="btn btn-primary pull-right" value="Pago Realizado">
                		<?php } ?>
                    
                    </div>
				
				</div>
       
			</div>
		
		</section>		

		<input type="hidden" name="option" value="com_operacion" />			
		<input type="hidden" name="task" value="" />
		<?php echo JHtml::_('form.token'); ?>
		<?php echo $this->form->getInput('id'); ?>

	</form>

</div>