<?php

defined('_JEXEC') or die;

$materiales = null; 

JHTML::_('behavior.formvalidation'); ?>

<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/icheck/skins/square/_all.css"/>
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/select2/select2.css">

<script src="<?php echo $this->baseurl ?>/media/base64/base64.js"></script>
<script src="<?php echo $this->baseurl ?>/media/base64/html2canvas.js"></script>
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
	
	jQuery(document).ready(function(){
		
		html2canvas(document.querySelector("#imagen")).then(function(canvas){
			
        	var png = canvas.toDataURL('image/png');
			setTimeout(explode(png), 5000);

        });	
		
		function explode(encodedString){
			
			encodedString = encodedString.replace('data:image/png;base64,','');			
			
			var placa = '{"requests": [{"features": [{"type": "TEXT_DETECTION"}], "image": {"content": "'+encodedString+'"}}]}';		
			
			jQuery.ajax({
			
				url: 'https://vision.googleapis.com/v1/images:annotate?key=AIzaSyCfi3uhKwjbjYXnNPzib6aWUblKyEEM3gc',
				type: "POST",
				contentType:false, //Debe estar en false para que pase el objeto sin procesar
				data:placa, //Le pasamos el objeto que creamos con los archivos
				processData:false, //Debe estar en false para que JQuery no 
				cache:false
				
			}).done(function(msg){
				
				console.log(msg.responses[0].textAnnotations[0].description); 
				
			});	
		
		}
		
	});		
	

</script>		

<div class="col-md-12 col-sm-12 col-xs-12">

	<form action="index.php?option=com_oparacion&view=operacion&layout=edit&id=<?php echo $this->item->id ?>" method="post" name="adminForm" id="OrdenPedido" enctype="multipart/form-data" class="form-validate form">
	
		<section class="box">
        	
        	<header class="panel_header">
                <h2 class="title pull-left">Control de Ingreso / Salida</h2>
                <div class="actions panel_actions pull-right">
                    <i class="box_toggle fa fa-chevron-down"></i>
                </div>
            </header>
			
			<div class="content-body" style="display: block">			
	
				<div class="row">
                	
                	<div class="form-group col-xs-4">                                        
						<?php echo $this->form->getLabel('placa'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('placa'); ?>
						</div>
					</div>
            	</div>
			
				<input type="button" onclick="Joomla.submitbutton('operacion.save');" style="margin-right: 10px" class="btn btn-primary pull-right" value="Verificar Placa">		
			
			</div>
			
			<img src="../../../../../placas/placa.jpg" id="imagen" />
			
			<div id="imagenp"></div>
		</section>		

		<input type="hidden" name="option" value="com_operacion" />			
		<input type="hidden" name="task" value="" />
		<?php echo JHtml::_('form.token'); ?>
		<?php echo $this->form->getInput('id'); ?>

	</form>

</div>
