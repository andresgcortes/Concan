<?php

defined('_JEXEC') or die;

use Joomla\Utilities\ArrayHelper;

class OperacionControllerAjax extends JControllerLegacy{	

	public function getMateriales(){

		$document = JFactory::getDocument();
	    $document->setMimeEncoding( 'text/html' );

		$model = $this->getModel('OrdenPedido'); // JModelForm
		$form = $model->getForm();
		
		$html = $form->getInput('id_material');

		echo  $html;

		die(); 		

	}
	
	public function getDatosMateriales(){
		
		$document = JFactory::getDocument();
	    $document->setMimeEncoding( 'text/html' );

		$model 	= $this->getModel('OrdenPedido'); // JModelForm
		$form 	= $model->getForm();
		$user 	= JFactory::getUser();
				
		$data	= JRequest::getVar('concan', array(), 'post', 'array');
		
		$db = JFactory::getDbo();		
		$query = $db->getQuery(true);
		$query->select('a.*');
		$query->from('#__core_canteras_rel_materiales AS a');
		$query->where('id_material = '. $data['id_material'] .' AND a.id_cantera = '. $user->id_cantera);
		$db->setQuery($query);
		$option = $db->loadObject();
	
		$query = $db->getQuery(true);
		$query->select('a.carga');
		$query->from('#__core_vehiculos AS a');
		$query->where('a.disabled = 0 AND a.id = '. $data['id_vehiculo']);
		$db->setQuery($query);
		$cargav = $db->loadResult();
		
		if($option->cantidad < $cargav){		
			$cargav = $option->cantidad; 
		}
		
		$form->setValue('cantidad', '', $cargav); 
		$total = $cargav * $option->valor; 
		
		$html['html'] ='<table class="table">
        	<thead>
        		<tr>
        			<th>Cantida de Material</th>
        			<th>Resistencia</th>
        			<th>Desgaste</th>
        			<th>Plasticidad</th>
        			<th>$ Valor Unitario</th>
        		</tr>	
        	</thead>

        	<tbody>
        		<tr>
        			<td>
        				<div class="col-xs-4">                                        
							'. $form->getInput('cantidad') .'
						</div>					
					</td>
        			<td>'. $option->resistencia .'</td>
        			<td>'. $option->desgaste .'</td>
        			<td>'. $option->plasticidad .'</td>
        			<td>$ '. number_format($option->valor) .' COP</td>
        		</tr>	
        	</tbody>

        	<tfoot>
				<tr>
					<td colspan="4">Valor Total</td>
					<td >$ '. number_format($total) .' COP </td>
				</tr>
			</tfoot>
        </table>';
		
		$html['maxv'] = $cargav; 
		
		$resq = json_encode($html);
		
		echo $resq; 

		die(); 		

	}	

	public function getVehiculo(){
		
		$user = JFactory::getUser();
				
		$document = JFactory::getDocument();
	    $document->setMimeEncoding( 'text/html' );

		$model 	= $this->getModel('OrdenPedido'); // JModelForm
		$form 	= $model->getForm();
		
		$data	= JRequest::getVar('concan', array(), 'post', 'array');
	
		$db = JFactory::getDbo();		
		$query = $db->getQuery(true);
		$query->select('a.*, c.*');
		$query->from('#__core_vehiculos AS a');
		$query->join('left outer', '#__core_vehiculo_rel_conductor AS b ON a.id = b.id_vehiculo');
		$query->join('left outer', '#__core_conductores AS c ON b.id_conductor = c.id');
		$query->where('a.disabled = 0 AND a.id = '. $data['id_vehiculo'] .' AND a.id_cantera = '. $user->id_cantera);
		$db->setQuery($query);
		$option = $db->loadObject();
		
		if(!empty($option)){
			
			$html.='<table class="table">
	        	<thead>
	        		<tr>
	        			<th>Propietario</th>
	        			<th>Capacidad</th>
	        			<th>Marca</th>
	        			<th>Color</th>
	        		</tr>	
	        	</thead>

	        	<tbody>
	        		<tr>
	        			<td>'. $option->propietario .'</td>
	        			<td>'. $option->carga .' M&sup3;</td>
	        			<td>'. $option->marca .'</td>
	        			<td>'. $option->color .'</td>
	        		</tr>	
	        	</tbody>

	        	<tfoot>
					<tr>
						<td colspan="4"></td>
					</tr>
				</tfoot>
	        </table>
		    
		    <h4>Datos Conductor</h4>';
		    
			if(!empty($option->nombre)){
				
				$form->setValue('nombre', '', $option->nombre);
				$form->setValue('cedula', '', $option->cedula);
				$form->setValue('movil', '', $option->movil);
				$form->setValue('email', '', $option->email);
			
		       	$html.='<table class="table">
		        	<thead>
		        		<tr>
		        			<th>Cédula</th>
		        			<th>Nombre</th>
		        			<th>Celular</th>
		        			<th>Email</th>
		        		</tr>	
		        	</thead>

		        	<tbody>
		        		<tr>
		        			<td>'. $form->getInput('cedula') .'</td>
		        			<td>'. $form->getInput('nombre') .'</td>
		        			<td>'. $form->getInput('movil') .'</td>
		        			<td>'. $form->getInput('email')  .'</td>
		        		</tr>	
		        	</tbody>
		        	<tfoot>
						<tr>
							<td colspan="4" style="text-align: end;">								
								<span style="margin-right: 10px;" class="verificarc" >Verificar Conductor</span>
								<span style="margin-right: 10px;" class="agregarc" >Agregar Conductor</span>
							</td>
						</tr>
					</tfoot>
		        </table>';
			
			}else{
				
				$html.='<h5>Conductor no asignado por favor crear al conductor</h5>'; 
				
				$html.='<table class="table">
		        	<thead>
		        		<tr>
		        			<th>Cédula</th>
		        			<th>Nombre</th>
		        			<th>Celular</th>
		        			<th>Email</th>
		        		</tr>	
		        	</thead>

		        	<tbody>
		        		<tr>
		        			<td>'. $form->getInput('cedula') .'</td>
		        			<td>'. $form->getInput('nombre') .'</td>
		        			<td>'. $form->getInput('movil') .'</td>
		        			<td>'. $form->getInput('email')  .'</td>
		        		</tr>	
		        	</tbody>
		        	<tfoot>
						<tr>
							<td colspan="4" style="text-align: end;">								
								<span style="margin-right: 10px;" class="verificarc" >Verificar Conductor</span>
								<span style="margin-right: 10px;" class="agregarc" >Agregar Conductor</span>
							</td>
						</tr>
					</tfoot>
		        </table>';
				
			}

		}else{

			$html = "Placa no disponible";

		}

		echo $html; 

		die();			

	}
	
	public function getOrden(){

		$document = JFactory::getDocument();
	    $document->setMimeEncoding( 'text/html' );
		
		$data	= JRequest::getVar('concan', array(), 'post', 'array');
		
		$model = $this->getModel('OrdenPedido'); // JModelForm
		$form = $model->getForm();
		
		$html = $form->getInput('id_cliente');
		
		echo  $html;

		die(); 		

	}
	
	public function getDatosCedula(){
	
		$data	= JRequest::getVar('concan', array(), 'post', 'array');
		$user	= JFactory::getUser();
		
		$db = JFactory::getDbo();		
		$query = $db->getQuery(true);
		$query->select('a.*');
		$query->from('#__core_conductores AS a');
		$query->where('a.disabled = 0 AND a.cedula = '. $data['cedula'] .' AND id_cantera = '. $user->id_cantera);
		$db->setQuery($query);
		$option = $db->loadObject();		
		
		if($option){						
			$html = json_encode($option);		
		}else{			
			$html = '';		
		}
		
		print_r($html);
		
		die();		
		
	}
	
	public function getDatosCliente(){
		
		$token = JRequest::getVar('token');;
		
		$db = JFactory::getDbo();
		
		$query = $db->getQuery(true);
		$query->select('a.id');
		$query->from('#__core_clientes AS a');
		$query->where('a.estado = 2 AND a.token like '. $db->quote($token));
		$db->setQuery($query);
		$id = $db->loadResult();
		
		if(!empty($id)){
			
			$document = JFactory::getDocument();
		    $document->setMimeEncoding( 'text/html' );
			
			$data	= JRequest::getVar('concan', array(), 'post', 'array');
			
			$model = $this->getModel('OrdenPedido'); // JModelForm
			$this->form = $model->getForm();
			
			$html = ''; 			
			$html= '<div class="form-group col-xs-4">'.
				$this->form->getLabel('id_cantera')
				.'<div class="controls">'.
					$this->form->getInput('id_cantera')
				.'</div>
			</div>
			
			<div class="form-group col-xs-4">'.
				$this->form->getLabel('id_vehiculo') .'  '.
				$this->form->getInput('id_vehiculo')
			.'</div>
			
			<div class="form-group col-xs-4">'.
				$this->form->getLabel('fecha_ingreso')
				.'<div class="controls">'.
					$this->form->getInput('fecha_ingreso')
				.'</div>
			</div>
			
			<div class="form-group col-xs-12" id="vehiculo"></div>
						
			<div class="form-group col-xs-4">'.
				$this->form->getLabel('id_material')
				.'<div class="controls" id="material">'.
					$this->form->getInput('id_material')
				.'</div>
			</div>			
				
			<div class="form-group col-xs-12" id="datosmaterial"></div>
			
			<div class="clearfix"></div>
			
            <input  type="hidden" name="concan[id_cliente]" value="'. $id .'">
			<button type="button" class="btn btn-white" data-dismiss="modal">Cerrar</button>
            <input  type="button" onclick="Joomla.submitbutton(\'ordenesweb.save\');" class="btn btn-primary pull-right" value="Crear Orden"/>'; 
			
			echo $html; 
			
		}else{
		
			echo 'false'; 	
			
		}
		
		die(); 
		
	}
	
	public function setConductor(){
		
		$data	= JRequest::getVar('concan', array(), 'post', 'array');
		$user 	= JFactory::getUser();  
		$conductor = new stdClass;
		
		$db = JFactory::getDbo(); 		
		$conductor->id 		= null;		
		$conductor->cedula 	= $data['cedula'];
		$conductor->nombre 	= $data['nombre'];
		$conductor->movil 	= $data['movil'];
		$conductor->email 	= $data['email'];
		$conductor->id_cantera = $user->id_cantera;			
						
		if (!$db->InsertObject('#__core_conductores', $conductor, 'id')) {
		    echo $db->stderr();
		    return false;
		}		
		
		echo 'true'; 
		
		die();
		
	}
		
} ?>