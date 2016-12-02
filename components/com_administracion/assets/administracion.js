jQuery(document).ready(function(){
	
	jQuery('.content-body').on('change', '.departamento', function(){
		
		var nit = jQuery(this).val();
		
		if(nit.length > 0){
			
			var dato = new FormData();
			dato.append('concan[departamento]', nit);
								
			jQuery.ajax({
			
				url: 'index.php?option=com_administracion&task=cantera.getciudades&tmpl=ajax',
				type: "POST",
				contentType:false, //Debe estar en false para que pase el objeto sin procesar
				data:dato, //Le pasamos el objeto que creamos con los archivos
				processData:false, //Debe estar en false para que JQuery no 
				cache:false
				
			}).done(function(msg){
				
				jQuery('#ciudadaj').html(msg);
				
			});	
			
		}		
		
	});
	
	jQuery('.content-body').on('change', '.pais', function(){
		
		var nit = jQuery(this).val();
		
		if(nit.length > 0){
			
			var dato = new FormData();
			dato.append('concan[pais]', nit);
								
			jQuery.ajax({
			
				url: 'index.php?option=com_administracion&task=cantera.getciudades&tmpl=ajax',
				type: "POST",
				contentType:false, //Debe estar en false para que pase el objeto sin procesar
				data:dato, //Le pasamos el objeto que creamos con los archivos
				processData:false, //Debe estar en false para que JQuery no 
				cache:false
				
			}).done(function(msg){
				
				jQuery('#ciudadaj').html(msg);
				
			});	
			
		}		
		
	});
	
	
	jQuery('.content-body').on('change', '.propiedad', function(){

		var tipo =	jQuery(this).val(); 

		if(tipo == 1 || tipo == 2){

			var dato = new FormData();

			dato.append('concan[tipo]', tipo);

			jQuery.ajax({

				url: 'index.php?option=com_administracion&task=vehiculo.getpropietario&tmpl=ajax',
				type: "POST",
				contentType:false, //Debe estar en false para que pase el objeto sin procesar
				data:dato, //Le pasamos el objeto que creamos con los archivos
				processData:false, //Debe estar en false para que JQuery no 
				cache:false
			
			}).done(function(msg){
	
				jQuery('#propiedadmsg').html(msg);
			
			});	
	
		}else{

			jQuery('#propiedadmsg').html('');

		}

	});

	jQuery('.content-body').on('click', '.canteralm', function(){

		var dato = new FormData();
		dato.append('concan[cantera]', jQuery('#concan_id').val());
		dato.append('concan[materiales]', jQuery('#concan_materiales').val());
		dato.append('concan[cantidad]', jQuery('#concan_cantidad').val());
		dato.append('concan[valor]', jQuery('#concan_valor').val());
		dato.append('concan[resistencia]', jQuery('#concan_resistencia').val());
		dato.append('concan[desgaste]', jQuery('#concan_desgaste').val());
		dato.append('concan[plasticidad]', jQuery('#concan_plasticidad').val());
			
		jQuery.ajax({
		
			url: 'index.php?option=com_administracion&task=cantera.setCanteralbyMaterial&tmpl=ajax',
			type: "POST",
			contentType:false, //Debe estar en false para que pase el objeto sin procesar
			data:dato, //Le pasamos el objeto que creamos con los archivos
			processData:false, //Debe estar en false para que JQuery no 
			cache:false

		}).done(function(msg){

			jQuery('#material').html(msg);

		});

	});

}); 