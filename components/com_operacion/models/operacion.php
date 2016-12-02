<?php

defined('_JEXEC') or die('=;)');

class OperacionModelOperacion extends JModelAdmin{

	public function getTable($type = 'OrdenPedido', $prefix = 'OperacionTable', $config = array()){
		return JTable::getInstance($type, $prefix, $config);
	}
	
	public function getForm($data = array(), $loadData = true){

		// Get the form.
		$form = $this->loadForm('com_operacion.operacion', 'operacion', array('control' => 'concan', 'load_data' => $loadData));

		if(empty($form)){
			return false;
		}

		return $form;

	}

  	protected function loadFormData() {

        // Check the session for previously entered form data.
        $data = JFactory::getApplication()->getUserState('com_operacion.edit.operacion.data', array());

		if (empty($data)){
           $data = $this->getItem();
        }

        return $data;

    }
	
	public function Save($data){
		
		$user 	= JFactory::getUser();
		$table 	= $this->gettable();
		$key 	= $table->getKeyName();
		$pk 	= (!empty($data[$key])) ? $data[$key] : (int) $this->getState($this->getName() . '.id');
		$isNew 	= true;
		
		$datenow 	= JFactory::getDate();
		$datenow	= $datenow->format('Y-m-d H:s', true);
		
 		$data['modificated_by'] = $user->id;
 		$data['modificated'] 	= $datenow;			 				
		
		if ($pk > 0){
			
			$table->load($pk);
			$isNew = false;
			
		}else{
			
			$data['created_by'] 	= $user->id;
 			$data['created'] 		= $datenow;

		}
		
		$this->getPlacaOcr();		
		
		// Bind the data.
		if (!$table->bind($data)){
			$this->setError($table->getError());
			return false;
		}
		
		// Prepare the row for saving
		$this->prepareTable($table);
		
		// Store the data.
		if (!$table->store()){
			$this->setError($table->getError());
			return false;
		}	

		// Clean the cache.
		$this->cleanCache();

		// Trigger the onContentAfterSave event.		
		$pkName = $table->getKeyName();

		if (isset($table->$pkName)){
			$this->setState($this->getName() . '.id', $table->$pkName);
		}
				
		$this->setState($this->getName() . '.new', $isNew);

		return true;
		
	} 		
	
	public function SetEstadoProceso($dato){
		
		$db 		= JFactory::getDbo();
		$user 		= JFactory::getUser(); 
		$datenow 	= JFactory::getDate();
		$datenow	= $datenow->format('Y-m-d H:i', true);
		
		$dato['modified_by']	= $user->id; 
		$dato['modified']		= $datenow;
		
		$table = $this->getTable();
		$table->load($dato['id']);
				
		// Bind the data.		
		if (!$table->bind($dato)){
			$this->setError($table->getError());
			return false;
		}			
			
		// Prepare the row for saving
		$this->prepareTable($table);

		// Check the data.
		if (!$table->check()){
			$this->setError($table->getError());
			return false;
		}

		// Store the data.
		if (!$table->store()){
			$this->setError($table->getError());
			return false;
		}

		// Clean the cache.
		$this->cleanCache();
		
		return true; 
	
	}
	
	public function getPlacaOcr(){
		
		/*$filePath	= JRequest::getVar('concan', array(), 'files', 'array');
		$filePath 	= $filePath['tmp_name']['placa'] .'/'. $filePath['name']['placa']; 
		$filePath 	= JPATH_ROOT."/placas/placa6.jpg";		
		
		$license_code 	= 'BBC75B59-967E-4A13-826C-44C2071863BB';
        $username 		= 'greco';
		
		$client = new SoapClient("http://www.ocrwebservice.com/services/OCRWebService.asmx?WSDL"
			, array("trace"=>1, "exceptions"=>1)
		);

		$params = new StdClass();
		$params->user_name		= $username;
		$params->license_code 	= $license_code;
			 
		$inimage = new StdClass();

		$handle = fopen($filePath, 'rb');
		$card_image = fread($handle, filesize($filePath));
		fclose($handle);

		$inimage->fileName = "placa.jpg";
		$inimage->fileData = $card_image;

		$params->OCRWSInputImage = $inimage;

		$settings = new StdClass();
		$settings->ocrLanguages = array("SPANISH");
		$settings->outputDocumentFormat  = "TXT";
		$settings->convertToBW = TRUE;
		$settings->getOCRText = TRUE;
		$settings->createOutputDocument = FALSE;
		$settings->multiPageDoc = FALSE;
		$settings->ocrWords = true;

		$params->OCRWSSetting = $settings;

		try{
			$result = $client->OCRWebServiceRecognize($params);
		}catch(SoapFault $fault){
			print($client->__getLastRequest());
			print($client->__getLastRequestHeaders());
		}
		
		var_dump($result);
		print("Done");
		
		die(); */

	}
	
	public function setNovedad($data){
		
		$id 				= $data['id'];
		
		$data['id'] 		= null;
		$data['principal'] 	= 0;
		$data['id_parent'] 	= $id;
				
		$this->save($data);
				
		return true; 
	
	}
	
} ?>