<?php

defined('_JEXEC') or die;

JHtml::_('behavior.tooltip');
JHTML::_('behavior.formvalidation');

?>

<script type="text/javascript">

	Joomla.submitbutton = function(task){
		
		if ((task == 'material.cancel') || document.formvalidator.isValid(document.id('Material'))){
			
			Joomla.submitform(task, document.getElementById('Material'));
	  			
		}else{
	 		alert("Existen campos vacios por favor verifique!");
			return false;
		}	
	
	}

</script>		

<form action="<?php JRoute::_('index.php?option=com_administracion&view=material&layout=edit&id='.$this->item->id) ?>" method="post" name="adminForm" id="Material" enctype="multipart/form-data" class="form-validate form">
			
	<div class="box-content" style="margin: 20px;">
		
		<div>
			<?php echo $this->form->getLabel('nombre'); echo $this->form->getInput('nombre'); ?> 
		</div>
		
		<div>
    		<?php echo $this->form->getLabel('descripcion'); echo $this->form->getInput('descripcion'); ?> 
    	</div>
    	
    	<div>
    		<?php echo $this->form->getLabel('resistencia'); echo $this->form->getInput('resistencia'); ?> 
    	</div>
		
		<div>
			<?php echo $this->form->getLabel('desgaste'); echo $this->form->getInput('desgaste'); ?> 
		</div>
		
		<div>
			<?php echo $this->form->getLabel('plasticidad'); echo $this->form->getInput('plasticidad'); ?> 
		</div>
		
	</div>
	
	<input type="hidden" name="option" value="com_administracion" />			
	<input type="hidden" name="task" value="" />
	<?php echo JHtml::_('form.token'); ?>
	<?php echo $this->form->getInput('id'); ?>
	
</form>

	<div style="float: right;" >		
		<input type="button" onclick="Joomla.submitbutton('material.save');" class="btn btn-primary" value="Guardar">		
	</div>
	