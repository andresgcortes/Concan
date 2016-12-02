<?php

defined('_JEXEC') or die;

$materiales = null; 

JHTML::_('behavior.formvalidation'); ?>

<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/icheck/skins/square/_all.css"/>
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/select2/select2.css">

<script src="<?php echo $this->baseurl ?>/components/com_operacion/assets/ordencompra.js"></script>
<script src="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/autonumeric/autoNumeric.js" type="text/javascript"></script>
<script src="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/inputmask/jquery.inputmask.bundle.min.js" type="text/javascript"></script>
<script src="<?php echo $this->baseurl ?>/templates/protostar/assets/plugins/select2/select2.min.js" type="text/javascript"></script>

<script type="text/javascript">
	
	function imprSelec(muestra){
		var ficha	= document.getElementById(muestra);
		var ventimp = window.open(' ','popimpr');
		ventimp.document.write(ficha.innerHTML);
		ventimp.document.close();
		ventimp.print();
		ventimp.close();
	}
		
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

	<form action="index.php?option=com_oparacion&view=operacion&layout=edit&id=<?php echo $this->item->id ?>" method="post" name="adminForm" id="OrdenPedido" enctype="multipart/form-data" class="form-validate form">
	
		<section class="box">
        	
        	<header class="panel_header">
                <h2 class="title pull-left">Factura Cantera </h2>
                <div class="actions panel_actions pull-right">
                    <i class="box_toggle fa fa-chevron-down"></i>
                </div>
            </header>
			
			<div class="content-body" id="facturacion" style="display: block">			
				
				<div class="row">
                	
                	<div class="form-group col-xs-12">                                        
                		<div style="text-align: center"><strong> CHARISMA S.A.S</strong></div>
                		<div style="text-align: center"><strong>NIT: 900.900.483-0</strong> </div>
							<hr />
	                		<hr />
                	</div>
                	
            	</div>
            			
				<div class="row">
                	
                	<div class="form-group col-xs-12">                                        

                		<div ><strong> FACTURA Nº</strong> - <?php echo $this->item->nfactura ?> FECHA Y HORA DE IMPRESIÓN</div>
                		<div ><strong>NOMBRE/RAZÓN SOCIAL </strong> <?php echo $this->item->nombrecliente ?></div>
                		<div ><strong>NIT/C.C: </strong> <?php echo $this->item->nit ?></div>
							<hr />
	                		<hr />
                	</div>
                	
            	</div>
            	
            	<div class="row">
                	
                	<table width="100%" >
                		<thead>
                			<tr>
                				<th>DESCRIPCIÓN</th>
                				<th>CANTIDAD</th>
                				<th>PVP</th>
                				<th>VALOR</th>
                			</tr>
                		</thead>
                		
                		<tbody>
                			<tr>
                				<td><?php echo $this->item->descripcion ?></td>
                				<td><?php echo $this->item->cantidad ?></td>
                				<td><?php echo $this->item->pvp ?></td>
                				<td><?php echo $this->item->valor ?></td>	
                			</tr>
                		</tbody>
                	</table>
                	
                	<hr />
                	<hr />
                
                </div>
				
				<div class="row">
                	
                	<div class="form-group col-xs-12">                                        
                		<div style="text-align: center"><strong> TRANSPORTE </strong></div>                		
                		<div >VALOR $		<span> 0</span></div>               	
	                	<hr />
		                <hr />
                	</div>
            	</div>
            	
            	<div class="row">
                	
                	<div class="form-group col-xs-12">                                        
                		
                		<table width="100%" >
	                		<tbody>
	                			<tr>
	                				<td><strong> BASE 16% MATERIAL</strong></td>
	                				<td>$     	<span><?php echo $this->item->valor ?></span></td>
	                				<td>IVA $   <span><?php echo $this->item->valoriva ?></span></td>
	                			</tr>
	                			<tr>
	                				<td><strong> BASE 16% TRANSPORTE</strong> </td>
	                				<td>$     	0</td>
	                				<td>IVA $   0</td>
	                			</tr>
	                			<tr>
	                				<td><strong> TOTAL BASE 16% </strong></td>
	                				<td>$     	   <span><?php echo $this->item->valor ?></span></td>
	                				<td>T. IVA $   <span><?php echo $this->item->valoriva ?></span></td>
	                			</tr>	                			
	                		</tbody>
	                	</table>	                		
	                	<hr />
		                <hr />
                	</div>
            	</div>
            	
            	<div class="row">                	
                	<div class="form-group col-xs-12">                                        
                		<div ><strong> TOTAL $	</strong <span> <span><?php echo $this->item->valor ?></span></div>
                		<div ><strong> EFECTIVO $ 	</strong> <span> </span></div>
                		<div ><strong> CAMBIO $ 	</strong> <span> </span></div>
                		<hr />
	                	<hr />
                	</div>                	
            	</div>
            	
            	<div class="row">
            		
            		<div style="text-align: center">Documento oficial de autorización de numeración de facturación <strong> 18762000722387 </strong> del 05/10/2016. Autoriza Numeración: 15000 al 50000.</div> 
					<br />
					<div style="text-align: center"><strong> REGIMEN COMÚN</strong> </div>

            	</div>
               
			</div>
            
            <input type="button" style="margin-right: 10px" class="btn btn-primary pull-right" value="Imprimir Factura" onclick="javascript:imprSelec('facturacion');"
            />					
				
		</section>		

		<input type="hidden" name="option" value="com_operacion" />			
		<input type="hidden" name="task" value="" />
		<?php echo JHtml::_('form.token'); ?>

	</form>

</div>