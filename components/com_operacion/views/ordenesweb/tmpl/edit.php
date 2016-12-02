<?php

defined('_JEXEC') or die;

//$document = JFactory::getDocument();
//$document->addScript('/components/com_administracion/assets/administracion.js');

$materiales = null; 

JHTML::_('behavior.formvalidation'); 

?>

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

	<form action="index.php" method="post" name="adminForm" id="OrdenPedido" class="form-validate form">
	
		<section class="box">
        	
        	<header class="panel_header">
                <h2 class="title pull-left">Formulario de Ingreso Web</h2>
                <div class="actions panel_actions pull-right">
                    <i class="box_toggle fa fa-chevron-down"></i>
                </div>
            </header>
			
			<div class="content-body" style="display: block">			
	
				<div class="row tk">                	
                		
                	<div class="form-group col-xs-4">                                        
						<?php echo $this->form->getLabel('token'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('token'); ?>
						</div>
					</div>
            	
            	</div>
            	
            	<div class="row tk" >
                	                	<div class="col-xs-12">
						<a href="#" class="btn btn-primary pull-right valtoken" >Verificar Token</a>
						<button type="button" class="btn btn-white" data-dismiss="modal">Cerrar</button>
                    </div>
				
				</div>
				
				<div class="row" id="datoscliente" ></div>					
				
            </div>
     	
		</section>		

		<input type="hidden" name="option" value="com_operacion" />			
		<input type="hidden" name="task" value="" />
		<?php echo JHtml::_('form.token'); ?>

	</form>

</div>