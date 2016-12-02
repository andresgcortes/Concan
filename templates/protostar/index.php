<?php

/**

 * @package     Joomla.Site

 * @subpackage  Templates.protostar

 *

 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.

 * @license     GNU General Public License version 2 or later; see LICENSE.txt

 */

defined('_JEXEC') or die;

$app             = JFactory::getApplication();
$doc             = JFactory::getDocument();
$user            = JFactory::getUser();

$option   = $app->input->getCmd('option', '');
$view     = $app->input->getCmd('view', '');
$layout   = $app->input->getCmd('layout', '');
$task     = $app->input->getCmd('task', '');
$itemid   = $app->input->getCmd('Itemid', '');
$tmpl   = $app->input->getCmd('tmpl', '');
$sitename = $app->get('sitename'); 

$this->language  = $doc->language;
$this->direction = $doc->direction;

// Output as HTML5
$doc->setHtml5(true);

//etting params from template
$params = $app->getTemplate(true)->params;

JHtml::_('bootstrap.framework'); 

$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/bootstrap/css/bootstrap.min.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/pace/pace-theme-flash.css');  
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/bootstrap/css/bootstrap-theme.min.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/fonts/font-awesome/css/font-awesome.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/css/animate.min.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/perfect-scrollbar/perfect-scrollbar.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/css/style.css'); 
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/css/responsive.css');

?>

<!DOCTYPE html>

<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
	
	<head>

		 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<jdoc:include type="head" />

		<!--[if lt IE 9]><script src="<?php echo JUri::root(true); ?>/media/jui/js/html5.js"></script><![endif]-->

	</head>
		
	<?php if($user->guest == 1 || $tmpl == 'component'){
	
		$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/icheck/skins/square/orange.css');
			
		require  JPATH_ROOT .'/templates/protostar/login.php'; 
 	
	}else{

		// Add Stylesheets
		/*$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/morris-chart/css/morris.css');
		$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/jquery-ui/smoothness/jquery-ui.min.css');
		$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/rickshaw-chart/css/graph.css');
		$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/rickshaw-chart/css/detail.css');
		$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/rickshaw-chart/css/legend.css');
		$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/rickshaw-chart/css/extensions.css');
		$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/rickshaw-chart/css/rickshaw.min.css');
		$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/rickshaw-chart/css/lines.css');
		$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/jvectormap/jquery-jvectormap-2.0.1.css');
		$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/icheck/skins/minimal/white.css');
*/
		// Logo file or site title param
		if ($this->params->get('logoFile')){
			$logo = '<img src="' . JUri::root() . $this->params->get('logoFile') . '" alt="' . $sitename . '" />';
		}elseif ($this->params->get('sitetitle')){
			$logo = '<span class="site-title" title="' . $sitename . '">' . htmlspecialchars($this->params->get('sitetitle'), ENT_COMPAT, 'UTF-8') . '</span>';
		}else{
			$logo = '<span class="site-title" title="' . $sitename . '">' . $sitename . '</span>';
		} ?>
	
		<body class=" ">

		    <!-- START TOPBAR -->        
	        <div class="page-topbar">

	            <a href="<?php echo $this->baseurl ?>/index.php" title="Logo">
	            	<div class='logo-area'></div>
	            </a>

	            <div class='quick-area'>

	                <div class='pull-left'>

	                    <ul class="info-menu left-links list-inline list-unstyled">

	                        <li class="sidebar-toggle-wrap">

	                            <a href="#" data-toggle="sidebar" class="sidebar_toggle">

	                                <i class="fa fa-bars"></i>

	                            </a>

	                        </li>

	                        <li class="message-toggle-wrapper">

	                            <a href="#" data-toggle="dropdown" class="toggle">

	                                <i class="fa fa-envelope"></i>

	                                <span class="badge badge-primary">7</span>

	                            </a>

	                            <ul class="dropdown-menu messages animated fadeIn">



	                                <li class="list">



	                                    <ul class="dropdown-menu-list list-unstyled ps-scrollbar">

	                                        <li class="unread status-available">

	                                            <a href="javascript:;">

	                                                <div class="user-img">

	                                                    <img src="data/profile/avatar-1.png" alt="user-image" class="img-circle img-inline">

	                                                </div>

	                                                <div>

	                                                    <span class="name">

	                                                        <strong>Clarine Vassar</strong>

	                                                        <span class="time small">- 15 mins ago</span>

	                                                        <span class="profile-status available pull-right"></span>

	                                                    </span>

	                                                    <span class="desc small">

	                                                        Sometimes it takes a lifetime to win a battle.

	                                                    </span>

	                                                </div>

	                                            </a>

	                                        </li>

	                                        <li class=" status-away">

	                                            <a href="javascript:;">

	                                                <div class="user-img">

	                                                    <img src="data/profile/avatar-2.png" alt="user-image" class="img-circle img-inline">

	                                                </div>

	                                                <div>

	                                                    <span class="name">

	                                                        <strong>Brooks Latshaw</strong>

	                                                        <span class="time small">- 45 mins ago</span>

	                                                        <span class="profile-status away pull-right"></span>

	                                                    </span>

	                                                    <span class="desc small">

	                                                        Sometimes it takes a lifetime to win a battle.

	                                                    </span>

	                                                </div>

	                                            </a>

	                                        </li>

	                                        <li class=" status-busy">

	                                            <a href="javascript:;">

	                                                <div class="user-img">

	                                                    <img src="data/profile/avatar-3.png" alt="user-image" class="img-circle img-inline">

	                                                </div>

	                                                <div>

	                                                    <span class="name">

	                                                        <strong>Clementina Brodeur</strong>

	                                                        <span class="time small">- 1 hour ago</span>

	                                                        <span class="profile-status busy pull-right"></span>

	                                                    </span>

	                                                    <span class="desc small">

	                                                        Sometimes it takes a lifetime to win a battle.

	                                                    </span>

	                                                </div>

	                                            </a>

	                                        </li>

	                                        <li class=" status-offline">

	                                            <a href="javascript:;">

	                                                <div class="user-img">

	                                                    <img src="data/profile/avatar-4.png" alt="user-image" class="img-circle img-inline">

	                                                </div>

	                                                <div>

	                                                    <span class="name">

	                                                        <strong>Carri Busey</strong>

	                                                        <span class="time small">- 5 hours ago</span>

	                                                        <span class="profile-status offline pull-right"></span>

	                                                    </span>

	                                                    <span class="desc small">

	                                                        Sometimes it takes a lifetime to win a battle.

	                                                    </span>

	                                                </div>

	                                            </a>

	                                        </li>

	                                        <li class=" status-offline">

	                                            <a href="javascript:;">

	                                                <div class="user-img">

	                                                    <img src="data/profile/avatar-5.png" alt="user-image" class="img-circle img-inline">

	                                                </div>

	                                                <div>

	                                                    <span class="name">

	                                                        <strong>Melissa Dock</strong>

	                                                        <span class="time small">- Yesterday</span>

	                                                        <span class="profile-status offline pull-right"></span>

	                                                    </span>

	                                                    <span class="desc small">

	                                                        Sometimes it takes a lifetime to win a battle.

	                                                    </span>

	                                                </div>

	                                            </a>

	                                        </li>

	                                        <li class=" status-available">

	                                            <a href="javascript:;">

	                                                <div class="user-img">

	                                                    <img src="data/profile/avatar-1.png" alt="user-image" class="img-circle img-inline">

	                                                </div>

	                                                <div>

	                                                    <span class="name">

	                                                        <strong>Verdell Rea</strong>

	                                                        <span class="time small">- 14th Mar</span>

	                                                        <span class="profile-status available pull-right"></span>

	                                                    </span>

	                                                    <span class="desc small">

	                                                        Sometimes it takes a lifetime to win a battle.

	                                                    </span>

	                                                </div>

	                                            </a>

	                                        </li>

	                                        <li class=" status-busy">

	                                            <a href="javascript:;">

	                                                <div class="user-img">

	                                                    <img src="data/profile/avatar-2.png" alt="user-image" class="img-circle img-inline">

	                                                </div>

	                                                <div>

	                                                    <span class="name">

	                                                        <strong>Linette Lheureux</strong>

	                                                        <span class="time small">- 16th Mar</span>

	                                                        <span class="profile-status busy pull-right"></span>

	                                                    </span>

	                                                    <span class="desc small">

	                                                        Sometimes it takes a lifetime to win a battle.

	                                                    </span>

	                                                </div>

	                                            </a>

	                                        </li>

	                                        <li class=" status-away">

	                                            <a href="javascript:;">

	                                                <div class="user-img">

	                                                    <img src="data/profile/avatar-3.png" alt="user-image" class="img-circle img-inline">

	                                                </div>

	                                                <div>

	                                                    <span class="name">

	                                                        <strong>Araceli Boatright</strong>

	                                                        <span class="time small">- 16th Mar</span>

	                                                        <span class="profile-status away pull-right"></span>

	                                                    </span>

	                                                    <span class="desc small">

	                                                        Sometimes it takes a lifetime to win a battle.

	                                                    </span>

	                                                </div>

	                                            </a>

	                                        </li>



	                                    </ul>



	                                </li>



	                                <li class="external">

	                                    <a href="javascript:;">

	                                        <span>Read All Messages</span>

	                                    </a>

	                                </li>

	                            </ul>



	                        </li>

	                        <li class="notify-toggle-wrapper">

	                            <a href="#" data-toggle="dropdown" class="toggle">

	                                <i class="fa fa-bell"></i>

	                                <span class="badge badge-orange">3</span>

	                            </a>

	                            <ul class="dropdown-menu notifications animated fadeIn">

	                                <li class="total">

	                                    <span class="small">

	                                        You have <strong>3</strong> new notifications.

	                                        <a href="javascript:;" class="pull-right">Mark all as Read</a>

	                                    </span>

	                                </li>

	                                <li class="list">



	                                    <ul class="dropdown-menu-list list-unstyled ps-scrollbar">

	                                        <li class="unread available"> <!-- available: success, warning, info, error -->

	                                            <a href="javascript:;">

	                                                <div class="notice-icon">

	                                                    <i class="fa fa-check"></i>

	                                                </div>

	                                                <div>

	                                                    <span class="name">

	                                                        <strong>Server needs to reboot</strong>

	                                                        <span class="time small">15 mins ago</span>

	                                                    </span>

	                                                </div>

	                                            </a>

	                                        </li>

	                                        <li class="unread away"> <!-- available: success, warning, info, error -->

	                                            <a href="javascript:;">

	                                                <div class="notice-icon">

	                                                    <i class="fa fa-envelope"></i>

	                                                </div>

	                                                <div>

	                                                    <span class="name">

	                                                        <strong>45 new messages</strong>

	                                                        <span class="time small">45 mins ago</span>

	                                                    </span>

	                                                </div>

	                                            </a>

	                                        </li>

	                                        <li class=" busy"> <!-- available: success, warning, info, error -->

	                                            <a href="javascript:;">

	                                                <div class="notice-icon">

	                                                    <i class="fa fa-times"></i>

	                                                </div>

	                                                <div>

	                                                    <span class="name">

	                                                        <strong>Server IP Blocked</strong>

	                                                        <span class="time small">1 hour ago</span>

	                                                    </span>

	                                                </div>

	                                            </a>

	                                        </li>

	                                        <li class=" offline"> <!-- available: success, warning, info, error -->

	                                            <a href="javascript:;">

	                                                <div class="notice-icon">

	                                                    <i class="fa fa-user"></i>

	                                                </div>

	                                                <div>

	                                                    <span class="name">

	                                                        <strong>10 Orders Shipped</strong>

	                                                        <span class="time small">5 hours ago</span>

	                                                    </span>

	                                                </div>

	                                            </a>

	                                        </li>

	                                        <li class=" offline"> <!-- available: success, warning, info, error -->

	                                            <a href="javascript:;">

	                                                <div class="notice-icon">

	                                                    <i class="fa fa-user"></i>

	                                                </div>

	                                                <div>

	                                                    <span class="name">

	                                                        <strong>New Comment on blog</strong>

	                                                        <span class="time small">Yesterday</span>

	                                                    </span>

	                                                </div>

	                                            </a>

	                                        </li>

	                                        <li class=" available"> <!-- available: success, warning, info, error -->

	                                            <a href="javascript:;">

	                                                <div class="notice-icon">

	                                                    <i class="fa fa-check"></i>

	                                                </div>

	                                                <div>

	                                                    <span class="name">

	                                                        <strong>Great Speed Notify</strong>

	                                                        <span class="time small">14th Mar</span>

	                                                    </span>

	                                                </div>

	                                            </a>

	                                        </li>

	                                        <li class=" busy"> <!-- available: success, warning, info, error -->

	                                            <a href="javascript:;">

	                                                <div class="notice-icon">

	                                                    <i class="fa fa-times"></i>

	                                                </div>

	                                                <div>

	                                                    <span class="name">

	                                                        <strong>Team Meeting at 6PM</strong>

	                                                        <span class="time small">16th Mar</span>

	                                                    </span>

	                                                </div>

	                                            </a>

	                                        </li>



	                                    </ul>



	                                </li>



	                                <li class="external">

	                                    <a href="javascript:;">

	                                        <span>Read All Notifications</span>

	                                    </a>

	                                </li>

	                            </ul>

	                        </li>

	                        <li class="hidden-sm hidden-xs searchform">

	                            <div class="input-group">

	                                <span class="input-group-addon input-focus">

	                                    <i class="fa fa-search"></i>

	                                </span>

	                                <form action="search-page.html" method="post">

	                                    <input type="text" class="form-control animated fadeIn" placeholder="Search & Enter">

	                                    <input type='submit' value="">

	                                </form>

	                            </div>

	                        </li>

	                    </ul>

	                </div>		

	                <div class='pull-right'>

	                    <ul class="info-menu right-links list-inline list-unstyled">

	                        <li class="profile">

	                            <a href="#" data-toggle="dropdown" class="toggle">

	                                <img src="data/profile/profile.png" alt="user-image" class="img-circle img-inline">

	                                <span><?php echo $user->name ?> <i class="fa fa-angle-down"></i></span>

	                            </a>

	                            <ul class="dropdown-menu profile animated fadeIn">

	                                <li>

	                                    <a href="#settings">

	                                        <i class="fa fa-wrench"></i>

	                                        Settings

	                                    </a>

	                                </li>

	                                <li>

	                                    <a href="#profile">

	                                        <i class="fa fa-user"></i>

	                                        Profile

	                                    </a>

	                                </li>

	                                <li>

	                                    <a href="#help">

	                                        <i class="fa fa-info"></i>

	                                        Help

	                                    </a>

	                                </li>

	                                <li class="last">

	                                    <a href="ui-login.html">

	                                        <i class="fa fa-lock"></i>

	                                        Logout

	                                    </a>

	                                </li>

	                            </ul>

	                        </li>

	                        

	                    </ul>			

	                </div>		

	            </div>

	        </div>
	        <!-- END TOPBAR -->
	       
	        <!-- START CONTAINER -->
	        <div class="page-container row-fluid">

	            <!-- SIDEBAR - START -->
	            <div class="page-sidebar">

	                <!-- MAIN MENU - START -->
	                <div class="page-sidebar-wrapper" id="main-menu-wrapper"> 

	                    <!-- USER INFO - START -->
	                    <!--<div class="profile-info row">
	                        <div class="profile-image col-md-4 col-sm-4 col-xs-4">
	                            <a href="ui-profile.html">
	                                <img src="data/profile/profile.png" class="img-responsive img-circle">
	                            </a>
	                        </div>

	                        <div class="profile-details col-md-8 col-sm-8 col-xs-8">
	                            <h3>
	                                <a href="ui-profile.html">Jason Bourne</a>
	                                <!-- Available statuses: online, idle, busy, away and offline -->
	                                <!--<span class="profile-status online"></span>
	                            </h3>

	                            <p class="profile-title">Web Developer</p>



	                        </div>



	                    </div>-->

	                    <!-- USER INFO - END -->



						<?php if($this->countModules('position-8')) : ?>



							<!-- Begin Sidebar -->

							<div id="sidebar" class="span3">

								<div class="sidebar-nav">

									<jdoc:include type="modules" name="position-8" style="xhtml" />

								</div>

							</div>

						<!-- End Sidebar -->



						<?php endif; ?>

	                    

	                </div>
	                <!-- MAIN MENU - END -->

	                <div class="project-info">

	                    <div class="block1">
	                        <div class="data">
	                            <span class='title'>New&nbsp;Orders</span>
	                            <span class='total'>2,345</span>
	                        </div>
	                        <div class="graph">
	                            <span class="sidebar_orders">...</span>
	                        </div>
	                    </div>

	                    <div class="block2">
	                        <div class="data">
	                            <span class='title'>Visitors</span>
	                            <span class='total'>345</span>

	                        </div>

	                        <div class="graph">

	                            <span class="sidebar_visitors">...</span>

	                        </div>

	                    </div>



	                </div>

	            </div>

	            <!--  SIDEBAR - END -->

	            <!-- START CONTENT -->

	            <section id="main-content" class=" ">
       

	                <section class="wrapper" style='margin-top:60px;display:inline-block;width:100%;padding:15px 0 0 15px;'>

						

						<jdoc:include type="modules" name="position-3" style="xhtml" />

	                    <jdoc:include type="message" />

	                    

	                    <div class="clearfix"></div>



	                        <!-- CONTENIDO JOOMLA -->

	                       

										<jdoc:include type="component" />

									

						



	                </section> 

	            </section>

	            <!-- END CONTENT -->

	            <div class="page-chatapi hideit">



	                <div class="search-bar">

	                    <input type="text" placeholder="Search" class="form-control">

	                </div>



	                <div class="chat-wrapper">

	                    <h4 class="group-head">Groups</h4>

	                    <ul class="group-list list-unstyled">

	                        <li class="group-row">

	                            <div class="group-status available">

	                                <i class="fa fa-circle"></i>

	                            </div>

	                            <div class="group-info">

	                                <h4><a href="#">Work</a></h4>

	                            </div>

	                        </li>

	                        <li class="group-row">

	                            <div class="group-status away">

	                                <i class="fa fa-circle"></i>

	                            </div>

	                            <div class="group-info">

	                                <h4><a href="#">Friends</a></h4>

	                            </div>

	                        </li>



	                    </ul>





	                    <h4 class="group-head">Favourites</h4>

	                    <ul class="contact-list">



	                        <li class="user-row" id='chat_user_1' data-user-id='1'>

	                            <div class="user-img">

	                                <a href="#"><img src="data/profile/avatar-1.png" alt=""></a>

	                            </div>

	                            <div class="user-info">

	                                <h4><a href="#">Clarine Vassar</a></h4>

	                                <span class="status available" data-status="available"> Available</span>

	                            </div>

	                            <div class="user-status available">

	                                <i class="fa fa-circle"></i>

	                            </div>

	                        </li>

	                        <li class="user-row" id='chat_user_2' data-user-id='2'>

	                            <div class="user-img">

	                                <a href="#"><img src="data/profile/avatar-2.png" alt=""></a>

	                            </div>

	                            <div class="user-info">

	                                <h4><a href="#">Brooks Latshaw</a></h4>

	                                <span class="status away" data-status="away"> Away</span>

	                            </div>

	                            <div class="user-status away">

	                                <i class="fa fa-circle"></i>

	                            </div>

	                        </li>

	                        <li class="user-row" id='chat_user_3' data-user-id='3'>

	                            <div class="user-img">

	                                <a href="#"><img src="data/profile/avatar-3.png" alt=""></a>

	                            </div>

	                            <div class="user-info">

	                                <h4><a href="#">Clementina Brodeur</a></h4>

	                                <span class="status busy" data-status="busy"> Busy</span>

	                            </div>

	                            <div class="user-status busy">

	                                <i class="fa fa-circle"></i>

	                            </div>

	                        </li>



	                    </ul>





	                    <h4 class="group-head">More Contacts</h4>

	                    <ul class="contact-list">



	                        <li class="user-row" id='chat_user_4' data-user-id='4'>

	                            <div class="user-img">

	                                <a href="#"><img src="data/profile/avatar-4.png" alt=""></a>

	                            </div>

	                            <div class="user-info">

	                                <h4><a href="#">Carri Busey</a></h4>

	                                <span class="status offline" data-status="offline"> Offline</span>

	                            </div>

	                            <div class="user-status offline">

	                                <i class="fa fa-circle"></i>

	                            </div>

	                        </li>

	                        <li class="user-row" id='chat_user_5' data-user-id='5'>

	                            <div class="user-img">

	                                <a href="#"><img src="data/profile/avatar-5.png" alt=""></a>

	                            </div>

	                            <div class="user-info">

	                                <h4><a href="#">Melissa Dock</a></h4>

	                                <span class="status offline" data-status="offline"> Offline</span>

	                            </div>

	                            <div class="user-status offline">

	                                <i class="fa fa-circle"></i>

	                            </div>

	                        </li>

	                        <li class="user-row" id='chat_user_6' data-user-id='6'>

	                            <div class="user-img">

	                                <a href="#"><img src="data/profile/avatar-1.png" alt=""></a>

	                            </div>

	                            <div class="user-info">

	                                <h4><a href="#">Verdell Rea</a></h4>

	                                <span class="status available" data-status="available"> Available</span>

	                            </div>

	                            <div class="user-status available">

	                                <i class="fa fa-circle"></i>

	                            </div>

	                        </li>

	                        <li class="user-row" id='chat_user_7' data-user-id='7'>

	                            <div class="user-img">

	                                <a href="#"><img src="data/profile/avatar-2.png" alt=""></a>

	                            </div>

	                            <div class="user-info">

	                                <h4><a href="#">Linette Lheureux</a></h4>

	                                <span class="status busy" data-status="busy"> Busy</span>

	                            </div>

	                            <div class="user-status busy">

	                                <i class="fa fa-circle"></i>

	                            </div>

	                        </li>

	                        <li class="user-row" id='chat_user_8' data-user-id='8'>

	                            <div class="user-img">

	                                <a href="#"><img src="data/profile/avatar-3.png" alt=""></a>

	                            </div>

	                            <div class="user-info">

	                                <h4><a href="#">Araceli Boatright</a></h4>

	                                <span class="status away" data-status="away"> Away</span>

	                            </div>

	                            <div class="user-status away">

	                                <i class="fa fa-circle"></i>

	                            </div>

	                        </li>

	                        <li class="user-row" id='chat_user_9' data-user-id='9'>

	                            <div class="user-img">

	                                <a href="#"><img src="data/profile/avatar-4.png" alt=""></a>

	                            </div>

	                            <div class="user-info">

	                                <h4><a href="#">Clay Peskin</a></h4>

	                                <span class="status busy" data-status="busy"> Busy</span>

	                            </div>

	                            <div class="user-status busy">

	                                <i class="fa fa-circle"></i>

	                            </div>

	                        </li>

	                        <li class="user-row" id='chat_user_10' data-user-id='10'>

	                            <div class="user-img">

	                                <a href="#"><img src="data/profile/avatar-5.png" alt=""></a>

	                            </div>

	                            <div class="user-info">

	                                <h4><a href="#">Loni Tindall</a></h4>

	                                <span class="status away" data-status="away"> Away</span>

	                            </div>

	                            <div class="user-status away">

	                                <i class="fa fa-circle"></i>

	                            </div>

	                        </li>

	                        <li class="user-row" id='chat_user_11' data-user-id='11'>

	                            <div class="user-img">

	                                <a href="#"><img src="data/profile/avatar-1.png" alt=""></a>

	                            </div>

	                            <div class="user-info">

	                                <h4><a href="#">Tanisha Kimbro</a></h4>

	                                <span class="status idle" data-status="idle"> Idle</span>

	                            </div>

	                            <div class="user-status idle">

	                                <i class="fa fa-circle"></i>

	                            </div>

	                        </li>

	                        <li class="user-row" id='chat_user_12' data-user-id='12'>

	                            <div class="user-img">

	                                <a href="#"><img src="data/profile/avatar-2.png" alt=""></a>

	                            </div>

	                            <div class="user-info">

	                                <h4><a href="#">Jovita Tisdale</a></h4>

	                                <span class="status idle" data-status="idle"> Idle</span>

	                            </div>

	                            <div class="user-status idle">

	                                <i class="fa fa-circle"></i>

	                            </div>

	                        </li>



	                    </ul>

	                </div>



	            </div>

	            <div class="chatapi-windows "></div>    
        
	        </div>

	        <!-- General section box modal start -->
	        <div class="modal" id="section-settings" tabindex="-1" role="dialog" aria-labelledby="ultraModal-Label" aria-hidden="true">

	            <div class="modal-dialog animated bounceInDown">

	                <div class="modal-content">

	                    <div class="modal-header">

	                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

	                        <h4 class="modal-title">Section Settings</h4>

	                    </div>

	                    <div class="modal-body">



	                        Body goes here...



	                    </div>

	                    <div class="modal-footer">

	                        <button data-dismiss="modal" class="btn btn-default" type="button">Close</button>

	                        <button class="btn btn-success" type="button">Save changes</button>

	                    </div>

	                </div>

	            </div>

	        </div>
	        <!-- modal end -->

    	</body>

		<!-- Footer -->
		<footer class="footer" role="contentinfo">

			<div class="container<?php echo ($params->get('fluidContainer') ? '-fluid' : ''); ?>">

				<hr />

				<jdoc:include type="modules" name="footer" style="none" />

				<p class="pull-right">

					<a href="#top" id="back-top">

						<?php echo JText::_('TPL_PROTOSTAR_BACKTOTOP'); ?>

					</a>

				</p>

				<p>

					&copy; <?php echo date('Y'); ?> <?php echo $sitename; ?>

				</p>

			</div>

		</footer>
		
		<?php $doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/js/scripts.js');
		$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/js/jquery.easing.min.js');
		$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/pace/pace.min.js');
		$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js');
		$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/viewport/viewportchecker.js');
		$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/rickshaw-chart/vendor/d3.v3.js');
		$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/jquery-ui/smoothness/jquery-ui.min.js');
		$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/rickshaw-chart/js/Rickshaw.All.js');
		$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/sparkline-chart/jquery.sparkline.min.js');
		$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/easypiechart/jquery.easypiechart.min.js');
		//$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/morris-chart/js/raphael-min.js');
		//$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/morris-chart/js/morris.min.js');
		//$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/jvectormap/jquery-jvectormap-2.0.1.min.js');
		//$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js');
		$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/gauge/gauge.min.js');
		$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/icheck/icheck.min.js');
		//$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/js/dashboard.js');
		$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/sparkline-chart/jquery.sparkline.min.js');
		$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/js/chart-sparkline.js'); ?> 

	<?php } ?>
	
	<jdoc:include type="modules" name="debug" style="none" />

</html>