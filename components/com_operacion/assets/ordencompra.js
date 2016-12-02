jQuery(document).ready(function(){
	
	jQuery("#concan_fecha_ingreso").attr("data-mask", "y-m-d");
	
	jQuery('.content-body').on('change', '.materiales', function(){

		var material 	= jQuery('#concan_id_material').val();
		var vehiculo 	= jQuery('#concan_id_vehiculo').val();
		
		if(material.length > 0){
			
			var dato = new FormData();
			dato.append('concan[id_material]', material);
			dato.append('concan[id_vehiculo]', vehiculo);

			jQuery.ajax({
			
				url: 'index.php?option=com_operacion&task=ajax.getDatosMateriales&tmpl=raw',
				type: "POST",
				contentType:false, //Debe estar en false para que pase el objeto sin procesar
				data:dato, //Le pasamos el objeto que creamos con los archivos
				processData:false, //Debe estar en false para que JQuery no 
				cache:false
				
			}).done(function(msg){
				
				var obj = jQuery.parseJSON(msg);
				
				jQuery('#datosmaterial').html(obj.html);				
				jQuery("#concan_cantidad").attr("data-capacidadmax", obj.maxv);
			
			});	
			
		}else{
			
			jQuery('#datosmaterial').html('');
		
		}
		
	});
	
	jQuery('.content-body').on('change', '.vehiculo', function(){
		
		var vehiculo	= jQuery(this).val();
		
		if(vehiculo.length > 0){
			
			var dato = new FormData();
			dato.append('concan[id_vehiculo]', vehiculo);
			
			jQuery.ajax({
			
				url: 'index.php?option=com_operacion&task=ajax.getVehiculo&tmpl=raw',
				type: "POST",
				contentType:false, //Debe estar en false para que pase el objeto sin procesar
				data:dato, //Le pasamos el objeto que creamos con los archivos
				processData:false, //Debe estar en false para que JQuery no 
				cache:false
				
			}).done(function(msg){
				
				jQuery('#vehiculo').html(msg);
				
			});	
			
		}
		
	});
		
	jQuery('.content-body').on('change', '.orden', function(){
		  		
  		var $orden	= jQuery('input.orden:checked', '#concan_tipo_orden').val()
		
		if($orden.length > 0){
			
			var dato = new FormData();
			dato.append('concan[id_orden]', $orden);
		
			jQuery.ajax({
			
				url: 'index.php?option=com_operacion&task=ajax.getOrden&tmpl=raw',
				type: "POST",
				contentType:false, //Debe estar en false para que pase el objeto sin procesar
				data:dato, //Le pasamos el objeto que creamos con los archivos
				processData:false, //Debe estar en false para que JQuery no 
				cache:false
				
			}).done(function(msg){
				
				jQuery('#tipo_orden').html(msg);
				
			});		
		
		}
  		
	});
	
	jQuery('.content-body').on('keyup', '#concan_cantidad', function(){
		
		var vinput	= jQuery(this).val();
		var maxv 	= jQuery(this).data('capacidadmax');
		
		if(vinput > maxv){
			
			alert('El valor ingresado sobrepasa la capacidad del Vehículo');
			jQuery(this).val(maxv);
			
		}
	
	});
	
	jQuery('.content-body').on('click', '.verificarc', function(){
		
		var $vinput	= jQuery('#concan_cedula').val();
				
		if($vinput.length > 4){
			
			var dato = new FormData();
			dato.append('concan[cedula]', $vinput);
		
			jQuery.ajax({
			
				url: 'index.php?option=com_operacion&task=ajax.getDatosCedula&tmpl=raw',
				type: "POST",
				contentType:false, //Debe estar en false para que pase el objeto sin procesar
				data:dato, //Le pasamos el objeto que creamos con los archivos
				processData:false, //Debe estar en false para que JQuery no 
				cache:false
				
			}).done(function(msg){
				
				var obj = jQuery.parseJSON(msg);
				
				if(obj){
										
					jQuery('#concan_nombre').removeAttr("disabled", false);
					jQuery('#concan_nombre').val(obj.nombre);
					jQuery('#concan_movil').removeAttr("disabled", false);
					jQuery('#concan_movil').val(obj.movil);
					jQuery('#concan_email').removeAttr("disabled", false);
					jQuery('#concan_email').val(obj.email);
				
				}else{
					
					jQuery('#concan_nombre').val('');
					jQuery('#concan_movil').val('');
					jQuery('#concan_email').val('');
									
				}			
			
			});	
			
		}		
		
	});	
	
	jQuery('.content-body').on('click', '.agregarc', function(){
		
		var $vinput	= jQuery('#concan_cedula').val();
		var $nombre	= jQuery('#concan_nombre').val();
		var $movil	= jQuery('#concan_movil').val();
		var $email	= jQuery('#concan_email').val();
						
		if($vinput.length > 4){
			
			var dato = new FormData();
			dato.append('concan[cedula]', $vinput);
			dato.append('concan[nombre]', $nombre);
			dato.append('concan[movil]',  $movil);
			dato.append('concan[email]',  $email);
		
			jQuery.ajax({
			
				url: 'index.php?option=com_operacion&task=ajax.setConductor&tmpl=raw',
				type: "POST",
				contentType:false, //Debe estar en false para que pase el objeto sin procesar
				data:dato, //Le pasamos el objeto que creamos con los archivos
				processData:false, //Debe estar en false para que JQuery no 
				cache:false
				
			}).done(function(msg){
				
				alert('Conductor Ingresado Correctamente, si desea completar la información por dirijase al modulo de conductores')
				
			});	
			
		}		
		
	});	
	
	jQuery('.content-body').on('click', '.valtoken', function(){

		var token	= jQuery('#concan_token').val();
				
		if(token.length > 0){
			
			var dato = new FormData();
			dato.append('token', token);
		
			jQuery.ajax({
			
				url: 'index.php?option=com_operacion&task=ajax.getDatosCliente&tmpl=raw',
				type: "POST",
				contentType:false, //Debe estar en false para que pase el objeto sin procesar
				data:dato, //Le pasamos el objeto que creamos con los archivos
				processData:false, //Debe estar en false para que JQuery no 
				cache:false
				
			}).done(function(msg){
				
				if(msg != 'false'){
				
					jQuery('.tk').hide();
					jQuery('#datoscliente').html(msg);
					
				}else{
					
					alert('El Token ingresado no es valido');
					
				}
				
			});	
				
		}
		
	});
	
})
