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
$this->language  = $doc->language;
$this->direction = $doc->direction;

// Output as HTML5
$doc->setHtml5(true);

// Add JavaScript Frameworks
JHtml::_('bootstrap.framework');

$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/pace/pace-theme-flash.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/bootstrap/css/bootstrap.min.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/bootstrap/css/bootstrap-theme.min.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/fonts/font-awesome/css/font-awesome.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/css/animate.min.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/perfect-scrollbar/perfect-scrollbar.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/morris-chart/css/morris.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/jquery-ui/smoothness/jquery-ui.min.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/rickshaw-chart/css/graph.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/rickshaw-chart/css/detail.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/rickshaw-chart/css/legend.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/rickshaw-chart/css/extensions.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/rickshaw-chart/css/rickshaw.min.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/rickshaw-chart/css/lines.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/icheck/skins/minimal/white.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/css/style.css');
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/assets/css/responsive.css');

?>

<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">

	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<jdoc:include type="head" />
		<!--[if lt IE 9]><script src="<?php echo JUri::root(true); ?>/media/jui/js/html5.js"></script><![endif]-->
	</head>

	<body class="contentpane modal">
	
		<jdoc:include type="message" />
		<jdoc:include type="component" />
	
	</body>

	<?php $doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/bootstrap/js/bootstrap.min.js');
	$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/pace/pace.min.js');
	$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js');
	$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/viewport/viewportchecker.js');
	$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/rickshaw-chart/vendor/d3.v3.js');
	$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/jquery-ui/smoothness/jquery-ui.min.js');
	$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/rickshaw-chart/js/Rickshaw.All.js');
	$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/sparkline-chart/jquery.sparkline.min.js');
	$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/easypiechart/jquery.easypiechart.min.js');
	$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/gauge/gauge.min.js');
	$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/icheck/icheck.min.js');
	$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/js/scripts.js');
	$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/plugins/sparkline-chart/jquery.sparkline.min.js');
	$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/assets/js/chart-sparkline.js'); ?> 

</html>
