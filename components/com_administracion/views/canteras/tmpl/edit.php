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
<script src="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/select2/select2.min.js" type="text/javascript"></script>
<script src="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/inputmask/jquery.inputmask.bundle.min.js" type="text/javascript"></script>

<script type="text/javascript">

	Joomla.submitbutton = function(task){
		
		if ((task == 'cantera.cancel') || document.formvalidator.isValid(document.id('Cantera'))){
			
			Joomla.submitform(task, document.getElementById('Cantera'));
	  			
		}else{
	 		alert("Existen campos vacios por favor verifique!");
			return false;
		}	
	
	}

</script>		

<div class="col-md-12 col-sm-12 col-xs-12">

	<form action="index.php?option=com_administracion&view=canteras&layout=edit&id=<?php echo $this->item->id ?>" method="post" name="adminForm" id="Cantera" enctype="multipart/form-data" class="form-validate form">
		
		<section class="box">
        	
        	<header class="panel_header">
                <h2 class="title pull-left">Datos Generales</h2>
                <div class="actions panel_actions pull-right">
                    <i class="box_toggle fa fa-chevron-down"></i>
                </div>
            </header>
                        	
        	<div class="content-body" style="display: block">			
				
				<div class="row">
                
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('nombre'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('nombre'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('codigo_expediente'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('codigo_expediente'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('explotador_minero'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('explotador_minero'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('explotador'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('explotador'); ?>
						</div>
					</div>

					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('tipo_identificacion'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('tipo_identificacion'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('numero_identidad'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('numero_identidad'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-6">                                        
						<?php echo $this->form->getLabel('departamento'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('departamento'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-6" id="ciudadaj" >                                        
						<?php echo $this->form->getLabel('ciudad'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('ciudad'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-2">                                        
						<?php echo $this->form->getLabel('operada'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('operada'); ?>
						</div>
					</div>
						
					<div class="form-group col-xs-5">                                        
						<?php echo $this->form->getLabel('latitud'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('latitud'); ?>
						</div>
					</div>
					
					<div class="form-group col-xs-5">                                        
						<?php echo $this->form->getLabel('longitud'); ?>
						<div class="controls">
							<?php echo $this->form->getInput('longitud'); ?>
						</div>
					</div>
				
				</div>
				
				<div class="clearfix"></div>
                
				<div class="row">
                	
                	<div class="col-xs-12">
						<input type="button" onclick="Joomla.submitbutton('cantera.save');" class="btn btn-primary pull-right" value="Guardar">		
                	</div>
					
				</div>
                
			</div>
		
		</section>
		
		<?php if(!empty($this->item->id)){ ?>	
		
			<section class="box ">
	       
	            <header class="panel_header">
	                    <h2 class="title pull-left">Selección de Materiales</h2>
	                    <div class="actions panel_actions pull-right">
	                        <i class="box_toggle fa fa-chevron-down"></i>
	                    </div>
	                </header>
	            
	            <div class="content-body" style="display: block">
	            
	                <div class="row">
	                            
	                    <div class="col-xs-3">	
	                    	<?php echo $this->form->getLabel('materiales'); ?>
							<?php echo $this->form->getInput('materiales'); ?>								
	                    </div>
	                    
	                    <div class="col-xs-3">
	                    	<?php echo $this->form->getLabel('cantidad'); ?>
							<?php echo $this->form->getInput('cantidad'); ?>								
	                    </div>
	                    
	                    <div class="col-xs-3">
	                    	<?php echo $this->form->getLabel('valor'); ?>
							<?php echo $this->form->getInput('valor'); ?>								
	                    </div>
	                
	                </div>
	                
	                <br/>
	                
	                <div class="row">
	                            
	                    <div class="col-xs-3">
	                    	<?php echo $this->form->getLabel('resistencia'); ?>
							<?php echo $this->form->getInput('resistencia'); ?>								
	                    </div>
	                    
	                    <div class="col-xs-3">
	                    	<?php echo $this->form->getLabel('desgaste'); ?>
							<?php echo $this->form->getInput('desgaste'); ?>								
	                    </div>
	                    
	                    <div class="col-xs-3">
	                    	<?php echo $this->form->getLabel('plasticidad'); ?>
							<?php echo $this->form->getInput('plasticidad'); ?>								
	                    </div>
	                    
	                    <button type="button" class="btn btn-primary canteralm">Ingresar Material</button>
	                    
	                </div>
	                
	                <div class="clearfix"></div>
	                <br />
	                
	                <div class="row" >
		                	
	                	<div class="col-md-12 col-sm-12 col-xs-12">

		                	<table class="table">
			                	<thead>
			                		<tr>
			                			<th>Tipo Material</th>
			                			<th>Cantida en Cantera</th>
			                			<th>$ Valor</th>
			                			<th>Resistencia</th>
			                			<th>Desgaste</th>
			                			<th>Plasticidad</th>
			                		</tr>	
			                	</thead>
			                	
			                	<tbody id="material">
			                		
			                		<?php if($materiales = $this->materiales){ 
			                		
			                			foreach($materiales AS $key => $material){ ?>
										
											<tr id="<?php echo $key ?>">
					                			<td><?php echo $material->material ?></td>
					                			<td><?php echo number_format($material->cantidad,2) ?></td>
					                			<td>$ <?php echo number_format($material->valor,2) ?> COP</td>
					                			<td><?php echo number_format($material->resistencia,2) ?></td>
					                			<td><?php echo number_format($material->desgaste,2) ?></td>
					                			<td><?php echo number_format($material->plasticidad,2) ?></td>		                			
					                		</tr>	
									
										<?php }
									
									}else{ ?>

				                		<tr>
				                			<td align="center" colspan="6"> No Hay Matariales Relacionados a esta Cantera</td>		                			
				                		</tr>	
										
									<?php } ?>
									
			                	</tbody>
							
								<tfoot>
									<tr>
										<td colspan="6"></td>
									</tr>
								</tfoot>
			             
			                </table>
	            		
	            		</div>
		            
		            </div>
	            	
	        	</div>
	        	
	        </section>
	        
	        <section class="box ">
	        
	            <header class="panel_header">
	                <h2 class="title pull-left">Usuarios Registrados</h2>
	                <div class="actions panel_actions pull-right">
	                    <i class="box_toggle fa fa-chevron-down"></i>
	                </div>
	            </header>
	            
	            <div class="content-body" style="display: block">
	            	
	            	<div class="row">
	   	                
		                <table class="table">
		                	<thead>
		                		<tr>
		                			<td>Nombre Y Apellidos</td>
		                			<td>Cédula</td>
		                			<td>Direción</td>
		                			<td>Teléfonos</td>
		                			<td>Móvil</td>
		                			<td>Email</td>
		                		</tr>	
		                	</thead>
		                	
		                	<tbody >
		                		<tr>
		                			<td></td>
		                			<td></td>
		                			<td></td>
		                			<td></td>
		                			<td></td>
		                			<td></td>
		                		</tr>	
		                	</tbody>
		                </table>
	            	
	            	</div>
	    		
	    		</div>
	            
	        </section>

		<?php } ?>	
		
		<input type="hidden" name="option" value="com_administracion" />			
		<input type="hidden" name="task" value="" />
		<?php echo JHtml::_('form.token'); ?>
		<?php echo $this->form->getInput('id'); ?>
	
	</form>

</div>

