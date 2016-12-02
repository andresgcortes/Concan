<?php

defined('_JEXEC') or die('=;)');

class OperacionModelOrdenWeb extends JModelAdmin{

	public function getTable($type = 'OrdenWeb', $prefix = 'OperacionTable', $config = array()){
		return JTable::getInstance($type, $prefix, $config);
	}
	
	public function getForm($data = array(), $loadData = true){

		// Get the form.
		$form = $this->loadForm('com_operacion.ordenespedido', 'ordenespedido', array('control' => 'concan', 'load_data' => $loadData));

		if(empty($form)){
			return false;
		}

		return $form;

	}

  	protected function loadFormData() {

        // Check the session for previously entered form data.
        $data = JFactory::getApplication()->getUserState('com_operacion.edit.ordenespedido.data', array());

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
		
		$data['tipo_orden'] 	= 1;
				
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
	
} ?>