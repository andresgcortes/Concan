<?php

/**
 * @package     Joomla.Site
 * @subpackage  com_users
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::_('behavior.keepalive');
JHtml::_('behavior.formvalidator'); 

$user = JFactory::getUser();

if($user->guest == 1){ ?>

<div class="content-body">    

	<div class="row">
    	
    	<div class="col-md-12 col-sm-12 col-xs-12">			
			<button type="button" data-toggle="modal" onclick="AjaxModalContent();" class="btn btn-danger pull-right btn-lg">Solicitud de Ordenes</button> 		
        </div>
	
        <!-- modal start -->
         <div class="modal fade" id="ultraModal-8">
            <div class="modal-dialog" style="width: 1000px">
                
                <div class="modal-content">                   
                	<div class="modal-body" style="height: 550px; overflow: overlay;">Content is loading...</div>

				</div>

            </div>

        </div>
        <!-- modal end -->

		<script type="text/javascript">

        	function AjaxModalContent(){
           	
            	jQuery('#ultraModal-8').modal('show', {backdrop: 'static'});

                jQuery.ajax({
               
                    url: "index.php?option=com_operacion&view=ordenesweb&layout=edit&tmpl=component&Itemid=124",
                   
                    success: function(response){
                        jQuery('#ultraModal-8 .modal-body').html(response);
                    }
           
               	});

            }
	
		</script>

    </div>

</div>	

<div id="login" class="login loginpage col-lg-offset-4 col-lg-4 col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-offset-2 col-xs-8">

	<h1><a href="#" title="Login Page" tabindex="-1">Concan</a></h1>
	
	<form action="<?php echo JRoute::_('index.php?option=com_users&task=user.login'); ?>" name="loginform" id="loginform" class="" method="post">
	
		<p>
            <label for="user_login">Usuario<br />
            	<input type="text" name="username" id="username" value="" class="input" size="20" autofocus="" />
        	</label>
        </p>

        <p>
            <label for="user_pass">Contraseña<br />
        		<input type="password" name="password" id="password" value="" class="input" size="20" maxlength="99" />
        	</label>
        </p>
        
		<?php if (JPluginHelper::isEnabled('system', 'remember')) : ?>

			<p class="forgetmenot">
	            <label class="icheck-label form-label" for="rememberme">
	            <input name="remember" type="checkbox" id="remember" class="skin-square-orange" value="yes"/> 
	            	Recordarme
	            </label>
	        </p>			

		<?php endif; ?>
		
		<p class="submit">
            <input type="submit" name="wp-submit" id="wp-submit" class="btn btn-orange btn-block" value="Ingresar" />
        </p>

		<?php echo JHtml::_('form.token'); ?>

	</form>     
	
 	<p id="nav">
    	<a class="pull-left" href="<?php echo JRoute::_('index.php?option=com_users&view=reset'); ?>" title="Olvido su Contraseña?">Olvido se Contraseña?</a>
        <a class="pull-right" href="<?php echo JRoute::_('index.php?option=com_users&view=remind'); ?>" title="Reset">Información </a>

    </p>

</div>        

<?php } ?>