-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: kcarisma.com    Database: kcarisma_concan
-- ------------------------------------------------------
-- Server version	5.6.33-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `qzq4u_acymailing_action`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_action` (
  `action_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `frequency` int(10) unsigned NOT NULL,
  `nextdate` int(10) unsigned NOT NULL,
  `description` text,
  `server` varchar(255) NOT NULL,
  `port` varchar(50) NOT NULL,
  `connection_method` varchar(10) NOT NULL DEFAULT '0',
  `secure_method` varchar(10) NOT NULL DEFAULT '0',
  `self_signed` tinyint(4) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `conditions` text,
  `actions` text,
  `report` text,
  `delete_wrong_emails` tinyint(4) NOT NULL DEFAULT '0',
  `senderfrom` tinyint(4) NOT NULL DEFAULT '0',
  `senderto` tinyint(4) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`action_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_action`
--

LOCK TABLES `qzq4u_acymailing_action` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_acymailing_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_config`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_config` (
  `namekey` varchar(200) NOT NULL,
  `value` text,
  PRIMARY KEY (`namekey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_config`
--

LOCK TABLES `qzq4u_acymailing_config` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_config` DISABLE KEYS */;
INSERT INTO `qzq4u_acymailing_config` VALUES ('level','Starter'),('version','5.5.0'),('smtp_port','25'),('from_name',''),('from_email',''),('bounce_email',''),('mailer_method','mail'),('sendmail_path','/usr/sbin/sendmail'),('smtp_secured',''),('smtp_auth','0'),('smtp_username',''),('smtp_password',''),('reply_name',''),('reply_email',''),('cron_sendto',''),('add_names','1'),('encoding_format','8bit'),('charset','UTF-8'),('word_wrapping','150'),('hostname',''),('embed_images','0'),('embed_files','1'),('editor','acyeditor'),('multiple_part','1'),('smtp_host','localhost'),('queue_nbmail','40'),('queue_nbmail_auto','70'),('queue_type','auto'),('queue_try','3'),('queue_pause','120'),('allow_visitor','1'),('require_confirmation','0'),('priority_newsletter','3'),('allowedfiles','zip,doc,docx,pdf,xls,txt,gzip,rar,jpg,jpeg,gif,xlsx,pps,csv,bmp,ico,odg,odp,ods,odt,png,ppt,swf,xcf,mp3,wma'),('uploadfolder','media/com_acymailing/upload'),('confirm_redirect',''),('subscription_message','1'),('notification_unsuball',''),('cron_next','1251990901'),('confirmation_message','1'),('welcome_message','1'),('unsub_message','1'),('cron_last','0'),('cron_fromip',''),('cron_report',''),('cron_frequency','900'),('cron_sendreport','2'),('cron_fullreport','1'),('cron_savereport','2'),('cron_savepath','media/com_acymailing/logs/report892523709.log'),('notification_created',''),('notification_accept',''),('notification_refuse',''),('forward','0'),('description_starter','Joomla!® E-mail Marketing'),('description_essential','Joomla!® Marketing Campaign'),('description_business','Joomla!® Newsletter Extension'),('description_enterprise','Joomla!® Newsletter Extension'),('description_sidekick','Joomla!® Newsletter Extension'),('priority_followup','2'),('unsub_redirect',''),('use_sef','0'),('itemid','0'),('css_module','default'),('css_frontend','default'),('css_backend',''),('bootstrap_frontend','0'),('unsub_reasons','a:2:{i:0;s:21:\"UNSUB_SURVEY_FREQUENT\";i:1;s:21:\"UNSUB_SURVEY_RELEVANT\";}'),('security_key','MaLHe37yat3JMo9XP3MpixretrUpcK'),('installcomplete','1'),('Starter','0'),('Essential','1'),('Business','2'),('Enterprise','3'),('Sidekick','4'),('website','http://www.kcarisma.com/concan/'),('max_execution_time','0'),('latestversion','5.5.0'),('expirationdate','0'),('lastlicensecheck','1475951267');
/*!40000 ALTER TABLE `qzq4u_acymailing_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_fields`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_fields` (
  `fieldid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fieldname` varchar(250) NOT NULL,
  `namekey` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `value` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ordering` smallint(5) unsigned DEFAULT '99',
  `options` text,
  `core` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `backend` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `frontcomp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frontform` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `default` varchar(250) DEFAULT NULL,
  `listing` tinyint(3) unsigned DEFAULT NULL,
  `frontlisting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frontjoomlaprofile` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frontjoomlaregistration` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `joomlaprofile` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `access` varchar(250) NOT NULL DEFAULT 'all',
  `fieldcat` int(11) NOT NULL DEFAULT '0',
  `listingfilter` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frontlistingfilter` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  UNIQUE KEY `namekey` (`namekey`),
  KEY `orderingindex` (`published`,`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_fields`
--

LOCK TABLES `qzq4u_acymailing_fields` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_fields` DISABLE KEYS */;
INSERT INTO `qzq4u_acymailing_fields` VALUES (1,'NAMECAPTION','name','text','',1,1,'',1,1,1,1,1,'',1,1,0,0,0,'all',0,0,0),(2,'EMAILCAPTION','email','text','',1,2,'',1,1,1,1,1,'',1,1,0,0,0,'all',0,0,0),(3,'RECEIVE','html','radio','0::JOOMEXT_TEXT\n1::HTML',1,3,'',1,1,1,1,1,'1',1,0,0,0,0,'all',0,0,0);
/*!40000 ALTER TABLE `qzq4u_acymailing_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_filter`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_filter` (
  `filid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `published` tinyint(3) unsigned DEFAULT NULL,
  `lasttime` int(10) unsigned DEFAULT NULL,
  `trigger` text,
  `report` text,
  `action` text,
  `filter` text,
  PRIMARY KEY (`filid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_filter`
--

LOCK TABLES `qzq4u_acymailing_filter` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_acymailing_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_geolocation`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_geolocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_geolocation` (
  `geolocation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `geolocation_subid` int(10) unsigned NOT NULL DEFAULT '0',
  `geolocation_type` varchar(255) NOT NULL DEFAULT 'subscription',
  `geolocation_ip` varchar(255) NOT NULL DEFAULT '',
  `geolocation_created` int(10) unsigned NOT NULL DEFAULT '0',
  `geolocation_latitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_longitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_postal_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_city` varchar(255) NOT NULL DEFAULT '',
  `geolocation_continent` varchar(255) NOT NULL DEFAULT '',
  `geolocation_timezone` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`geolocation_id`),
  KEY `geolocation_type` (`geolocation_subid`,`geolocation_type`),
  KEY `geolocation_ip_created` (`geolocation_ip`,`geolocation_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_geolocation`
--

LOCK TABLES `qzq4u_acymailing_geolocation` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_geolocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_acymailing_geolocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_history`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_history` (
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `action` varchar(50) NOT NULL COMMENT 'different actions: created,modified,confirmed',
  `data` text,
  `source` text,
  `mailid` mediumint(8) unsigned DEFAULT NULL,
  KEY `subid` (`subid`,`date`),
  KEY `dateindex` (`date`),
  KEY `actionindex` (`action`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_history`
--

LOCK TABLES `qzq4u_acymailing_history` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_history` DISABLE KEYS */;
INSERT INTO `qzq4u_acymailing_history` VALUES (3,1476416733,'191.109.196.169','created','EXECUTED_BY::204 ( concan )','HTTP_REFERER::http://www.kcarisma.com/concan/index.php?option=com_users&view=useradmin&layout=edit&Itemid=125&id=\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36\nHTTP_HOST::www.kcarisma.com\nSERVER_ADDR::190.8.176.131\nREMOTE_ADDR::191.109.196.169\nREQUEST_URI::/concan/index.php?option=com_users&view=useradmin&layout=edit&id=0&Itemid=125\nQUERY_STRING::option=com_users&view=useradmin&layout=edit&id=0&Itemid=125',0);
/*!40000 ALTER TABLE `qzq4u_acymailing_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_list`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_list` (
  `name` varchar(250) NOT NULL,
  `description` text,
  `ordering` smallint(5) unsigned DEFAULT '0',
  `listid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(4) DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `welmailid` mediumint(9) DEFAULT NULL,
  `unsubmailid` mediumint(9) DEFAULT NULL,
  `type` enum('list','campaign') NOT NULL DEFAULT 'list',
  `access_sub` varchar(250) NOT NULL DEFAULT 'all',
  `access_manage` varchar(250) NOT NULL DEFAULT 'none',
  `languages` varchar(250) NOT NULL DEFAULT 'all',
  `startrule` varchar(50) NOT NULL DEFAULT '0',
  `category` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`listid`),
  KEY `typeorderingindex` (`type`,`ordering`),
  KEY `useridindex` (`userid`),
  KEY `typeuseridindex` (`type`,`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_list`
--

LOCK TABLES `qzq4u_acymailing_list` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_list` DISABLE KEYS */;
INSERT INTO `qzq4u_acymailing_list` VALUES ('Newsletters','Receive our latest news',1,1,1,204,'mailing_list','#3366ff',1,NULL,NULL,'list','all','none','all','0','');
/*!40000 ALTER TABLE `qzq4u_acymailing_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_listcampaign`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_listcampaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_listcampaign` (
  `campaignid` smallint(5) unsigned NOT NULL,
  `listid` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`campaignid`,`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_listcampaign`
--

LOCK TABLES `qzq4u_acymailing_listcampaign` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_listcampaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_acymailing_listcampaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_listmail`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_listmail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_listmail` (
  `listid` smallint(5) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`listid`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_listmail`
--

LOCK TABLES `qzq4u_acymailing_listmail` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_listmail` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_acymailing_listmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_listsub`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_listsub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_listsub` (
  `listid` smallint(5) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `subdate` int(10) unsigned DEFAULT NULL,
  `unsubdate` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`listid`,`subid`),
  KEY `subidindex` (`subid`),
  KEY `listidstatusindex` (`listid`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_listsub`
--

LOCK TABLES `qzq4u_acymailing_listsub` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_listsub` DISABLE KEYS */;
INSERT INTO `qzq4u_acymailing_listsub` VALUES (1,1,1475951261,NULL,1),(1,2,1475951261,NULL,1);
/*!40000 ALTER TABLE `qzq4u_acymailing_listsub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_mail`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_mail` (
  `mailid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `altbody` longtext NOT NULL,
  `published` tinyint(4) DEFAULT '1',
  `senddate` int(10) unsigned DEFAULT NULL,
  `created` int(10) unsigned DEFAULT NULL,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `bccaddresses` varchar(250) DEFAULT NULL,
  `type` enum('news','autonews','followup','unsub','welcome','notification','joomlanotification','action') NOT NULL DEFAULT 'news',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `attach` text,
  `favicon` text,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `key` varchar(200) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `params` text,
  `sentby` int(10) unsigned DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `filter` text,
  `language` varchar(50) NOT NULL DEFAULT '',
  `abtesting` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `summary` text NOT NULL,
  PRIMARY KEY (`mailid`),
  KEY `senddate` (`senddate`),
  KEY `typemailidindex` (`type`,`mailid`),
  KEY `useridindex` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_mail`
--

LOCK TABLES `qzq4u_acymailing_mail` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_mail` DISABLE KEYS */;
INSERT INTO `qzq4u_acymailing_mail` VALUES (1,'New Subscriber on your website : {user:email}','<p>Hello {subtag:name},</p><p>A new user has been created in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_created',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,''),(2,'A User unsubscribed from all your lists : {user:email}','<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from all your lists</p><p>Subscription : {user:subscription}</p><p>{survey}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_unsuball',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,''),(3,'A User unsubscribed : {user:email}','<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from your list</p><p>Subscription : {user:subscription}</p><p>{survey}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_unsub',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,''),(4,'A User refuses to receive e-mails from your website : {user:email}','<p>The User {user:name} : {user:email} refuses to receive any e-mail anymore from your website.</p><p>Subscription : {user:subscription}</p><p>{survey}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_refuse',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,''),(5,'New contact from your website : {user:email}','<p>Hello {subtag:name},</p><p>A user submitted the form : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_contact',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,''),(6,'A user subscribed or modified his subscription : {user:email}','<p>Hello {subtag:name},</p><p>A user submitted the form : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_contact_menu',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,''),(7,'A user confirmed his subscription : {user:email}','<p>Hello {subtag:name},</p><p>A user confirmed his subscription : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'notification_confirm',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,''),(8,'{subtag:name|ucfirst}, {trans:PLEASE_CONFIRM_SUB}','<div style=\"text-align: center; width: 100%; background-color:#ffffff;\">\r\n		<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"text-align: justify; margin: auto; width: 600px;\">\r\n			<tbody>\r\n				<tr class=\"acyeditor_delete\" style=\"line-height: 0px;\" id=\"zone_2\">\r\n					<td class=\"w600\" colspan=\"5\" style=\"background-color: #69b4c0;\" valign=\"bottom\" width=\"600\" id=\"zone_3\"><img id=\"zone_29\" alt=\" - - - \" border=\"0\" src=\"media/com_acymailing/templates/newsletter-4/images/top.png\"></td>\r\n				</tr>\r\n				<tr class=\"acyeditor_delete\" id=\"zone_4\">\r\n					<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\" id=\"zone_5\"></td>\r\n					<td class=\"w520 acyeditor_text\" colspan=\"3\" height=\"80\" style=\"text-align: left; background-color: #ebebeb;\" width=\"520\" id=\"zone_6\"><strong>​</strong>​​​​​​​​<img alt=\"-\" border=\"0\" src=\"media/com_acymailing/templates/newsletter-4/images/message_icon.png\" style=\"float: left; margin-right: 10px;\">\r\n		<h3>{subtag:name|ucfirst}, {trans:PLEASE_CONFIRM_SUB}<span style=\"display: none;\">&nbsp;</span></h3>\r\n		</td>\r\n					<td class=\"acyeditor_picture w40\" style=\"background-color: #ebebeb;\" width=\"40\" id=\"zone_7\"></td>\r\n				</tr>\r\n				<tr class=\"acyeditor_delete\" id=\"zone_8\">\r\n					<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\" id=\"zone_9\"></td>\r\n					<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\" id=\"zone_10\"></td>\r\n					<td class=\"w480\" height=\"20\" style=\"background-color: #fff;\" width=\"480\" id=\"zone_11\"></td>\r\n					<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\" id=\"zone_12\"></td>\r\n					<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\" id=\"zone_13\"></td>\r\n				</tr>\r\n				<tr class=\"acyeditor_delete\" id=\"zone_14\">\r\n					<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\" id=\"zone_15\"></td>\r\n					<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\" id=\"zone_16\"></td>\r\n					<td class=\"w480 pict acyeditor_text\" style=\"background-color: #fff; text-align: left;\" width=\"480\" id=\"zone_17\"><h1>Hello {subtag:name|ucfirst},</h1>\r\n			<p>{trans:CONFIRM_MSG}<br /><br />{trans:CONFIRM_MSG_ACTIVATE}</p>\r\n			<br />\r\n			<p style=\"text-align:center;\"><strong>{confirm}{trans:CONFIRM_SUBSCRIPTION}{/confirm}</strong></p></td>\r\n					<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\" id=\"zone_18\"></td>\r\n					<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\" id=\"zone_19\"></td>\r\n				</tr>\r\n				<tr class=\"acyeditor_delete\" id=\"zone_20\">\r\n					<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\" id=\"zone_21\"></td>\r\n					<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\" id=\"zone_22\"></td>\r\n					<td class=\"w480\" height=\"20\" style=\"background-color: #fff;\" width=\"480\" id=\"zone_23\"></td>\r\n					<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\" id=\"zone_24\"></td>\r\n					<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\" id=\"zone_25\"></td>\r\n				</tr>\r\n				<tr class=\"acyeditor_delete\" style=\"line-height: 0px;\" id=\"zone_26\">\r\n					<td class=\"w600\" colspan=\"5\" style=\"background-color: #ebebeb;\" width=\"600\" id=\"zone_27\"><img id=\"zone_31\" alt=\" - - - \" border=\"0\" src=\"media/com_acymailing/templates/newsletter-4/images/bottom.png\"></td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		</div>','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'confirmation',NULL,NULL,1,1,NULL,NULL,'a:3:{s:6:\"action\";s:7:\"confirm\";s:13:\"actionbtntext\";s:28:\"{trans:CONFIRM_SUBSCRIPTION}\";s:9:\"actionurl\";s:19:\"{confirm}{/confirm}\";}',NULL,NULL,NULL,NULL,'',NULL,NULL,''),(9,'AcyMailing Cron Report {mainreport}','<p>{report}</p><p>{detailreport}</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'report',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,''),(10,'Modify your subscription','<p>Hello {subtag:name}, </p><p>You requested some changes on your subscription,</p><p>Please {modify}click here{/modify} to be identified as the owner of this account and then modify your subscription.</p>','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notification',0,NULL,'modif',NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'');
/*!40000 ALTER TABLE `qzq4u_acymailing_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_queue`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_queue` (
  `senddate` int(10) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `priority` tinyint(3) unsigned DEFAULT '3',
  `try` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paramqueue` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`subid`,`mailid`),
  KEY `listingindex` (`senddate`,`subid`),
  KEY `mailidindex` (`mailid`),
  KEY `orderingindex` (`priority`,`senddate`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_queue`
--

LOCK TABLES `qzq4u_acymailing_queue` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_acymailing_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_rules`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_rules` (
  `ruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `ordering` smallint(6) DEFAULT NULL,
  `regex` text NOT NULL,
  `executed_on` text NOT NULL,
  `action_message` text NOT NULL,
  `action_user` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`ruleid`),
  KEY `ordering` (`published`,`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_rules`
--

LOCK TABLES `qzq4u_acymailing_rules` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_acymailing_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_stats`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_stats` (
  `mailid` mediumint(8) unsigned NOT NULL,
  `senthtml` int(10) unsigned NOT NULL DEFAULT '0',
  `senttext` int(10) unsigned NOT NULL DEFAULT '0',
  `senddate` int(10) unsigned NOT NULL,
  `openunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `opentotal` int(10) unsigned NOT NULL DEFAULT '0',
  `bounceunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fail` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `clicktotal` int(10) unsigned NOT NULL DEFAULT '0',
  `clickunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `unsub` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forward` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bouncedetails` text,
  PRIMARY KEY (`mailid`),
  KEY `senddateindex` (`senddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_stats`
--

LOCK TABLES `qzq4u_acymailing_stats` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_acymailing_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_subscriber`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_subscriber` (
  `subid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `created` int(10) unsigned DEFAULT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `accept` tinyint(4) NOT NULL DEFAULT '1',
  `ip` varchar(100) DEFAULT NULL,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `key` varchar(250) DEFAULT NULL,
  `confirmed_date` int(10) unsigned NOT NULL DEFAULT '0',
  `confirmed_ip` varchar(100) DEFAULT NULL,
  `lastopen_date` int(10) unsigned NOT NULL DEFAULT '0',
  `lastopen_ip` varchar(100) DEFAULT NULL,
  `lastclick_date` int(10) unsigned NOT NULL DEFAULT '0',
  `lastsent_date` int(10) unsigned NOT NULL DEFAULT '0',
  `source` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`subid`),
  UNIQUE KEY `email` (`email`),
  KEY `userid` (`userid`),
  KEY `queueindex` (`enabled`,`accept`,`confirmed`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_subscriber`
--

LOCK TABLES `qzq4u_acymailing_subscriber` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_subscriber` DISABLE KEYS */;
INSERT INTO `qzq4u_acymailing_subscriber` VALUES (1,'the3gatos@gmail.com',204,'Super User',1470212189,1,1,1,NULL,1,NULL,0,NULL,0,NULL,0,0,''),(2,'andres.cortesb@gmail.com',205,'Pruebas',1470415423,1,1,1,NULL,1,NULL,0,NULL,0,NULL,0,0,''),(3,'diego@the3grat.com',206,'diego',1476416733,1,1,1,'191.109.196.169',1,'gJKNQP8dC32Sww',0,NULL,0,NULL,0,0,'joomla');
/*!40000 ALTER TABLE `qzq4u_acymailing_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_template`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_template` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `body` longtext,
  `altbody` longtext,
  `created` int(10) unsigned DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `premium` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) unsigned DEFAULT '0',
  `namekey` varchar(50) NOT NULL,
  `styles` text,
  `subject` varchar(250) DEFAULT NULL,
  `stylesheet` text,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `readmore` varchar(250) DEFAULT NULL,
  `access` varchar(250) NOT NULL DEFAULT 'all',
  `category` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`tempid`),
  UNIQUE KEY `namekey` (`namekey`),
  KEY `orderingindex` (`ordering`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_template`
--

LOCK TABLES `qzq4u_acymailing_template` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_template` DISABLE KEYS */;
INSERT INTO `qzq4u_acymailing_template` VALUES (1,'Notification template','','<div style=\"text-align: center; width: 100%; background-color:#ffffff;\">\r\n<div class=\"acymailing_online acyeditor_delete acyeditor_text\" style=\"text-align:center\">{readonline}This email contains graphics, so if you don\'t see them, view it in your browser{/readonline}</div>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"text-align: justify; margin: auto; width:600px\">\r\n	<tbody class=\"acyeditor_sortable\">\r\n		<tr style=\"line-height: 0px;\" class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"5\" style=\"background-color: #69b4c0;\" valign=\"bottom\" width=\"600\"><img alt=\" - - - \" src=\"media/com_acymailing/templates/newsletter-4/images/top.png\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n			<td class=\"acyeditor_text w520\" colspan=\"3\" height=\"80\" style=\"text-align: left; background-color: rgb(235, 235, 235);\" width=\"520\"><img alt=\"-\" src=\"media/com_acymailing/templates/newsletter-4/images/message_icon.png\" style=\"float:left; margin-right:10px;\" />\r\n				<h3>Topic of your message</h3>\r\n\r\n				<h4>Subtitle for your message</h4>\r\n			</td>\r\n			<td class=\"acyeditor_picture w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w480\" height=\"20\" style=\"background-color:#fff;\" width=\"480\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"acyeditor_text w480 pict\" style=\"background-color:#fff; text-align: left;\" width=\"480\">\r\n			<h1>Dear {subtag:name},</h1>\r\n			Your message here...<br />\r\n			</td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w480\" height=\"20\" style=\"background-color:#fff;\" width=\"480\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n		</tr>\r\n		<tr style=\"line-height: 0px;\" class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"5\" style=\"background-color:#ebebeb;\" width=\"600\"><img alt=\" - - - \" src=\"media/com_acymailing/templates/newsletter-4/images/bottom.png\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"acyeditor_delete acyeditor_text\" style=\"text-align:center\">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</div>\r\n</div>','',NULL,1,0,1,'newsletter-4','a:10:{s:6:\"tag_h1\";s:76:\"color:#393939 !important; font-size:14px; font-weight:bold; margin:10px 0px;\";s:6:\"tag_h2\";s:106:\"color: #309fb3 !important; font-size: 14px; font-weight: normal; text-align:left; margin:0px; padding:0px;\";s:6:\"tag_h3\";s:144:\"color: #393939 !important; font-size: 18px; font-weight: bold; text-align:left; margin:0px; padding-bottom:5px; border-bottom:1px solid #bdbdbd;\";s:6:\"tag_h4\";s:117:\"color: #309fb3 !important; font-size: 14px; font-weight: bold; text-align:left; margin:0px; padding: 5px 0px 0px 0px;\";s:5:\"tag_a\";s:71:\"color:#309FB3; text-decoration:none; font-style:italic; cursor:pointer;\";s:19:\"acymailing_readmore\";s:90:\"font-size: 12px; color: #fff; background-color:#309fb3; font-weight:bold; padding:3px 5px;\";s:17:\"acymailing_online\";s:52:\"color:#a3a3a3; text-decoration:none; font-size:11px;\";s:16:\"acymailing_unsub\";s:52:\"color:#a3a3a3; text-decoration:none; font-size:11px;\";s:8:\"color_bg\";s:7:\"#ffffff\";s:18:\"acymailing_content\";s:19:\"text-align:justify;\";}',NULL,'div,table,p,td{font-family: Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify; color:#8c8c8c; margin:0px}\r\ndiv.info{text-align:center;padding:10px;font-size:11px;color:#a3a3a3;}\r\n\r\n@media (min-width:10px){\r\n	.w600 { width: 320px !important;}\r\n	.w520 { width: 280px !important;}\r\n	.w480 { width: 260px !important;}\r\n	.w40 { width: 20px !important;}\r\n	.w20 { width: 10px !important;}\r\n	.w600 img {max-width:320px; height:auto !important}\r\n	.w480 img {max-width:260px; height:auto !important;}\r\n}\r\n\r\n@media (min-width:480px) {\r\n	.w600 { width: 480px !important;}\r\n	.w520 { width: 440px !important;}\r\n	.w480 { width: 420px !important;}\r\n	.w40 { width: 20px !important;}\r\n	.w20 { width: 10px !important;}\r\n	.w600 img {max-width:480px; height:auto !important}\r\n	.w480 img {max-width:420px;  height:auto !important;}\r\n}\r\n\r\n@media (min-width:600px){\r\n	.w600 { width: 600px !important;}\r\n	.w520 { width: 520px !important;}\r\n	.w480 { width: 480px !important;}\r\n	.w40 { width40px !important;}\r\n	.w20 { width: 20px !important;}\r\n	.w600 img {max-width:600px; height:auto !important}\r\n	.w480 img {max-width:480px;  height:auto !important;}\r\n}\r\n',NULL,NULL,NULL,NULL,'media/com_acymailing/templates/newsletter-4/newsletter-4.png','','all',''),(2,'Newspaper','','<div align=\"center\" style=\"width:100%; background-color:#454545; padding-bottom:20px; color:#ffffff;\">\r\n<div class=\"acymailing_online acyeditor_delete acyeditor_text\">{readonline}This e-mail contains graphics, if you don\'t see them <strong>» view it online.</strong>{/readonline}</div>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"margin:auto; background-color:#ffffff; color:#454545;\" width=\"600\">\r\n	<tbody  class=\"acyeditor_sortable\">\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" style=\"font-family:Times New Roman, Times, serif; background-color:#ffffff; text-align:left\" width=\"540\">&nbsp;\r\n			<h1><img alt=\"logo\" src=\"media/com_acymailing/templates/newsletter-5/images/logo.png\" style=\"float: right; width: 107px; height: 70px;\" /></h1>\r\n\r\n			<h1>Your title here</h1>\r\n\r\n			<h3>your subtitle</h3>\r\n			</td>\r\n			<td class=\"w30\" style=\"line-height:0px; background-color:#ffffff\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"3\" style=\"line-height:0px; background-color:#e4e4e4\" valign=\"top\" width=\"600\"><img alt=\"---\" src=\"media/com_acymailing/templates/newsletter-5/images/header.png\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#ffffff\" valign=\"top\" width=\"600\"><img alt=\"banner\" src=\"media/com_acymailing/templates/newsletter-5/images/banner.png\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"3\" style=\"line-height:0px;\" valign=\"top\" width=\"600\"><img alt=\"---\" src=\"media/com_acymailing/templates/newsletter-5/images/separator.png\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" style=\"text-align:justify; color:#575757; font-family:Times New Roman, Times, serif; font-size:13px; background-color:#ffffff\" width=\"540\">\r\n				<div>This issue will present the 5 last articles.<br />\r\n				{tableofcontents}<br />\r\n				{autocontent:|max:5|order:id,DESC|type:intro|link|pict:1}</div>\r\n			</td>\r\n			<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n		</tr>\r\n		<tr style=\"line-height: 0px;\">\r\n			<td class=\"w600\" colspan=\"3\" style=\"background-color:#ffffff\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/newsletter-5/images/footer1.png\" width=\"600\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"acyfooter acyeditor_text w600\" colspan=\"3\" height=\"25\" style=\"text-align:center; background-color:#ebebeb;  color:#454545; font-family:Times New Roman, Times, serif; font-size:13px\" width=\"600\"><a href=\"#\">www.mywebsite.com</a> | <a href=\"#\">contact</a> | <a href=\"#\">Facebook</a> | <a href=\"#\">Twitter</a></td>\r\n		</tr>\r\n		<tr style=\"line-height: 0px;\">\r\n			<td class=\"w600\" colspan=\"3\" style=\"background-color:#454545;\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/newsletter-5/images/footer2.png\" width=\"600\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"acymailing_unsub acyeditor_delete acyeditor_text\">{unsubscribe}If you\'re not interested any more <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>\r\n','',NULL,1,0,2,'newsletter-5','a:10:{s:6:\"tag_h1\";s:71:\"color:#454545 !important; font-size:24px; font-weight:bold; margin:0px;\";s:6:\"tag_h2\";s:145:\"color:#b20000 !important; font-size:18px; font-weight:bold; margin:0px; margin-bottom:10px; padding-bottom:4px; border-bottom: 1px solid #d6d6d6;\";s:6:\"tag_h3\";s:76:\"color:#b20101 !important; font-weight:bold; font-size:18px; margin:10px 0px;\";s:6:\"tag_h4\";s:67:\"color:#e52323 !important; font-weight:bold; margin:0px; padding:0px\";s:5:\"tag_a\";s:65:\"cursor:pointer; color:#9d0000; text-decoration:none; border:none;\";s:19:\"acymailing_readmore\";s:152:\"cursor:pointer; color:#ffffff; background-color:#9d0000; border-top:1px solid #9d0000; border-bottom:1px solid #9d0000; padding:3px 5px; font-size:13px;\";s:17:\"acymailing_online\";s:148:\"color:#dddddd; text-decoration:none; font-size:13px; margin:10px; text-align:center; font-family:Times New Roman, Times, serif; padding-bottom:10px;\";s:8:\"color_bg\";s:7:\"#454545\";s:18:\"acymailing_content\";s:0:\"\";s:16:\"acymailing_unsub\";s:131:\"color:#dddddd; text-decoration:none; font-size:13px; text-align:center; font-family:Times New Roman, Times, serif; padding-top:10px\";}',NULL,'.acyfooter a{\r\n	color:#454545;\r\n}\r\n.dark{\r\n	color:#454545;\r\n	font-weight:bold;\r\n}\r\ndiv,table,p,td{font-family:\"Times New Roman\", Times, serif;font-size:13px;color:#575757;}\r\n\r\n\r\n\r\n@media (min-width:10px){\r\n	.w600 { width:320px !important; }\r\n	.w540 { width:260px !important; }\r\n	.w30 { width:30px !important; }\r\n	.w600 img {max-width:320px; height:auto !important; }\r\n	.w540 img {max-width:260px; height:auto !important; }\r\n}\r\n\r\n@media (min-width: 480px){\r\n	.w600 { width:480px !important; }\r\n	.w540 { width:420px !important; }\r\n	.w30 { width:30px !important; }\r\n	.w600 img {max-width:480px; height:auto !important; }\r\n	.w540 img {max-width:420px; height:auto !important; }\r\n}\r\n\r\n@media (min-width:600px){\r\n	.w600 { width:600px !important; }\r\n	.w540 { width:540px !important; }\r\n	.w30 { width:30px !important; }\r\n	.w600 img {max-width:600px; height:auto !important; }\r\n	.w540 img {max-width:540px; height:auto !important; }\r\n}\r\n',NULL,NULL,NULL,NULL,'media/com_acymailing/templates/newsletter-5/newsletter-5.png','','all',''),(3,'Build Bio','','<div align=\"center\" style=\"width:100%; background-color:#3c3c3c; padding-bottom:20px; color:#ffffff;\">\r\n<div class=\"acymailing_online acyeditor_delete acyeditor_text\">{readonline}This e-mail contains graphics, if you don\'t see them <strong>» view it online.</strong>{/readonline}</div>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"margin:auto; background-color:#ffffff; color:#575757;\" width=\"600\">\r\n	<tbody class=\"acyeditor_sortable\">\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"3\" style=\"line-height:0px; background-color:#eeeeee\" valign=\"bottom\" width=\"600\"><img alt=\"mail\" height=\"41\" src=\"media/com_acymailing/templates/newsletter-6/images/header.png\" width=\"600\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" style=\"color:#ffffff;\" width=\"30\"></td>\r\n			<td class=\"acyeditor_picture w540\" style=\"line-height:0px; background-color:#ffffff; text-align:center\" width=\"540\"><img alt=\"\" src=\"media/com_acymailing/templates/newsletter-6/images/banner.png\" style=\"width: 540px; height: 122px;\" /></td>\r\n			<td class=\"w30\" height=\"122\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" style=\"background-color:#b9cf00; color:#ffffff;\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" height=\"25\" style=\"text-align:right; background-color:#b9cf00; color:#ffffff;\" width=\"540\"><span class=\"hide\">Newsletter</span> {date:3}</td>\r\n			<td class=\"w30\" style=\"background-color:#b9cf00; color:#ffffff;\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"3\" height=\"25\" style=\"background-color:#ffffff\" width=\"600\"></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" style=\"text-align:justify; color:#575757; background-color:#ffffff\" width=\"540\"><span class=\"intro\">Hello {subtag:name},</span><br />\r\n			<br />\r\n			Your introduction text here\r\n			<br />\r\n			<h2>Your title</h2>\r\n			<strong>Your catchphrase</strong><br />\r\n			Your content here <a href=\"#\">with some link</a><br />\r\n			<br />\r\n			More content<br />\r\n			<br />\r\n			<span class=\"acymailing_readmore\">Read More</span>\r\n\r\n			<h2>Another title</h2>\r\n			<img alt=\"picture\" height=\"160\" src=\"media/com_acymailing/templates/newsletter-6/images/picture.png\" style=\"float:left;\" width=\"193\" /> <strong>Another catchphrase</strong> Some content and <a href=\"#\">another link</a><br />\r\n			<br />\r\n			More content<br />\r\n			<br />\r\n			<span class=\"acymailing_readmore\">Read More</span></td>\r\n			<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n		</tr>\r\n		<tr style=\"line-height: 0px;\" class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"3\" style=\"line-height:0px; background-color:#efefef;\" valign=\"top\" width=\"600\"><img alt=\"--\" height=\"18\" src=\"media/com_acymailing/templates/newsletter-6/images/footer1.png\" width=\"600\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" height=\"20\" style=\"line-height:0px; background-color:#efefef;\" width=\"30\"></td>\r\n			<td class=\"acyfooter acyeditor_text w540\" style=\"text-align:right; background-color:#efefef; color:#575757;\" width=\"540\"><a href=\"#\">www.mywebsite.com</a> | <a href=\"#\">Contact</a><a href=\"#\"><img alt=\"message\" class=\"hide\" src=\"media/com_acymailing/templates/newsletter-6/images/mail.png\" style=\"border: medium none; width: 35px; height: 20px;\" /></a></td>\r\n			<td class=\"w30\" height=\"20\" style=\"line-height:0px; background-color:#efefef;\" width=\"30\"></td>\r\n		</tr>\r\n		<tr style=\"line-height: 0px;\" class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"3\" style=\"background-color:#efefef; line-height:0px;\" valign=\"top\" width=\"600\"><img alt=\"--\" height=\"24\" src=\"media/com_acymailing/templates/newsletter-6/images/footer2.png\" width=\"600\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"acymailing_unsub acyeditor_delete acyeditor_text\" >{unsubscribe}If you\'re not interested any more <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>','',NULL,1,0,3,'newsletter-6','a:9:{s:6:\"tag_h1\";s:69:\"font-weight:bold; font-size:14px;color:#3c3c3c !important;margin:0px;\";s:6:\"tag_h2\";s:129:\"color:#b9cf00 !important; font-size:14px; font-weight:bold; margin-top:20px; border-bottom:1px solid #d6d6d6; padding-bottom:4px;\";s:6:\"tag_h3\";s:149:\"color:#7e7e7e !important; font-size:14px; font-weight:bold; margin:20px 0px 0px 0px; border-bottom:1px solid #d6d6d6; padding-bottom:0px 0px 4px 0px;\";s:6:\"tag_h4\";s:84:\"color:#879700 !important; font-size:12px; font-weight:bold; margin:0px; padding:0px;\";s:8:\"color_bg\";s:7:\"#3c3c3c\";s:5:\"tag_a\";s:65:\"cursor:pointer; color:#a2b500; text-decoration:none; border:none;\";s:17:\"acymailing_online\";s:91:\"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-bottom:10px\";s:16:\"acymailing_unsub\";s:88:\"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-top:10px\";s:19:\"acymailing_readmore\";s:73:\"cursor:pointer; color:#ffffff; background-color:#b9cf00; padding:3px 5px;\";}',NULL,'table, div, p,td{\r\n	font-family: Verdana, Arial, Helvetica, sans-serif;\r\n	font-size:11px;\r\n	color:#575757;\r\n}\r\n.intro{\r\n	font-weight:bold;\r\n	font-size:12px;}\r\n\r\n.acyfooter a{\r\n	color:#575757;}\r\n\r\n@media (min-width: 10px){\r\n	.w600  { width:320px !important; }\r\n	.w540  { width:260px !important; }\r\n	.w30 { width:30px !important; }\r\n	.w600 img{max-width:320px; height:auto !important}\r\n	.w540 img{max-width:260px; height:auto !important}\r\n}\r\n\r\n@media (min-width: 480px){\r\n	.w600  { width:480px !important; }\r\n	.w540  { width:420px !important; }\r\n	.w30 { width:30px !important; }\r\n	.w600 img{max-width:480px; height:auto !important}\r\n	.w540 img{max-width:420px; height:auto !important}\r\n}\r\n\r\n@media (min-width:600px){\r\n	.w600  { width:600px !important; }\r\n	.w540  { width:540px !important; }\r\n	.w30 { width:30px !important; }\r\n	.w600 img{max-width:600px; height:auto !important}\r\n	.w540 img{max-width:540px; height:auto !important}\r\n}\r\n',NULL,NULL,NULL,NULL,'media/com_acymailing/templates/newsletter-6/newsletter-6.png','','all',''),(4,'Technology','','<div align=\"center\" style=\"width:100%; background-color:#575757; padding-bottom:20px; color:#999999;\">\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"background-color:#fff; color:#999999; margin:auto\" width=\"600\">\r\n	<tbody class=\"acyeditor_sortable\">\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" style=\"background-color:#575757\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" style=\"text-align:right; color:#d2d1d1; background-color:#575757\" width=\"540\"><span class=\"acymailing_online\">{readonline}If you can\'t see this e-mail properly, <span style=\"text-decoration:underline\">view it online</span>{/readonline}</span></td>\r\n			<td class=\"w30\" style=\"background-color:#575757\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#575757\" valign=\"bottom\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/technology_resp/images/shadowtop.jpg\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#f5f5f5\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/technology_resp/images/top.jpg\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" height=\"32\" style=\"background-color:#f5f5f5; border-bottom:1px solid #ddd\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text links w540\" style=\"background-color:#f5f5f5; border-bottom:1px solid #ddd; text-align:right; color:#ababab\" width=\"540\"><a href=\"#\"><img alt=\"mail\" src=\"media/com_acymailing/templates/technology_resp/images/mail.jpg\" style=\"float:right; border:none\" /></a> Newsletter {mailid} | {date:%B %Y} |&nbsp; <a href=\"#\">www.acyba.com</a> |</td>\r\n			<td class=\"w30\" height=\"32\" style=\"background-color:#f5f5f5; border-bottom:1px solid #ddd\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"3\" height=\"16\" width=\"600\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" width=\"540\"><img alt=\"picture\" src=\"media/com_acymailing/templates/technology_resp/images/pic1.jpg\" style=\"float:right\" />\r\n			<h1>Your title !</h1>\r\n\r\n			<h3>Your catchphrase</h3>\r\n			Your introduction content here</td>\r\n			<td class=\"w30\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n			<td class=\"acyeditor_picture w540\" style=\"background-color:#fafafa; line-height:0px\" width=\"540\"><img alt=\"---\" src=\"media/com_acymailing/templates/technology_resp/images/separator1.jpg\" /></td>\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" style=\"background-color:#fafafa; color:#999999\" width=\"540\">\r\n			<h2>Your subtitle</h2>\r\n			<img alt=\"picture\" src=\"media/com_acymailing/templates/technology_resp/images/pic2.jpg\" style=\"float:left\" />\r\n			<h3>Your catchphrase</h3>\r\n			Your content here<br />\r\n			<a href=\"#\">Some link</a> and some content<br />\r\n			<br />\r\n			<img alt=\"buy this product\" src=\"media/com_acymailing/templates/technology_resp/images/buyproduct.jpg\" /><br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			&nbsp;\r\n			<h2>Another subtitle</h2>\r\n			<img alt=\"picture\" src=\"media/com_acymailing/templates/technology_resp/images/pic3.jpg\" style=\"float:right\" />\r\n			<h3>Another catchphrase</h3>\r\n			Other content<br />\r\n			<br />\r\n			<img alt=\"buy this product\" src=\"media/com_acymailing/templates/technology_resp/images/buyproduct.jpg\" /></td>\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n			<td class=\"acyeditor_picture w540\" style=\"background-color:#fafafa; line-height:0px\" width=\"540\"><img alt=\"---\" src=\"media/com_acymailing/templates/technology_resp/images/separator2.jpg\" /></td>\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w600\" colspan=\"3\" height=\"16\" width=\"600\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text special w540\" style=\"color:#999999\" width=\"540\">\r\n			<h2>Best product of the month</h2>\r\n\r\n			<h3>Lorem ipsum dolor sit amet.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum doLiget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent.<br />\r\n			<br />\r\n			<img alt=\"read more\" src=\"media/com_acymailing/templates/technology_resp/images/readmore.jpg\" style=\"border:none\" /></td>\r\n			<td class=\"w30\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w600\" colspan=\"3\" height=\"16\" width=\"600\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" height=\"30\" style=\"background-color:#f5f5f5; border-top:1px solid #ddd\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" height=\"30\" style=\"background-color:#f5f5f5; border-top:1px solid #ddd; text-align:right; color:#ababab\" valign=\"bottom\" width=\"540\">Follow us | <img alt=\"facebook\" src=\"media/com_acymailing/templates/technology_resp/images/facebook.jpg\" style=\"border:none\" /> <img alt=\"twitter\" src=\"media/com_acymailing/templates/technology_resp/images/twitter.jpg\" style=\"border:none\" /> <img alt=\"pinterest\" src=\"media/com_acymailing/templates/technology_resp/images/pinterest.jpg\" style=\"border:none\" /> <img alt=\"rss\" src=\"media/com_acymailing/templates/technology_resp/images/rss.jpg\" style=\"border:none\" /></td>\r\n			<td class=\"w30\" height=\"30\" style=\"background-color:#f5f5f5; border-top:1px solid #ddd\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#f5f5f5\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/technology_resp/images/bottom.jpg\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#575757\" valign=\"bottom\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/technology_resp/images/shadowbottom.jpg\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" style=\"background-color:#575757\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" style=\"text-align:right; color:#d2d1d1; background-color:#575757\" width=\"540\"><span class=\"acymailing_unsub\">{unsubscribe}If you don\'t want to receive our news anymore, <span style=\"text-decoration:underline\">unsubscribe</span>{/unsubscribe} </span></td>\r\n			<td class=\"w30\" style=\"background-color:#575757\" width=\"30\"></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>','',NULL,1,0,4,'technology_resp','a:9:{s:6:\"tag_h1\";s:104:\"font-size:20px; margin:0px; margin-bottom:15px; padding:0px; font-weight:bold; color:#01bbe5 !important;\";s:6:\"tag_h2\";s:165:\"font-size:12px; font-weight:bold; color:#565656 !important; text-transform:uppercase; margin:10px 0px; padding:0px; padding-bottom:5px; border-bottom:1px solid #ddd;\";s:6:\"tag_h3\";s:104:\"color:#565656 !important; font-weight:bold; font-size:12px; margin:0px; margin-bottom:10px; padding:0px;\";s:6:\"tag_h4\";s:0:\"\";s:8:\"color_bg\";s:7:\"#575757\";s:5:\"tag_a\";s:62:\"cursor:pointer;color:#01bbe5;text-decoration:none;border:none;\";s:17:\"acymailing_online\";s:30:\"color:#d2d1d1; cursor:pointer;\";s:16:\"acymailing_unsub\";s:30:\"color:#d2d1d1; cursor:pointer;\";s:19:\"acymailing_readmore\";s:88:\"cursor:pointer; font-weight:bold; color:#fff; background-color:#01bbe5; padding:2px 5px;\";}',NULL,'table, div, p, td {\r\n	font-family:Arial, Helvetica, sans-serif;\r\n	font-size:12px;\r\n}\r\np{margin:0px; padding:0px}\r\n\r\n.special h2{font-size:18px;\r\n	margin:0px;\r\n	margin-bottom:15px;\r\n	padding:0px;\r\n	font-weight:bold;\r\n	color:#01bbe5 !important;\r\n	text-transform:none;\r\n	border:none}\r\n\r\n.links a{color:#ababab}\r\n\r\n@media (min-width:10px){\r\n	.w600 { width:320px !important;}\r\n	.w540 { width:260px !important;}\r\n	.w30 { width:30px !important;}\r\n	.w600 img {max-width:320px; height:auto !important}\r\n	.w540 img {max-width:260px; height:auto !important}\r\n}\r\n\r\n@media (min-width: 480px){\r\n	.w600 { width:480px !important;}\r\n	.w540 { width:420px !important;}\r\n	.w30 { width:30px !important;}\r\n	.w600 img {max-width:480px; height:auto !important}\r\n	.w540 img {max-width:420px; height:auto !important}\r\n}\r\n\r\n@media (min-width:600px){\r\n	.w600 { width:600px !important;}\r\n	.w540 { width:540px !important;}\r\n	.w30 { width:30px !important;}\r\n	.w600 img {max-width:600px; height:auto !important}\r\n	.w540 img {max-width:540px; height:auto !important}\r\n}\r\n',NULL,NULL,NULL,NULL,'media/com_acymailing/templates/technology_resp/thumb.jpg','','all','');
/*!40000 ALTER TABLE `qzq4u_acymailing_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_url`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_url` (
  `urlid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`urlid`),
  KEY `url` (`url`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_url`
--

LOCK TABLES `qzq4u_acymailing_url` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_acymailing_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_urlclick`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_urlclick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_urlclick` (
  `urlid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `click` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`urlid`,`mailid`,`subid`),
  KEY `dateindex` (`date`),
  KEY `mailidindex` (`mailid`),
  KEY `subidindex` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_urlclick`
--

LOCK TABLES `qzq4u_acymailing_urlclick` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_urlclick` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_acymailing_urlclick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_acymailing_userstats`
--

DROP TABLE IF EXISTS `qzq4u_acymailing_userstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_acymailing_userstats` (
  `mailid` mediumint(8) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `html` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sent` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `senddate` int(10) unsigned NOT NULL,
  `open` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `opendate` int(11) NOT NULL,
  `bounce` tinyint(4) NOT NULL DEFAULT '0',
  `fail` tinyint(4) NOT NULL DEFAULT '0',
  `ip` varchar(100) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `browser_version` tinyint(3) unsigned DEFAULT NULL,
  `is_mobile` tinyint(3) unsigned DEFAULT NULL,
  `mobile_os` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `bouncerule` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mailid`,`subid`),
  KEY `senddateindex` (`senddate`),
  KEY `subidindex` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_acymailing_userstats`
--

LOCK TABLES `qzq4u_acymailing_userstats` WRITE;
/*!40000 ALTER TABLE `qzq4u_acymailing_userstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_acymailing_userstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_assets`
--

DROP TABLE IF EXISTS `qzq4u_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_assets`
--

LOCK TABLES `qzq4u_assets` WRITE;
/*!40000 ALTER TABLE `qzq4u_assets` DISABLE KEYS */;
INSERT INTO `qzq4u_assets` VALUES (1,0,0,109,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,20,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,21,22,1,'com_cpanel','com_cpanel','{}'),(10,1,23,24,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,25,26,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,27,28,1,'com_login','com_login','{}'),(13,1,29,30,1,'com_mailto','com_mailto','{}'),(14,1,31,32,1,'com_massmail','com_massmail','{}'),(15,1,33,34,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,35,40,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,41,42,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,43,74,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,75,78,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,79,80,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,81,82,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,83,84,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,85,86,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,87,90,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(26,1,91,92,1,'com_wrapper','com_wrapper','{}'),(27,8,18,19,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,76,77,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,88,89,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,93,94,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,95,96,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,97,98,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(36,1,99,100,1,'com_contenthistory','com_contenthistory','{}'),(37,1,101,102,1,'com_ajax','com_ajax','{}'),(38,1,103,104,1,'com_postinstall','com_postinstall','{}'),(39,18,44,45,2,'com_modules.module.1','Main Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(40,18,46,47,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,18,48,49,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,18,50,51,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,18,52,53,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,18,54,55,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,18,56,57,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,18,58,59,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,18,60,61,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,18,62,63,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,18,64,65,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,18,66,67,2,'com_modules.module.16','Login Form','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(51,18,68,69,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(52,18,70,71,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,18,72,73,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(54,16,36,37,2,'com_menus.menu.1','Main Menu','{}'),(55,16,38,39,2,'com_menus.menu.2','Invisible','{}'),(56,1,105,106,1,'#__languages.2','#__languages.2','{}'),(57,1,107,108,1,'com_acymailing','AcyMailing','{}');
/*!40000 ALTER TABLE `qzq4u_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_associations`
--

DROP TABLE IF EXISTS `qzq4u_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_associations`
--

LOCK TABLES `qzq4u_associations` WRITE;
/*!40000 ALTER TABLE `qzq4u_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_banner_clients`
--

DROP TABLE IF EXISTS `qzq4u_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_banner_clients`
--

LOCK TABLES `qzq4u_banner_clients` WRITE;
/*!40000 ALTER TABLE `qzq4u_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_banner_tracks`
--

DROP TABLE IF EXISTS `qzq4u_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_banner_tracks`
--

LOCK TABLES `qzq4u_banner_tracks` WRITE;
/*!40000 ALTER TABLE `qzq4u_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_banners`
--

DROP TABLE IF EXISTS `qzq4u_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_banners`
--

LOCK TABLES `qzq4u_banners` WRITE;
/*!40000 ALTER TABLE `qzq4u_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_categories`
--

DROP TABLE IF EXISTS `qzq4u_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_categories`
--

LOCK TABLES `qzq4u_categories` WRITE;
/*!40000 ALTER TABLE `qzq4u_categories` DISABLE KEYS */;
INSERT INTO `qzq4u_categories` VALUES (1,0,0,0,11,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
/*!40000 ALTER TABLE `qzq4u_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_contact_details`
--

DROP TABLE IF EXISTS `qzq4u_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_contact_details`
--

LOCK TABLES `qzq4u_contact_details` WRITE;
/*!40000 ALTER TABLE `qzq4u_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_content`
--

DROP TABLE IF EXISTS `qzq4u_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_content`
--

LOCK TABLES `qzq4u_content` WRITE;
/*!40000 ALTER TABLE `qzq4u_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_content_frontpage`
--

DROP TABLE IF EXISTS `qzq4u_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_content_frontpage`
--

LOCK TABLES `qzq4u_content_frontpage` WRITE;
/*!40000 ALTER TABLE `qzq4u_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_content_rating`
--

DROP TABLE IF EXISTS `qzq4u_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_content_rating`
--

LOCK TABLES `qzq4u_content_rating` WRITE;
/*!40000 ALTER TABLE `qzq4u_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_content_types`
--

DROP TABLE IF EXISTS `qzq4u_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_content_types`
--

LOCK TABLES `qzq4u_content_types` WRITE;
/*!40000 ALTER TABLE `qzq4u_content_types` DISABLE KEYS */;
INSERT INTO `qzq4u_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `qzq4u_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_contentitem_tag_map`
--

DROP TABLE IF EXISTS `qzq4u_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_contentitem_tag_map`
--

LOCK TABLES `qzq4u_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `qzq4u_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_core_canteras`
--

DROP TABLE IF EXISTS `qzq4u_core_canteras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_core_canteras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `departamento` int(11) NOT NULL,
  `ciudad` int(11) NOT NULL,
  `latitud` float NOT NULL,
  `longitud` float NOT NULL,
  `creado_por` int(11) NOT NULL,
  `creado` date NOT NULL,
  `modificado_por` int(11) NOT NULL,
  `modificado` date NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_core_canteras`
--

LOCK TABLES `qzq4u_core_canteras` WRITE;
/*!40000 ALTER TABLE `qzq4u_core_canteras` DISABLE KEYS */;
INSERT INTO `qzq4u_core_canteras` VALUES (1,'Cantera 1',1,5001,1,1,0,'0000-00-00',0,'0000-00-00',0),(2,'Cantera 2',1,5001,1,1,0,'0000-00-00',0,'0000-00-00',0),(3,' Cantera 3',4,54003,1,1,0,'0000-00-00',0,'0000-00-00',0),(6,'Cantera 4',3,11001,1223,1234,0,'0000-00-00',0,'0000-00-00',0),(7,'Cantera 5',26,88564,10000,10000,0,'0000-00-00',0,'0000-00-00',0);
/*!40000 ALTER TABLE `qzq4u_core_canteras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_core_canteras_rel_materiales`
--

DROP TABLE IF EXISTS `qzq4u_core_canteras_rel_materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_core_canteras_rel_materiales` (
  `id_cantera` int(11) NOT NULL,
  `id_material` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valor` decimal(12,2) DEFAULT NULL,
  `resistencia` decimal(12,2) NOT NULL,
  `desgaste` decimal(12,2) NOT NULL,
  `plasticidad` decimal(12,2) NOT NULL,
  UNIQUE KEY `id_material_UNIQUE` (`id_material`,`id_cantera`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_core_canteras_rel_materiales`
--

LOCK TABLES `qzq4u_core_canteras_rel_materiales` WRITE;
/*!40000 ALTER TABLE `qzq4u_core_canteras_rel_materiales` DISABLE KEYS */;
INSERT INTO `qzq4u_core_canteras_rel_materiales` VALUES (1,1,-200,9000.00,2.00,3.00,4.00),(1,2,2000,20000.00,3.00,3.00,3.00),(1,3,2978,30000.00,3.00,2.00,1.00),(2,2,500,40000.00,3.00,2.00,2.00),(2,1,12,12.00,1.00,1.00,1.00),(7,3,5,20.00,100.00,100.00,100.00),(6,2,0,200.00,34.00,34.00,65.00),(6,1,2,20.00,34.00,34.00,65.00),(6,3,0,10.00,34.00,34.00,65.00),(6,9,1,10.00,34.00,34.00,65.00),(3,3,200000,1111.00,111.00,1111.00,21222121.00);
/*!40000 ALTER TABLE `qzq4u_core_canteras_rel_materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_core_ciudades`
--

DROP TABLE IF EXISTS `qzq4u_core_ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_core_ciudades` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(35) NOT NULL DEFAULT '',
  `CountryCode` char(3) NOT NULL DEFAULT '',
  `geo_depart_id` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=99824 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_core_ciudades`
--

LOCK TABLES `qzq4u_core_ciudades` WRITE;
/*!40000 ALTER TABLE `qzq4u_core_ciudades` DISABLE KEYS */;
INSERT INTO `qzq4u_core_ciudades` VALUES (1,'Kabul','AFG',0),(2,'Qandahar','AFG',0),(3,'Herat','AFG',0),(4,'Mazar-e-Sharif','AFG',0),(5,'Amsterdam','NLD',0),(6,'Rotterdam','NLD',0),(7,'Haag','NLD',0),(8,'Utrecht','NLD',0),(9,'Eindhoven','NLD',0),(10,'Tilburg','NLD',0),(11,'Groningen','NLD',0),(12,'Breda','NLD',0),(13,'Apeldoorn','NLD',0),(14,'Nijmegen','NLD',0),(15,'Enschede','NLD',0),(16,'Haarlem','NLD',0),(17,'Almere','NLD',0),(18,'Arnhem','NLD',0),(19,'Zaanstad','NLD',0),(20,'´s-Hertogenbosch','NLD',0),(21,'Amersfoort','NLD',0),(22,'Maastricht','NLD',0),(23,'Dordrecht','NLD',0),(24,'Leiden','NLD',0),(25,'Haarlemmermeer','NLD',0),(26,'Zoetermeer','NLD',0),(27,'Emmen','NLD',0),(28,'Zwolle','NLD',0),(29,'Ede','NLD',0),(30,'Delft','NLD',0),(31,'Heerlen','NLD',0),(32,'Alkmaar','NLD',0),(33,'Willemstad','ANT',0),(34,'Tirana','ALB',0),(35,'Alger','DZA',0),(36,'Oran','DZA',0),(37,'Constantine','DZA',0),(38,'Annaba','DZA',0),(39,'Batna','DZA',0),(40,'Sétif','DZA',0),(41,'Sidi Bel Abbès','DZA',0),(42,'Skikda','DZA',0),(43,'Biskra','DZA',0),(44,'Blida (el-Boulaida)','DZA',0),(45,'Béjaïa','DZA',0),(46,'Mostaganem','DZA',0),(47,'Tébessa','DZA',0),(48,'Tlemcen (Tilimsen)','DZA',0),(49,'Béchar','DZA',0),(50,'Tiaret','DZA',0),(51,'Ech-Chleff (el-Asnam)','DZA',0),(52,'Ghardaïa','DZA',0),(53,'Tafuna','ASM',0),(54,'Fagatogo','ASM',0),(55,'Andorra la Vella','AND',0),(56,'Luanda','AGO',0),(57,'Huambo','AGO',0),(58,'Lobito','AGO',0),(59,'Benguela','AGO',0),(60,'Namibe','AGO',0),(61,'South Hill','AIA',0),(62,'The Valley','AIA',0),(63,'Saint John´s','ATG',0),(64,'Dubai','ARE',0),(65,'Abu Dhabi','ARE',0),(66,'Sharja','ARE',0),(67,'al-Ayn','ARE',0),(68,'Ajman','ARE',0),(69,'Buenos Aires','ARG',0),(70,'La Matanza','ARG',0),(71,'Córdoba','ARG',0),(72,'Rosario','ARG',0),(73,'Lomas de Zamora','ARG',0),(74,'Quilmes','ARG',0),(75,'Almirante Brown','ARG',0),(76,'La Plata','ARG',0),(77,'Mar del Plata','ARG',0),(78,'San Miguel de Tucumán','ARG',0),(79,'Lanús','ARG',0),(80,'Merlo','ARG',0),(81,'General San Martín','ARG',0),(82,'Salta','ARG',0),(83,'Moreno','ARG',0),(84,'Santa Fé','ARG',0),(85,'Avellaneda','ARG',0),(86,'Tres de Febrero','ARG',0),(87,'Morón','ARG',0),(88,'Florencio Varela','ARG',0),(89,'San Isidro','ARG',0),(90,'Tigre','ARG',0),(91,'Malvinas Argentinas','ARG',0),(92,'Vicente López','ARG',0),(93,'Berazategui','ARG',0),(94,'Corrientes','ARG',0),(95,'San Miguel','ARG',0),(96,'Bahía Blanca','ARG',0),(97,'Esteban Echeverría','ARG',0),(98,'Resistencia','ARG',0),(99,'José C. Paz','ARG',0),(100,'Paraná','ARG',0),(101,'Godoy Cruz','ARG',0),(102,'Posadas','ARG',0),(103,'Guaymallén','ARG',0),(104,'Santiago del Estero','ARG',0),(105,'San Salvador de Jujuy','ARG',0),(106,'Hurlingham','ARG',0),(107,'Neuquén','ARG',0),(108,'Ituzaingó','ARG',0),(109,'San Fernando','ARG',0),(110,'Formosa','ARG',0),(111,'Las Heras','ARG',0),(112,'La Rioja','ARG',0),(113,'San Fernando del Valle de Cata','ARG',0),(114,'Río Cuarto','ARG',0),(115,'Comodoro Rivadavia','ARG',0),(116,'Mendoza','ARG',0),(117,'San Nicolás de los Arroyos','ARG',0),(118,'San Juan','ARG',0),(119,'Escobar','ARG',0),(120,'Concordia','ARG',0),(121,'Pilar','ARG',0),(122,'San Luis','ARG',0),(123,'Ezeiza','ARG',0),(124,'San Rafael','ARG',0),(125,'Tandil','ARG',0),(126,'Yerevan','ARM',0),(127,'Gjumri','ARM',0),(128,'Vanadzor','ARM',0),(129,'Oranjestad','ABW',0),(130,'Sydney','AUS',0),(131,'Melbourne','AUS',0),(132,'Brisbane','AUS',0),(133,'Perth','AUS',0),(134,'Adelaide','AUS',0),(135,'Canberra','AUS',0),(136,'Gold Coast','AUS',0),(137,'Newcastle','AUS',0),(138,'Central Coast','AUS',0),(139,'Wollongong','AUS',0),(140,'Hobart','AUS',0),(141,'Geelong','AUS',0),(142,'Townsville','AUS',0),(143,'Cairns','AUS',0),(144,'Baku','AZE',0),(145,'Gäncä','AZE',0),(146,'Sumqayit','AZE',0),(147,'Mingäçevir','AZE',0),(148,'Nassau','BHS',0),(149,'al-Manama','BHR',0),(150,'Dhaka','BGD',0),(151,'Chittagong','BGD',0),(152,'Khulna','BGD',0),(153,'Rajshahi','BGD',0),(154,'Narayanganj','BGD',0),(155,'Rangpur','BGD',0),(156,'Mymensingh','BGD',0),(157,'Barisal','BGD',0),(158,'Tungi','BGD',0),(159,'Jessore','BGD',0),(160,'Comilla','BGD',0),(161,'Nawabganj','BGD',0),(162,'Dinajpur','BGD',0),(163,'Bogra','BGD',0),(164,'Sylhet','BGD',0),(165,'Brahmanbaria','BGD',0),(166,'Tangail','BGD',0),(167,'Jamalpur','BGD',0),(168,'Pabna','BGD',0),(169,'Naogaon','BGD',0),(170,'Sirajganj','BGD',0),(171,'Narsinghdi','BGD',0),(172,'Saidpur','BGD',0),(173,'Gazipur','BGD',0),(174,'Bridgetown','BRB',0),(175,'Antwerpen','BEL',0),(176,'Gent','BEL',0),(177,'Charleroi','BEL',0),(178,'Liège','BEL',0),(179,'Bruxelles [Brussel]','BEL',0),(180,'Brugge','BEL',0),(181,'Schaerbeek','BEL',0),(182,'Namur','BEL',0),(183,'Mons','BEL',0),(184,'Belize City','BLZ',0),(185,'Belmopan','BLZ',0),(186,'Cotonou','BEN',0),(187,'Porto-Novo','BEN',0),(188,'Djougou','BEN',0),(189,'Parakou','BEN',0),(190,'Saint George','BMU',0),(191,'Hamilton','BMU',0),(192,'Thimphu','BTN',0),(193,'Santa Cruz de la Sierra','BOL',0),(194,'La Paz','BOL',0),(195,'El Alto','BOL',0),(196,'Cochabamba','BOL',0),(197,'Oruro','BOL',0),(198,'Sucre','BOL',0),(199,'Potosí','BOL',0),(200,'Tarija','BOL',0),(201,'Sarajevo','BIH',0),(202,'Banja Luka','BIH',0),(203,'Zenica','BIH',0),(204,'Gaborone','BWA',0),(205,'Francistown','BWA',0),(206,'São Paulo','BRA',0),(207,'Rio de Janeiro','BRA',0),(208,'Salvador','BRA',0),(209,'Belo Horizonte','BRA',0),(210,'Fortaleza','BRA',0),(211,'Brasília','BRA',0),(212,'Curitiba','BRA',0),(213,'Recife','BRA',0),(214,'Porto Alegre','BRA',0),(215,'Manaus','BRA',0),(216,'Belém','BRA',0),(217,'Guarulhos','BRA',0),(218,'Goiânia','BRA',0),(219,'Campinas','BRA',0),(220,'São Gonçalo','BRA',0),(221,'Nova Iguaçu','BRA',0),(222,'São Luís','BRA',0),(223,'Maceió','BRA',0),(224,'Duque de Caxias','BRA',0),(225,'São Bernardo do Campo','BRA',0),(226,'Teresina','BRA',0),(227,'Natal','BRA',0),(228,'Osasco','BRA',0),(229,'Campo Grande','BRA',0),(230,'Santo André','BRA',0),(231,'João Pessoa','BRA',0),(232,'Jaboatão dos Guararapes','BRA',0),(233,'Contagem','BRA',0),(234,'São José dos Campos','BRA',0),(235,'Uberlândia','BRA',0),(236,'Feira de Santana','BRA',0),(237,'Ribeirão Preto','BRA',0),(238,'Sorocaba','BRA',0),(239,'Niterói','BRA',0),(240,'Cuiabá','BRA',0),(241,'Juiz de Fora','BRA',0),(242,'Aracaju','BRA',0),(243,'São João de Meriti','BRA',0),(244,'Londrina','BRA',0),(245,'Joinville','BRA',0),(246,'Belford Roxo','BRA',0),(247,'Santos','BRA',0),(248,'Ananindeua','BRA',0),(249,'Campos dos Goytacazes','BRA',0),(250,'Mauá','BRA',0),(251,'Carapicuíba','BRA',0),(252,'Olinda','BRA',0),(253,'Campina Grande','BRA',0),(254,'São José do Rio Preto','BRA',0),(255,'Caxias do Sul','BRA',0),(256,'Moji das Cruzes','BRA',0),(257,'Diadema','BRA',0),(258,'Aparecida de Goiânia','BRA',0),(259,'Piracicaba','BRA',0),(260,'Cariacica','BRA',0),(261,'Vila Velha','BRA',0),(262,'Pelotas','BRA',0),(263,'Bauru','BRA',0),(264,'Porto Velho','BRA',0),(265,'Serra','BRA',0),(266,'Betim','BRA',0),(267,'Jundíaí','BRA',0),(268,'Canoas','BRA',0),(269,'Franca','BRA',0),(270,'São Vicente','BRA',0),(271,'Maringá','BRA',0),(272,'Montes Claros','BRA',0),(273,'Anápolis','BRA',0),(274,'Florianópolis','BRA',0),(275,'Petrópolis','BRA',0),(276,'Itaquaquecetuba','BRA',0),(277,'Vitória','BRA',0),(278,'Ponta Grossa','BRA',0),(279,'Rio Branco','BRA',0),(280,'Foz do Iguaçu','BRA',0),(281,'Macapá','BRA',0),(282,'Ilhéus','BRA',0),(283,'Vitória da Conquista','BRA',0),(284,'Uberaba','BRA',0),(285,'Paulista','BRA',0),(286,'Limeira','BRA',0),(287,'Blumenau','BRA',0),(288,'Caruaru','BRA',0),(289,'Santarém','BRA',0),(290,'Volta Redonda','BRA',0),(291,'Novo Hamburgo','BRA',0),(292,'Caucaia','BRA',0),(293,'Santa Maria','BRA',0),(294,'Cascavel','BRA',0),(295,'Guarujá','BRA',0),(296,'Ribeirão das Neves','BRA',0),(297,'Governador Valadares','BRA',0),(298,'Taubaté','BRA',0),(299,'Imperatriz','BRA',0),(300,'Gravataí','BRA',0),(301,'Embu','BRA',0),(302,'Mossoró','BRA',0),(303,'Várzea Grande','BRA',0),(304,'Petrolina','BRA',0),(305,'Barueri','BRA',0),(306,'Viamão','BRA',0),(307,'Ipatinga','BRA',0),(308,'Juazeiro','BRA',0),(309,'Juazeiro do Norte','BRA',0),(310,'Taboão da Serra','BRA',0),(311,'São José dos Pinhais','BRA',0),(312,'Magé','BRA',0),(313,'Suzano','BRA',0),(314,'São Leopoldo','BRA',0),(315,'Marília','BRA',0),(316,'São Carlos','BRA',0),(317,'Sumaré','BRA',0),(318,'Presidente Prudente','BRA',0),(319,'Divinópolis','BRA',0),(320,'Sete Lagoas','BRA',0),(321,'Rio Grande','BRA',0),(322,'Itabuna','BRA',0),(323,'Jequié','BRA',0),(324,'Arapiraca','BRA',0),(325,'Colombo','BRA',0),(326,'Americana','BRA',0),(327,'Alvorada','BRA',0),(328,'Araraquara','BRA',0),(329,'Itaboraí','BRA',0),(330,'Santa Bárbara d´Oeste','BRA',0),(331,'Nova Friburgo','BRA',0),(332,'Jacareí','BRA',0),(333,'Araçatuba','BRA',0),(334,'Barra Mansa','BRA',0),(335,'Praia Grande','BRA',0),(336,'Marabá','BRA',0),(337,'Criciúma','BRA',0),(338,'Boa Vista','BRA',0),(339,'Passo Fundo','BRA',0),(340,'Dourados','BRA',0),(341,'Santa Luzia','BRA',0),(342,'Rio Claro','BRA',0),(343,'Maracanaú','BRA',0),(344,'Guarapuava','BRA',0),(345,'Rondonópolis','BRA',0),(346,'São José','BRA',0),(347,'Cachoeiro de Itapemirim','BRA',0),(348,'Nilópolis','BRA',0),(349,'Itapevi','BRA',0),(350,'Cabo de Santo Agostinho','BRA',0),(351,'Camaçari','BRA',0),(352,'Sobral','BRA',0),(353,'Itajaí','BRA',0),(354,'Chapecó','BRA',0),(355,'Cotia','BRA',0),(356,'Lages','BRA',0),(357,'Ferraz de Vasconcelos','BRA',0),(358,'Indaiatuba','BRA',0),(359,'Hortolândia','BRA',0),(360,'Caxias','BRA',0),(361,'São Caetano do Sul','BRA',0),(362,'Itu','BRA',0),(363,'Nossa Senhora do Socorro','BRA',0),(364,'Parnaíba','BRA',0),(365,'Poços de Caldas','BRA',0),(366,'Teresópolis','BRA',0),(367,'Barreiras','BRA',0),(368,'Castanhal','BRA',0),(369,'Alagoinhas','BRA',0),(370,'Itapecerica da Serra','BRA',0),(371,'Uruguaiana','BRA',0),(372,'Paranaguá','BRA',0),(373,'Ibirité','BRA',0),(374,'Timon','BRA',0),(375,'Luziânia','BRA',0),(376,'Macaé','BRA',0),(377,'Teófilo Otoni','BRA',0),(378,'Moji-Guaçu','BRA',0),(379,'Palmas','BRA',0),(380,'Pindamonhangaba','BRA',0),(381,'Francisco Morato','BRA',0),(382,'Bagé','BRA',0),(383,'Sapucaia do Sul','BRA',0),(384,'Cabo Frio','BRA',0),(385,'Itapetininga','BRA',0),(386,'Patos de Minas','BRA',0),(387,'Camaragibe','BRA',0),(388,'Bragança Paulista','BRA',0),(389,'Queimados','BRA',0),(390,'Araguaína','BRA',0),(391,'Garanhuns','BRA',0),(392,'Vitória de Santo Antão','BRA',0),(393,'Santa Rita','BRA',0),(394,'Barbacena','BRA',0),(395,'Abaetetuba','BRA',0),(396,'Jaú','BRA',0),(397,'Lauro de Freitas','BRA',0),(398,'Franco da Rocha','BRA',0),(399,'Teixeira de Freitas','BRA',0),(400,'Varginha','BRA',0),(401,'Ribeirão Pires','BRA',0),(402,'Sabará','BRA',0),(403,'Catanduva','BRA',0),(404,'Rio Verde','BRA',0),(405,'Botucatu','BRA',0),(406,'Colatina','BRA',0),(407,'Santa Cruz do Sul','BRA',0),(408,'Linhares','BRA',0),(409,'Apucarana','BRA',0),(410,'Barretos','BRA',0),(411,'Guaratinguetá','BRA',0),(412,'Cachoeirinha','BRA',0),(413,'Codó','BRA',0),(414,'Jaraguá do Sul','BRA',0),(415,'Cubatão','BRA',0),(416,'Itabira','BRA',0),(417,'Itaituba','BRA',0),(418,'Araras','BRA',0),(419,'Resende','BRA',0),(420,'Atibaia','BRA',0),(421,'Pouso Alegre','BRA',0),(422,'Toledo','BRA',0),(423,'Crato','BRA',0),(424,'Passos','BRA',0),(425,'Araguari','BRA',0),(426,'São José de Ribamar','BRA',0),(427,'Pinhais','BRA',0),(428,'Sertãozinho','BRA',0),(429,'Conselheiro Lafaiete','BRA',0),(430,'Paulo Afonso','BRA',0),(431,'Angra dos Reis','BRA',0),(432,'Eunápolis','BRA',0),(433,'Salto','BRA',0),(434,'Ourinhos','BRA',0),(435,'Parnamirim','BRA',0),(436,'Jacobina','BRA',0),(437,'Coronel Fabriciano','BRA',0),(438,'Birigui','BRA',0),(439,'Tatuí','BRA',0),(440,'Ji-Paraná','BRA',0),(441,'Bacabal','BRA',0),(442,'Cametá','BRA',0),(443,'Guaíba','BRA',0),(444,'São Lourenço da Mata','BRA',0),(445,'Santana do Livramento','BRA',0),(446,'Votorantim','BRA',0),(447,'Campo Largo','BRA',0),(448,'Patos','BRA',0),(449,'Ituiutaba','BRA',0),(450,'Corumbá','BRA',0),(451,'Palhoça','BRA',0),(452,'Barra do Piraí','BRA',0),(453,'Bento Gonçalves','BRA',0),(454,'Poá','BRA',0),(455,'Águas Lindas de Goiás','BRA',0),(456,'London','GBR',0),(457,'Birmingham','GBR',0),(458,'Glasgow','GBR',0),(459,'Liverpool','GBR',0),(460,'Edinburgh','GBR',0),(461,'Sheffield','GBR',0),(462,'Manchester','GBR',0),(463,'Leeds','GBR',0),(464,'Bristol','GBR',0),(465,'Cardiff','GBR',0),(466,'Coventry','GBR',0),(467,'Leicester','GBR',0),(468,'Bradford','GBR',0),(469,'Belfast','GBR',0),(470,'Nottingham','GBR',0),(471,'Kingston upon Hull','GBR',0),(472,'Plymouth','GBR',0),(473,'Stoke-on-Trent','GBR',0),(474,'Wolverhampton','GBR',0),(475,'Derby','GBR',0),(476,'Swansea','GBR',0),(477,'Southampton','GBR',0),(478,'Aberdeen','GBR',0),(479,'Northampton','GBR',0),(480,'Dudley','GBR',0),(481,'Portsmouth','GBR',0),(482,'Newcastle upon Tyne','GBR',0),(483,'Sunderland','GBR',0),(484,'Luton','GBR',0),(485,'Swindon','GBR',0),(486,'Southend-on-Sea','GBR',0),(487,'Walsall','GBR',0),(488,'Bournemouth','GBR',0),(489,'Peterborough','GBR',0),(490,'Brighton','GBR',0),(491,'Blackpool','GBR',0),(492,'Dundee','GBR',0),(493,'West Bromwich','GBR',0),(494,'Reading','GBR',0),(495,'Oldbury/Smethwick (Warley)','GBR',0),(496,'Middlesbrough','GBR',0),(497,'Huddersfield','GBR',0),(498,'Oxford','GBR',0),(499,'Poole','GBR',0),(500,'Bolton','GBR',0),(501,'Blackburn','GBR',0),(502,'Newport','GBR',0),(503,'Preston','GBR',0),(504,'Stockport','GBR',0),(505,'Norwich','GBR',0),(506,'Rotherham','GBR',0),(507,'Cambridge','GBR',0),(508,'Watford','GBR',0),(509,'Ipswich','GBR',0),(510,'Slough','GBR',0),(511,'Exeter','GBR',0),(512,'Cheltenham','GBR',0),(513,'Gloucester','GBR',0),(514,'Saint Helens','GBR',0),(515,'Sutton Coldfield','GBR',0),(516,'York','GBR',0),(517,'Oldham','GBR',0),(518,'Basildon','GBR',0),(519,'Worthing','GBR',0),(520,'Chelmsford','GBR',0),(521,'Colchester','GBR',0),(522,'Crawley','GBR',0),(523,'Gillingham','GBR',0),(524,'Solihull','GBR',0),(525,'Rochdale','GBR',0),(526,'Birkenhead','GBR',0),(527,'Worcester','GBR',0),(528,'Hartlepool','GBR',0),(529,'Halifax','GBR',0),(530,'Woking/Byfleet','GBR',0),(531,'Southport','GBR',0),(532,'Maidstone','GBR',0),(533,'Eastbourne','GBR',0),(534,'Grimsby','GBR',0),(535,'Saint Helier','GBR',0),(536,'Douglas','GBR',0),(537,'Road Town','VGB',0),(538,'Bandar Seri Begawan','BRN',0),(539,'Sofija','BGR',0),(540,'Plovdiv','BGR',0),(541,'Varna','BGR',0),(542,'Burgas','BGR',0),(543,'Ruse','BGR',0),(544,'Stara Zagora','BGR',0),(545,'Pleven','BGR',0),(546,'Sliven','BGR',0),(547,'Dobric','BGR',0),(548,'Šumen','BGR',0),(549,'Ouagadougou','BFA',0),(550,'Bobo-Dioulasso','BFA',0),(551,'Koudougou','BFA',0),(552,'Bujumbura','BDI',0),(553,'George Town','CYM',0),(554,'Santiago de Chile','CHL',0),(555,'Puente Alto','CHL',0),(556,'Viña del Mar','CHL',0),(557,'Valparaíso','CHL',0),(558,'Talcahuano','CHL',0),(559,'Antofagasta','CHL',0),(560,'San Bernardo','CHL',0),(561,'Temuco','CHL',0),(562,'Concepción','CHL',0),(563,'Rancagua','CHL',0),(564,'Arica','CHL',0),(565,'Talca','CHL',0),(566,'Chillán','CHL',0),(567,'Iquique','CHL',0),(568,'Los Angeles','CHL',0),(569,'Puerto Montt','CHL',0),(570,'Coquimbo','CHL',0),(571,'Osorno','CHL',0),(572,'La Serena','CHL',0),(573,'Calama','CHL',0),(574,'Valdivia','CHL',0),(575,'Punta Arenas','CHL',0),(576,'Copiapó','CHL',0),(577,'Quilpué','CHL',0),(578,'Curicó','CHL',0),(579,'Ovalle','CHL',0),(580,'Coronel','CHL',0),(581,'San Pedro de la Paz','CHL',0),(582,'Melipilla','CHL',0),(583,'Avarua','COK',0),(584,'San José','CRI',0),(585,'Djibouti','DJI',0),(586,'Roseau','DMA',0),(587,'Santo Domingo de Guzmán','DOM',0),(588,'Santiago de los Caballeros','DOM',0),(589,'La Romana','DOM',0),(590,'San Pedro de Macorís','DOM',0),(591,'San Francisco de Macorís','DOM',0),(592,'San Felipe de Puerto Plata','DOM',0),(593,'Guayaquil','ECU',0),(594,'Quito','ECU',0),(595,'Cuenca','ECU',0),(596,'Machala','ECU',0),(597,'Santo Domingo de los Colorados','ECU',0),(598,'Portoviejo','ECU',0),(599,'Ambato','ECU',0),(600,'Manta','ECU',0),(601,'Duran [Eloy Alfaro]','ECU',0),(602,'Ibarra','ECU',0),(603,'Quevedo','ECU',0),(604,'Milagro','ECU',0),(605,'Loja','ECU',0),(606,'Ríobamba','ECU',0),(607,'Esmeraldas','ECU',0),(608,'Cairo','EGY',0),(609,'Alexandria','EGY',0),(610,'Giza','EGY',0),(611,'Shubra al-Khayma','EGY',0),(612,'Port Said','EGY',0),(613,'Suez','EGY',0),(614,'al-Mahallat al-Kubra','EGY',0),(615,'Tanta','EGY',0),(616,'al-Mansura','EGY',0),(617,'Luxor','EGY',0),(618,'Asyut','EGY',0),(619,'Bahtim','EGY',0),(620,'Zagazig','EGY',0),(621,'al-Faiyum','EGY',0),(622,'Ismailia','EGY',0),(623,'Kafr al-Dawwar','EGY',0),(624,'Assuan','EGY',0),(625,'Damanhur','EGY',0),(626,'al-Minya','EGY',0),(627,'Bani Suwayf','EGY',0),(628,'Qina','EGY',0),(629,'Sawhaj','EGY',0),(630,'Shibin al-Kawm','EGY',0),(631,'Bulaq al-Dakrur','EGY',0),(632,'Banha','EGY',0),(633,'Warraq al-Arab','EGY',0),(634,'Kafr al-Shaykh','EGY',0),(635,'Mallawi','EGY',0),(636,'Bilbays','EGY',0),(637,'Mit Ghamr','EGY',0),(638,'al-Arish','EGY',0),(639,'Talkha','EGY',0),(640,'Qalyub','EGY',0),(641,'Jirja','EGY',0),(642,'Idfu','EGY',0),(643,'al-Hawamidiya','EGY',0),(644,'Disuq','EGY',0),(645,'San Salvador','SLV',0),(646,'Santa Ana','SLV',0),(647,'Mejicanos','SLV',0),(648,'Soyapango','SLV',0),(649,'San Miguel','SLV',0),(650,'Nueva San Salvador','SLV',0),(651,'Apopa','SLV',0),(652,'Asmara','ERI',0),(653,'Madrid','ESP',0),(654,'Barcelona','ESP',0),(655,'Valencia','ESP',0),(656,'Sevilla','ESP',0),(657,'Zaragoza','ESP',0),(658,'Málaga','ESP',0),(659,'Bilbao','ESP',0),(660,'Las Palmas de Gran Canaria','ESP',0),(661,'Murcia','ESP',0),(662,'Palma de Mallorca','ESP',0),(663,'Valladolid','ESP',0),(664,'Córdoba','ESP',0),(665,'Vigo','ESP',0),(666,'Alicante [Alacant]','ESP',0),(667,'Gijón','ESP',0),(668,'L´Hospitalet de Llobregat','ESP',0),(669,'Granada','ESP',0),(670,'A Coruña (La Coruña)','ESP',0),(671,'Vitoria-Gasteiz','ESP',0),(672,'Santa Cruz de Tenerife','ESP',0),(673,'Badalona','ESP',0),(674,'Oviedo','ESP',0),(675,'Móstoles','ESP',0),(676,'Elche [Elx]','ESP',0),(677,'Sabadell','ESP',0),(678,'Santander','ESP',0),(679,'Jerez de la Frontera','ESP',0),(680,'Pamplona [Iruña]','ESP',0),(681,'Donostia-San Sebastián','ESP',0),(682,'Cartagena españa','ESP',0),(683,'Leganés','ESP',0),(684,'Fuenlabrada','ESP',0),(685,'Almería','ESP',0),(686,'Terrassa','ESP',0),(687,'Alcalá de Henares','ESP',0),(688,'Burgos','ESP',0),(689,'Salamanca','ESP',0),(690,'Albacete','ESP',0),(691,'Getafe','ESP',0),(692,'Cádiz','ESP',0),(693,'Alcorcón','ESP',0),(694,'Huelva','ESP',0),(695,'León','ESP',0),(696,'Castellón de la Plana [Castell','ESP',0),(697,'Badajoz','ESP',0),(698,'[San Cristóbal de] la Laguna','ESP',0),(699,'Logroño','ESP',0),(700,'Santa Coloma de Gramenet','ESP',0),(701,'Tarragona','ESP',0),(702,'Lleida (Lérida)','ESP',0),(703,'Jaén','ESP',0),(704,'Ourense (Orense)','ESP',0),(705,'Mataró','ESP',0),(706,'Algeciras','ESP',0),(707,'Marbella','ESP',0),(708,'Barakaldo','ESP',0),(709,'Dos Hermanas','ESP',0),(710,'Santiago de Compostela','ESP',0),(711,'Torrejón de Ardoz','ESP',0),(712,'Cape Town','ZAF',0),(713,'Soweto','ZAF',0),(714,'Johannesburg','ZAF',0),(715,'Port Elizabeth','ZAF',0),(716,'Pretoria','ZAF',0),(717,'Inanda','ZAF',0),(718,'Durban','ZAF',0),(719,'Vanderbijlpark','ZAF',0),(720,'Kempton Park','ZAF',0),(721,'Alberton','ZAF',0),(722,'Pinetown','ZAF',0),(723,'Pietermaritzburg','ZAF',0),(724,'Benoni','ZAF',0),(725,'Randburg','ZAF',0),(726,'Umlazi','ZAF',0),(727,'Bloemfontein','ZAF',0),(728,'Vereeniging','ZAF',0),(729,'Wonderboom','ZAF',0),(730,'Roodepoort','ZAF',0),(731,'Boksburg','ZAF',0),(732,'Klerksdorp','ZAF',0),(733,'Soshanguve','ZAF',0),(734,'Newcastle','ZAF',0),(735,'East London','ZAF',0),(736,'Welkom','ZAF',0),(737,'Kimberley','ZAF',0),(738,'Uitenhage','ZAF',0),(739,'Chatsworth','ZAF',0),(740,'Mdantsane','ZAF',0),(741,'Krugersdorp','ZAF',0),(742,'Botshabelo','ZAF',0),(743,'Brakpan','ZAF',0),(744,'Witbank','ZAF',0),(745,'Oberholzer','ZAF',0),(746,'Germiston','ZAF',0),(747,'Springs','ZAF',0),(748,'Westonaria','ZAF',0),(749,'Randfontein','ZAF',0),(750,'Paarl','ZAF',0),(751,'Potchefstroom','ZAF',0),(752,'Rustenburg','ZAF',0),(753,'Nigel','ZAF',0),(754,'George','ZAF',0),(755,'Ladysmith','ZAF',0),(756,'Addis Abeba','ETH',0),(757,'Dire Dawa','ETH',0),(758,'Nazret','ETH',0),(759,'Gonder','ETH',0),(760,'Dese','ETH',0),(761,'Mekele','ETH',0),(762,'Bahir Dar','ETH',0),(763,'Stanley','FLK',0),(764,'Suva','FJI',0),(765,'Quezon','PHL',0),(766,'Manila','PHL',0),(767,'Kalookan','PHL',0),(768,'Davao','PHL',0),(769,'Cebu','PHL',0),(770,'Zamboanga','PHL',0),(771,'Pasig','PHL',0),(772,'Valenzuela','PHL',0),(773,'Las Piñas','PHL',0),(774,'Antipolo','PHL',0),(775,'Taguig','PHL',0),(776,'Cagayan de Oro','PHL',0),(777,'Parañaque','PHL',0),(778,'Makati','PHL',0),(779,'Bacolod','PHL',0),(780,'General Santos','PHL',0),(781,'Marikina','PHL',0),(782,'Dasmariñas','PHL',0),(783,'Muntinlupa','PHL',0),(784,'Iloilo','PHL',0),(785,'Pasay','PHL',0),(786,'Malabon','PHL',0),(787,'San José del Monte','PHL',0),(788,'Bacoor','PHL',0),(789,'Iligan','PHL',0),(790,'Calamba','PHL',0),(791,'Mandaluyong','PHL',0),(792,'Butuan','PHL',0),(793,'Angeles','PHL',0),(794,'Tarlac','PHL',0),(795,'Mandaue','PHL',0),(796,'Baguio','PHL',0),(797,'Batangas','PHL',0),(798,'Cainta','PHL',0),(799,'San Pedro','PHL',0),(800,'Navotas','PHL',0),(801,'Cabanatuan','PHL',0),(802,'San Fernando','PHL',0),(803,'Lipa','PHL',0),(804,'Lapu-Lapu','PHL',0),(805,'San Pablo','PHL',0),(806,'Biñan','PHL',0),(807,'Taytay','PHL',0),(808,'Lucena','PHL',0),(809,'Imus','PHL',0),(810,'Olongapo','PHL',0),(811,'Binangonan','PHL',0),(812,'Santa Rosa','PHL',0),(813,'Tagum','PHL',0),(814,'Tacloban','PHL',0),(815,'Malolos','PHL',0),(816,'Mabalacat','PHL',0),(817,'Cotabato','PHL',0),(818,'Meycauayan','PHL',0),(819,'Puerto Princesa','PHL',0),(820,'Legazpi','PHL',0),(821,'Silang','PHL',0),(822,'Ormoc','PHL',0),(823,'San Carlos','PHL',0),(824,'Kabankalan','PHL',0),(825,'Talisay','PHL',0),(826,'Valencia','PHL',0),(827,'Calbayog','PHL',0),(828,'Santa Maria','PHL',0),(829,'Pagadian','PHL',0),(830,'Cadiz','PHL',0),(831,'Bago','PHL',0),(832,'Toledo','PHL',0),(833,'Naga','PHL',0),(834,'San Mateo','PHL',0),(835,'Panabo','PHL',0),(836,'Koronadal','PHL',0),(837,'Marawi','PHL',0),(838,'Dagupan','PHL',0),(839,'Sagay','PHL',0),(840,'Roxas','PHL',0),(841,'Lubao','PHL',0),(842,'Digos','PHL',0),(843,'San Miguel','PHL',0),(844,'Malaybalay','PHL',0),(845,'Tuguegarao','PHL',0),(846,'Ilagan','PHL',0),(847,'Baliuag','PHL',0),(848,'Surigao','PHL',0),(849,'San Carlos','PHL',0),(850,'San Juan del Monte','PHL',0),(851,'Tanauan','PHL',0),(852,'Concepcion','PHL',0),(853,'Rodriguez (Montalban)','PHL',0),(854,'Sariaya','PHL',0),(855,'Malasiqui','PHL',0),(856,'General Mariano Alvarez','PHL',0),(857,'Urdaneta','PHL',0),(858,'Hagonoy','PHL',0),(859,'San Jose','PHL',0),(860,'Polomolok','PHL',0),(861,'Santiago','PHL',0),(862,'Tanza','PHL',0),(863,'Ozamis','PHL',0),(864,'Mexico','PHL',0),(865,'San Jose','PHL',0),(866,'Silay','PHL',0),(867,'General Trias','PHL',0),(868,'Tabaco','PHL',0),(869,'Cabuyao','PHL',0),(870,'Calapan','PHL',0),(871,'Mati','PHL',0),(872,'Midsayap','PHL',0),(873,'Cauayan','PHL',0),(874,'Gingoog','PHL',0),(875,'Dumaguete','PHL',0),(876,'San Fernando','PHL',0),(877,'Arayat','PHL',0),(878,'Bayawan (Tulong)','PHL',0),(879,'Kidapawan','PHL',0),(880,'Daraga (Locsin)','PHL',0),(881,'Marilao','PHL',0),(882,'Malita','PHL',0),(883,'Dipolog','PHL',0),(884,'Cavite','PHL',0),(885,'Danao','PHL',0),(886,'Bislig','PHL',0),(887,'Talavera','PHL',0),(888,'Guagua','PHL',0),(889,'Bayambang','PHL',0),(890,'Nasugbu','PHL',0),(891,'Baybay','PHL',0),(892,'Capas','PHL',0),(893,'Sultan Kudarat','PHL',0),(894,'Laoag','PHL',0),(895,'Bayugan','PHL',0),(896,'Malungon','PHL',0),(897,'Santa Cruz','PHL',0),(898,'Sorsogon','PHL',0),(899,'Candelaria','PHL',0),(900,'Ligao','PHL',0),(901,'Tórshavn','FRO',0),(902,'Libreville','GAB',0),(903,'Serekunda','GMB',0),(904,'Banjul','GMB',0),(905,'Tbilisi','GEO',0),(906,'Kutaisi','GEO',0),(907,'Rustavi','GEO',0),(908,'Batumi','GEO',0),(909,'Sohumi','GEO',0),(910,'Accra','GHA',0),(911,'Kumasi','GHA',0),(912,'Tamale','GHA',0),(913,'Tema','GHA',0),(914,'Sekondi-Takoradi','GHA',0),(915,'Gibraltar','GIB',0),(916,'Saint George´s','GRD',0),(917,'Nuuk','GRL',0),(918,'Les Abymes','GLP',0),(919,'Basse-Terre','GLP',0),(920,'Tamuning','GUM',0),(921,'Agaña','GUM',0),(922,'Ciudad de Guatemala','GTM',0),(923,'Mixco','GTM',0),(924,'Villa Nueva','GTM',0),(925,'Quetzaltenango','GTM',0),(926,'Conakry','GIN',0),(927,'Bissau','GNB',0),(928,'Georgetown','GUY',0),(929,'Port-au-Prince','HTI',0),(930,'Carrefour','HTI',0),(931,'Delmas','HTI',0),(932,'Le-Cap-Haïtien','HTI',0),(933,'Tegucigalpa','HND',0),(934,'San Pedro Sula','HND',0),(935,'La Ceiba','HND',0),(936,'Kowloon and New Kowloon','HKG',0),(937,'Victoria','HKG',0),(938,'Longyearbyen','SJM',0),(939,'Jakarta','IDN',0),(940,'Surabaya','IDN',0),(941,'Bandung','IDN',0),(942,'Medan','IDN',0),(943,'Palembang','IDN',0),(944,'Tangerang','IDN',0),(945,'Semarang','IDN',0),(946,'Ujung Pandang','IDN',0),(947,'Malang','IDN',0),(948,'Bandar Lampung','IDN',0),(949,'Bekasi','IDN',0),(950,'Padang','IDN',0),(951,'Surakarta','IDN',0),(952,'Banjarmasin','IDN',0),(953,'Pekan Baru','IDN',0),(954,'Denpasar','IDN',0),(955,'Yogyakarta','IDN',0),(956,'Pontianak','IDN',0),(957,'Samarinda','IDN',0),(958,'Jambi','IDN',0),(959,'Depok','IDN',0),(960,'Cimahi','IDN',0),(961,'Balikpapan','IDN',0),(962,'Manado','IDN',0),(963,'Mataram','IDN',0),(964,'Pekalongan','IDN',0),(965,'Tegal','IDN',0),(966,'Bogor','IDN',0),(967,'Ciputat','IDN',0),(968,'Pondokgede','IDN',0),(969,'Cirebon','IDN',0),(970,'Kediri','IDN',0),(971,'Ambon','IDN',0),(972,'Jember','IDN',0),(973,'Cilacap','IDN',0),(974,'Cimanggis','IDN',0),(975,'Pematang Siantar','IDN',0),(976,'Purwokerto','IDN',0),(977,'Ciomas','IDN',0),(978,'Tasikmalaya','IDN',0),(979,'Madiun','IDN',0),(980,'Bengkulu','IDN',0),(981,'Karawang','IDN',0),(982,'Banda Aceh','IDN',0),(983,'Palu','IDN',0),(984,'Pasuruan','IDN',0),(985,'Kupang','IDN',0),(986,'Tebing Tinggi','IDN',0),(987,'Percut Sei Tuan','IDN',0),(988,'Binjai','IDN',0),(989,'Sukabumi','IDN',0),(990,'Waru','IDN',0),(991,'Pangkal Pinang','IDN',0),(992,'Magelang','IDN',0),(993,'Blitar','IDN',0),(994,'Serang','IDN',0),(995,'Probolinggo','IDN',0),(996,'Cilegon','IDN',0),(997,'Cianjur','IDN',0),(998,'Ciparay','IDN',0),(999,'Lhokseumawe','IDN',0),(1000,'Taman','IDN',0),(1001,'Depok','IDN',0),(1002,'Citeureup','IDN',0),(1003,'Pemalang','IDN',0),(1004,'Klaten','IDN',0),(1005,'Salatiga','IDN',0),(1006,'Cibinong','IDN',0),(1007,'Palangka Raya','IDN',0),(1008,'Mojokerto','IDN',0),(1009,'Purwakarta','IDN',0),(1010,'Garut','IDN',0),(1011,'Kudus','IDN',0),(1012,'Kendari','IDN',0),(1013,'Jaya Pura','IDN',0),(1014,'Gorontalo','IDN',0),(1015,'Majalaya','IDN',0),(1016,'Pondok Aren','IDN',0),(1017,'Jombang','IDN',0),(1018,'Sunggal','IDN',0),(1019,'Batam','IDN',0),(1020,'Padang Sidempuan','IDN',0),(1021,'Sawangan','IDN',0),(1022,'Banyuwangi','IDN',0),(1023,'Tanjung Pinang','IDN',0),(1024,'Mumbai (Bombay)','IND',0),(1025,'Delhi','IND',0),(1026,'Calcutta [Kolkata]','IND',0),(1027,'Chennai (Madras)','IND',0),(1028,'Hyderabad','IND',0),(1029,'Ahmedabad','IND',0),(1030,'Bangalore','IND',0),(1031,'Kanpur','IND',0),(1032,'Nagpur','IND',0),(1033,'Lucknow','IND',0),(1034,'Pune','IND',0),(1035,'Surat','IND',0),(1036,'Jaipur','IND',0),(1037,'Indore','IND',0),(1038,'Bhopal','IND',0),(1039,'Ludhiana','IND',0),(1040,'Vadodara (Baroda)','IND',0),(1041,'Kalyan','IND',0),(1042,'Madurai','IND',0),(1043,'Haora (Howrah)','IND',0),(1044,'Varanasi (Benares)','IND',0),(1045,'Patna','IND',0),(1046,'Srinagar','IND',0),(1047,'Agra','IND',0),(1048,'Coimbatore','IND',0),(1049,'Thane (Thana)','IND',0),(1050,'Allahabad','IND',0),(1051,'Meerut','IND',0),(1052,'Vishakhapatnam','IND',0),(1053,'Jabalpur','IND',0),(1054,'Amritsar','IND',0),(1055,'Faridabad','IND',0),(1056,'Vijayawada','IND',0),(1057,'Gwalior','IND',0),(1058,'Jodhpur','IND',0),(1059,'Nashik (Nasik)','IND',0),(1060,'Hubli-Dharwad','IND',0),(1061,'Solapur (Sholapur)','IND',0),(1062,'Ranchi','IND',0),(1063,'Bareilly','IND',0),(1064,'Guwahati (Gauhati)','IND',0),(1065,'Shambajinagar (Aurangabad)','IND',0),(1066,'Cochin (Kochi)','IND',0),(1067,'Rajkot','IND',0),(1068,'Kota','IND',0),(1069,'Thiruvananthapuram (Trivandrum','IND',0),(1070,'Pimpri-Chinchwad','IND',0),(1071,'Jalandhar (Jullundur)','IND',0),(1072,'Gorakhpur','IND',0),(1073,'Chandigarh','IND',0),(1074,'Mysore','IND',0),(1075,'Aligarh','IND',0),(1076,'Guntur','IND',0),(1077,'Jamshedpur','IND',0),(1078,'Ghaziabad','IND',0),(1079,'Warangal','IND',0),(1080,'Raipur','IND',0),(1081,'Moradabad','IND',0),(1082,'Durgapur','IND',0),(1083,'Amravati','IND',0),(1084,'Calicut (Kozhikode)','IND',0),(1085,'Bikaner','IND',0),(1086,'Bhubaneswar','IND',0),(1087,'Kolhapur','IND',0),(1088,'Kataka (Cuttack)','IND',0),(1089,'Ajmer','IND',0),(1090,'Bhavnagar','IND',0),(1091,'Tiruchirapalli','IND',0),(1092,'Bhilai','IND',0),(1093,'Bhiwandi','IND',0),(1094,'Saharanpur','IND',0),(1095,'Ulhasnagar','IND',0),(1096,'Salem','IND',0),(1097,'Ujjain','IND',0),(1098,'Malegaon','IND',0),(1099,'Jamnagar','IND',0),(1100,'Bokaro Steel City','IND',0),(1101,'Akola','IND',0),(1102,'Belgaum','IND',0),(1103,'Rajahmundry','IND',0),(1104,'Nellore','IND',0),(1105,'Udaipur','IND',0),(1106,'New Bombay','IND',0),(1107,'Bhatpara','IND',0),(1108,'Gulbarga','IND',0),(1109,'New Delhi','IND',0),(1110,'Jhansi','IND',0),(1111,'Gaya','IND',0),(1112,'Kakinada','IND',0),(1113,'Dhule (Dhulia)','IND',0),(1114,'Panihati','IND',0),(1115,'Nanded (Nander)','IND',0),(1116,'Mangalore','IND',0),(1117,'Dehra Dun','IND',0),(1118,'Kamarhati','IND',0),(1119,'Davangere','IND',0),(1120,'Asansol','IND',0),(1121,'Bhagalpur','IND',0),(1122,'Bellary','IND',0),(1123,'Barddhaman (Burdwan)','IND',0),(1124,'Rampur','IND',0),(1125,'Jalgaon','IND',0),(1126,'Muzaffarpur','IND',0),(1127,'Nizamabad','IND',0),(1128,'Muzaffarnagar','IND',0),(1129,'Patiala','IND',0),(1130,'Shahjahanpur','IND',0),(1131,'Kurnool','IND',0),(1132,'Tiruppur (Tirupper)','IND',0),(1133,'Rohtak','IND',0),(1134,'South Dum Dum','IND',0),(1135,'Mathura','IND',0),(1136,'Chandrapur','IND',0),(1137,'Barahanagar (Baranagar)','IND',0),(1138,'Darbhanga','IND',0),(1139,'Siliguri (Shiliguri)','IND',0),(1140,'Raurkela','IND',0),(1141,'Ambattur','IND',0),(1142,'Panipat','IND',0),(1143,'Firozabad','IND',0),(1144,'Ichalkaranji','IND',0),(1145,'Jammu','IND',0),(1146,'Ramagundam','IND',0),(1147,'Eluru','IND',0),(1148,'Brahmapur','IND',0),(1149,'Alwar','IND',0),(1150,'Pondicherry','IND',0),(1151,'Thanjavur','IND',0),(1152,'Bihar Sharif','IND',0),(1153,'Tuticorin','IND',0),(1154,'Imphal','IND',0),(1155,'Latur','IND',0),(1156,'Sagar','IND',0),(1157,'Farrukhabad-cum-Fatehgarh','IND',0),(1158,'Sangli','IND',0),(1159,'Parbhani','IND',0),(1160,'Nagar Coil','IND',0),(1161,'Bijapur','IND',0),(1162,'Kukatpalle','IND',0),(1163,'Bally','IND',0),(1164,'Bhilwara','IND',0),(1165,'Ratlam','IND',0),(1166,'Avadi','IND',0),(1167,'Dindigul','IND',0),(1168,'Ahmadnagar','IND',0),(1169,'Bilaspur','IND',0),(1170,'Shimoga','IND',0),(1171,'Kharagpur','IND',0),(1172,'Mira Bhayandar','IND',0),(1173,'Vellore','IND',0),(1174,'Jalna','IND',0),(1175,'Burnpur','IND',0),(1176,'Anantapur','IND',0),(1177,'Allappuzha (Alleppey)','IND',0),(1178,'Tirupati','IND',0),(1179,'Karnal','IND',0),(1180,'Burhanpur','IND',0),(1181,'Hisar (Hissar)','IND',0),(1182,'Tiruvottiyur','IND',0),(1183,'Mirzapur-cum-Vindhyachal','IND',0),(1184,'Secunderabad','IND',0),(1185,'Nadiad','IND',0),(1186,'Dewas','IND',0),(1187,'Murwara (Katni)','IND',0),(1188,'Ganganagar','IND',0),(1189,'Vizianagaram','IND',0),(1190,'Erode','IND',0),(1191,'Machilipatnam (Masulipatam)','IND',0),(1192,'Bhatinda (Bathinda)','IND',0),(1193,'Raichur','IND',0),(1194,'Agartala','IND',0),(1195,'Arrah (Ara)','IND',0),(1196,'Satna','IND',0),(1197,'Lalbahadur Nagar','IND',0),(1198,'Aizawl','IND',0),(1199,'Uluberia','IND',0),(1200,'Katihar','IND',0),(1201,'Cuddalore','IND',0),(1202,'Hugli-Chinsurah','IND',0),(1203,'Dhanbad','IND',0),(1204,'Raiganj','IND',0),(1205,'Sambhal','IND',0),(1206,'Durg','IND',0),(1207,'Munger (Monghyr)','IND',0),(1208,'Kanchipuram','IND',0),(1209,'North Dum Dum','IND',0),(1210,'Karimnagar','IND',0),(1211,'Bharatpur','IND',0),(1212,'Sikar','IND',0),(1213,'Hardwar (Haridwar)','IND',0),(1214,'Dabgram','IND',0),(1215,'Morena','IND',0),(1216,'Noida','IND',0),(1217,'Hapur','IND',0),(1218,'Bhusawal','IND',0),(1219,'Khandwa','IND',0),(1220,'Yamuna Nagar','IND',0),(1221,'Sonipat (Sonepat)','IND',0),(1222,'Tenali','IND',0),(1223,'Raurkela Civil Township','IND',0),(1224,'Kollam (Quilon)','IND',0),(1225,'Kumbakonam','IND',0),(1226,'Ingraj Bazar (English Bazar)','IND',0),(1227,'Timkur','IND',0),(1228,'Amroha','IND',0),(1229,'Serampore','IND',0),(1230,'Chapra','IND',0),(1231,'Pali','IND',0),(1232,'Maunath Bhanjan','IND',0),(1233,'Adoni','IND',0),(1234,'Jaunpur','IND',0),(1235,'Tirunelveli','IND',0),(1236,'Bahraich','IND',0),(1237,'Gadag Betigeri','IND',0),(1238,'Proddatur','IND',0),(1239,'Chittoor','IND',0),(1240,'Barrackpur','IND',0),(1241,'Bharuch (Broach)','IND',0),(1242,'Naihati','IND',0),(1243,'Shillong','IND',0),(1244,'Sambalpur','IND',0),(1245,'Junagadh','IND',0),(1246,'Rae Bareli','IND',0),(1247,'Rewa','IND',0),(1248,'Gurgaon','IND',0),(1249,'Khammam','IND',0),(1250,'Bulandshahr','IND',0),(1251,'Navsari','IND',0),(1252,'Malkajgiri','IND',0),(1253,'Midnapore (Medinipur)','IND',0),(1254,'Miraj','IND',0),(1255,'Raj Nandgaon','IND',0),(1256,'Alandur','IND',0),(1257,'Puri','IND',0),(1258,'Navadwip','IND',0),(1259,'Sirsa','IND',0),(1260,'Korba','IND',0),(1261,'Faizabad','IND',0),(1262,'Etawah','IND',0),(1263,'Pathankot','IND',0),(1264,'Gandhinagar','IND',0),(1265,'Palghat (Palakkad)','IND',0),(1266,'Veraval','IND',0),(1267,'Hoshiarpur','IND',0),(1268,'Ambala','IND',0),(1269,'Sitapur','IND',0),(1270,'Bhiwani','IND',0),(1271,'Cuddapah','IND',0),(1272,'Bhimavaram','IND',0),(1273,'Krishnanagar','IND',0),(1274,'Chandannagar','IND',0),(1275,'Mandya','IND',0),(1276,'Dibrugarh','IND',0),(1277,'Nandyal','IND',0),(1278,'Balurghat','IND',0),(1279,'Neyveli','IND',0),(1280,'Fatehpur','IND',0),(1281,'Mahbubnagar','IND',0),(1282,'Budaun','IND',0),(1283,'Porbandar','IND',0),(1284,'Silchar','IND',0),(1285,'Berhampore (Baharampur)','IND',0),(1286,'Purnea (Purnia)','IND',0),(1287,'Bankura','IND',0),(1288,'Rajapalaiyam','IND',0),(1289,'Titagarh','IND',0),(1290,'Halisahar','IND',0),(1291,'Hathras','IND',0),(1292,'Bhir (Bid)','IND',0),(1293,'Pallavaram','IND',0),(1294,'Anand','IND',0),(1295,'Mango','IND',0),(1296,'Santipur','IND',0),(1297,'Bhind','IND',0),(1298,'Gondiya','IND',0),(1299,'Tiruvannamalai','IND',0),(1300,'Yeotmal (Yavatmal)','IND',0),(1301,'Kulti-Barakar','IND',0),(1302,'Moga','IND',0),(1303,'Shivapuri','IND',0),(1304,'Bidar','IND',0),(1305,'Guntakal','IND',0),(1306,'Unnao','IND',0),(1307,'Barasat','IND',0),(1308,'Tambaram','IND',0),(1309,'Abohar','IND',0),(1310,'Pilibhit','IND',0),(1311,'Valparai','IND',0),(1312,'Gonda','IND',0),(1313,'Surendranagar','IND',0),(1314,'Qutubullapur','IND',0),(1315,'Beawar','IND',0),(1316,'Hindupur','IND',0),(1317,'Gandhidham','IND',0),(1318,'Haldwani-cum-Kathgodam','IND',0),(1319,'Tellicherry (Thalassery)','IND',0),(1320,'Wardha','IND',0),(1321,'Rishra','IND',0),(1322,'Bhuj','IND',0),(1323,'Modinagar','IND',0),(1324,'Gudivada','IND',0),(1325,'Basirhat','IND',0),(1326,'Uttarpara-Kotrung','IND',0),(1327,'Ongole','IND',0),(1328,'North Barrackpur','IND',0),(1329,'Guna','IND',0),(1330,'Haldia','IND',0),(1331,'Habra','IND',0),(1332,'Kanchrapara','IND',0),(1333,'Tonk','IND',0),(1334,'Champdani','IND',0),(1335,'Orai','IND',0),(1336,'Pudukkottai','IND',0),(1337,'Sasaram','IND',0),(1338,'Hazaribag','IND',0),(1339,'Palayankottai','IND',0),(1340,'Banda','IND',0),(1341,'Godhra','IND',0),(1342,'Hospet','IND',0),(1343,'Ashoknagar-Kalyangarh','IND',0),(1344,'Achalpur','IND',0),(1345,'Patan','IND',0),(1346,'Mandasor','IND',0),(1347,'Damoh','IND',0),(1348,'Satara','IND',0),(1349,'Meerut Cantonment','IND',0),(1350,'Dehri','IND',0),(1351,'Delhi Cantonment','IND',0),(1352,'Chhindwara','IND',0),(1353,'Bansberia','IND',0),(1354,'Nagaon','IND',0),(1355,'Kanpur Cantonment','IND',0),(1356,'Vidisha','IND',0),(1357,'Bettiah','IND',0),(1358,'Purulia','IND',0),(1359,'Hassan','IND',0),(1360,'Ambala Sadar','IND',0),(1361,'Baidyabati','IND',0),(1362,'Morvi','IND',0),(1363,'Raigarh','IND',0),(1364,'Vejalpur','IND',0),(1365,'Baghdad','IRQ',0),(1366,'Mosul','IRQ',0),(1367,'Irbil','IRQ',0),(1368,'Kirkuk','IRQ',0),(1369,'Basra','IRQ',0),(1370,'al-Sulaymaniya','IRQ',0),(1371,'al-Najaf','IRQ',0),(1372,'Karbala','IRQ',0),(1373,'al-Hilla','IRQ',0),(1374,'al-Nasiriya','IRQ',0),(1375,'al-Amara','IRQ',0),(1376,'al-Diwaniya','IRQ',0),(1377,'al-Ramadi','IRQ',0),(1378,'al-Kut','IRQ',0),(1379,'Baquba','IRQ',0),(1380,'Teheran','IRN',0),(1381,'Mashhad','IRN',0),(1382,'Esfahan','IRN',0),(1383,'Tabriz','IRN',0),(1384,'Shiraz','IRN',0),(1385,'Karaj','IRN',0),(1386,'Ahvaz','IRN',0),(1387,'Qom','IRN',0),(1388,'Kermanshah','IRN',0),(1389,'Urmia','IRN',0),(1390,'Zahedan','IRN',0),(1391,'Rasht','IRN',0),(1392,'Hamadan','IRN',0),(1393,'Kerman','IRN',0),(1394,'Arak','IRN',0),(1395,'Ardebil','IRN',0),(1396,'Yazd','IRN',0),(1397,'Qazvin','IRN',0),(1398,'Zanjan','IRN',0),(1399,'Sanandaj','IRN',0),(1400,'Bandar-e-Abbas','IRN',0),(1401,'Khorramabad','IRN',0),(1402,'Eslamshahr','IRN',0),(1403,'Borujerd','IRN',0),(1404,'Abadan','IRN',0),(1405,'Dezful','IRN',0),(1406,'Kashan','IRN',0),(1407,'Sari','IRN',0),(1408,'Gorgan','IRN',0),(1409,'Najafabad','IRN',0),(1410,'Sabzevar','IRN',0),(1411,'Khomeynishahr','IRN',0),(1412,'Amol','IRN',0),(1413,'Neyshabur','IRN',0),(1414,'Babol','IRN',0),(1415,'Khoy','IRN',0),(1416,'Malayer','IRN',0),(1417,'Bushehr','IRN',0),(1418,'Qaemshahr','IRN',0),(1419,'Qarchak','IRN',0),(1420,'Qods','IRN',0),(1421,'Sirjan','IRN',0),(1422,'Bojnurd','IRN',0),(1423,'Maragheh','IRN',0),(1424,'Birjand','IRN',0),(1425,'Ilam','IRN',0),(1426,'Bukan','IRN',0),(1427,'Masjed-e-Soleyman','IRN',0),(1428,'Saqqez','IRN',0),(1429,'Gonbad-e Qabus','IRN',0),(1430,'Saveh','IRN',0),(1431,'Mahabad','IRN',0),(1432,'Varamin','IRN',0),(1433,'Andimeshk','IRN',0),(1434,'Khorramshahr','IRN',0),(1435,'Shahrud','IRN',0),(1436,'Marv Dasht','IRN',0),(1437,'Zabol','IRN',0),(1438,'Shahr-e Kord','IRN',0),(1439,'Bandar-e Anzali','IRN',0),(1440,'Rafsanjan','IRN',0),(1441,'Marand','IRN',0),(1442,'Torbat-e Heydariyeh','IRN',0),(1443,'Jahrom','IRN',0),(1444,'Semnan','IRN',0),(1445,'Miandoab','IRN',0),(1446,'Qomsheh','IRN',0),(1447,'Dublin','IRL',0),(1448,'Cork','IRL',0),(1449,'Reykjavík','ISL',0),(1450,'Jerusalem','ISR',0),(1451,'Tel Aviv-Jaffa','ISR',0),(1452,'Haifa','ISR',0),(1453,'Rishon Le Ziyyon','ISR',0),(1454,'Beerseba','ISR',0),(1455,'Holon','ISR',0),(1456,'Petah Tiqwa','ISR',0),(1457,'Ashdod','ISR',0),(1458,'Netanya','ISR',0),(1459,'Bat Yam','ISR',0),(1460,'Bene Beraq','ISR',0),(1461,'Ramat Gan','ISR',0),(1462,'Ashqelon','ISR',0),(1463,'Rehovot','ISR',0),(1464,'Roma','ITA',0),(1465,'Milan','ITA',0),(1466,'Napoli','ITA',0),(1467,'Torino','ITA',0),(1468,'Palermo','ITA',0),(1469,'Genova','ITA',0),(1470,'Bologna','ITA',0),(1471,'Firenze','ITA',0),(1472,'Catania','ITA',0),(1473,'Bari','ITA',0),(1474,'Venezia','ITA',0),(1475,'Messina','ITA',0),(1476,'Verona','ITA',0),(1477,'Trieste','ITA',0),(1478,'Padova','ITA',0),(1479,'Taranto','ITA',0),(1480,'Brescia','ITA',0),(1481,'Reggio di Calabria','ITA',0),(1482,'Modena','ITA',0),(1483,'Prato','ITA',0),(1484,'Parma','ITA',0),(1485,'Cagliari','ITA',0),(1486,'Livorno','ITA',0),(1487,'Perugia','ITA',0),(1488,'Foggia','ITA',0),(1489,'Reggio nell´ Emilia','ITA',0),(1490,'Salerno','ITA',0),(1491,'Ravenna','ITA',0),(1492,'Ferrara','ITA',0),(1493,'Rimini','ITA',0),(1494,'Syrakusa','ITA',0),(1495,'Sassari','ITA',0),(1496,'Monza','ITA',0),(1497,'Bergamo','ITA',0),(1498,'Pescara','ITA',0),(1499,'Latina','ITA',0),(1500,'Vicenza','ITA',0),(1501,'Terni','ITA',0),(1502,'Forlì','ITA',0),(1503,'Trento','ITA',0),(1504,'Novara','ITA',0),(1505,'Piacenza','ITA',0),(1506,'Ancona','ITA',0),(1507,'Lecce','ITA',0),(1508,'Bolzano','ITA',0),(1509,'Catanzaro','ITA',0),(1510,'La Spezia','ITA',0),(1511,'Udine','ITA',0),(1512,'Torre del Greco','ITA',0),(1513,'Andria','ITA',0),(1514,'Brindisi','ITA',0),(1515,'Giugliano in Campania','ITA',0),(1516,'Pisa','ITA',0),(1517,'Barletta','ITA',0),(1518,'Arezzo','ITA',0),(1519,'Alessandria','ITA',0),(1520,'Cesena','ITA',0),(1521,'Pesaro','ITA',0),(1522,'Dili','TMP',0),(1523,'Wien','AUT',0),(1524,'Graz','AUT',0),(1525,'Linz','AUT',0),(1526,'Salzburg','AUT',0),(1527,'Innsbruck','AUT',0),(1528,'Klagenfurt','AUT',0),(1529,'Spanish Town','JAM',0),(1530,'Kingston','JAM',0),(1531,'Portmore','JAM',0),(1532,'Tokyo','JPN',0),(1533,'Jokohama [Yokohama]','JPN',0),(1534,'Osaka','JPN',0),(1535,'Nagoya','JPN',0),(1536,'Sapporo','JPN',0),(1537,'Kioto','JPN',0),(1538,'Kobe','JPN',0),(1539,'Fukuoka','JPN',0),(1540,'Kawasaki','JPN',0),(1541,'Hiroshima','JPN',0),(1542,'Kitakyushu','JPN',0),(1543,'Sendai','JPN',0),(1544,'Chiba','JPN',0),(1545,'Sakai','JPN',0),(1546,'Kumamoto','JPN',0),(1547,'Okayama','JPN',0),(1548,'Sagamihara','JPN',0),(1549,'Hamamatsu','JPN',0),(1550,'Kagoshima','JPN',0),(1551,'Funabashi','JPN',0),(1552,'Higashiosaka','JPN',0),(1553,'Hachioji','JPN',0),(1554,'Niigata','JPN',0),(1555,'Amagasaki','JPN',0),(1556,'Himeji','JPN',0),(1557,'Shizuoka','JPN',0),(1558,'Urawa','JPN',0),(1559,'Matsuyama','JPN',0),(1560,'Matsudo','JPN',0),(1561,'Kanazawa','JPN',0),(1562,'Kawaguchi','JPN',0),(1563,'Ichikawa','JPN',0),(1564,'Omiya','JPN',0),(1565,'Utsunomiya','JPN',0),(1566,'Oita','JPN',0),(1567,'Nagasaki','JPN',0),(1568,'Yokosuka','JPN',0),(1569,'Kurashiki','JPN',0),(1570,'Gifu','JPN',0),(1571,'Hirakata','JPN',0),(1572,'Nishinomiya','JPN',0),(1573,'Toyonaka','JPN',0),(1574,'Wakayama','JPN',0),(1575,'Fukuyama','JPN',0),(1576,'Fujisawa','JPN',0),(1577,'Asahikawa','JPN',0),(1578,'Machida','JPN',0),(1579,'Nara','JPN',0),(1580,'Takatsuki','JPN',0),(1581,'Iwaki','JPN',0),(1582,'Nagano','JPN',0),(1583,'Toyohashi','JPN',0),(1584,'Toyota','JPN',0),(1585,'Suita','JPN',0),(1586,'Takamatsu','JPN',0),(1587,'Koriyama','JPN',0),(1588,'Okazaki','JPN',0),(1589,'Kawagoe','JPN',0),(1590,'Tokorozawa','JPN',0),(1591,'Toyama','JPN',0),(1592,'Kochi','JPN',0),(1593,'Kashiwa','JPN',0),(1594,'Akita','JPN',0),(1595,'Miyazaki','JPN',0),(1596,'Koshigaya','JPN',0),(1597,'Naha','JPN',0),(1598,'Aomori','JPN',0),(1599,'Hakodate','JPN',0),(1600,'Akashi','JPN',0),(1601,'Yokkaichi','JPN',0),(1602,'Fukushima','JPN',0),(1603,'Morioka','JPN',0),(1604,'Maebashi','JPN',0),(1605,'Kasugai','JPN',0),(1606,'Otsu','JPN',0),(1607,'Ichihara','JPN',0),(1608,'Yao','JPN',0),(1609,'Ichinomiya','JPN',0),(1610,'Tokushima','JPN',0),(1611,'Kakogawa','JPN',0),(1612,'Ibaraki','JPN',0),(1613,'Neyagawa','JPN',0),(1614,'Shimonoseki','JPN',0),(1615,'Yamagata','JPN',0),(1616,'Fukui','JPN',0),(1617,'Hiratsuka','JPN',0),(1618,'Mito','JPN',0),(1619,'Sasebo','JPN',0),(1620,'Hachinohe','JPN',0),(1621,'Takasaki','JPN',0),(1622,'Shimizu','JPN',0),(1623,'Kurume','JPN',0),(1624,'Fuji','JPN',0),(1625,'Soka','JPN',0),(1626,'Fuchu','JPN',0),(1627,'Chigasaki','JPN',0),(1628,'Atsugi','JPN',0),(1629,'Numazu','JPN',0),(1630,'Ageo','JPN',0),(1631,'Yamato','JPN',0),(1632,'Matsumoto','JPN',0),(1633,'Kure','JPN',0),(1634,'Takarazuka','JPN',0),(1635,'Kasukabe','JPN',0),(1636,'Chofu','JPN',0),(1637,'Odawara','JPN',0),(1638,'Kofu','JPN',0),(1639,'Kushiro','JPN',0),(1640,'Kishiwada','JPN',0),(1641,'Hitachi','JPN',0),(1642,'Nagaoka','JPN',0),(1643,'Itami','JPN',0),(1644,'Uji','JPN',0),(1645,'Suzuka','JPN',0),(1646,'Hirosaki','JPN',0),(1647,'Ube','JPN',0),(1648,'Kodaira','JPN',0),(1649,'Takaoka','JPN',0),(1650,'Obihiro','JPN',0),(1651,'Tomakomai','JPN',0),(1652,'Saga','JPN',0),(1653,'Sakura','JPN',0),(1654,'Kamakura','JPN',0),(1655,'Mitaka','JPN',0),(1656,'Izumi','JPN',0),(1657,'Hino','JPN',0),(1658,'Hadano','JPN',0),(1659,'Ashikaga','JPN',0),(1660,'Tsu','JPN',0),(1661,'Sayama','JPN',0),(1662,'Yachiyo','JPN',0),(1663,'Tsukuba','JPN',0),(1664,'Tachikawa','JPN',0),(1665,'Kumagaya','JPN',0),(1666,'Moriguchi','JPN',0),(1667,'Otaru','JPN',0),(1668,'Anjo','JPN',0),(1669,'Narashino','JPN',0),(1670,'Oyama','JPN',0),(1671,'Ogaki','JPN',0),(1672,'Matsue','JPN',0),(1673,'Kawanishi','JPN',0),(1674,'Hitachinaka','JPN',0),(1675,'Niiza','JPN',0),(1676,'Nagareyama','JPN',0),(1677,'Tottori','JPN',0),(1678,'Tama','JPN',0),(1679,'Iruma','JPN',0),(1680,'Ota','JPN',0),(1681,'Omuta','JPN',0),(1682,'Komaki','JPN',0),(1683,'Ome','JPN',0),(1684,'Kadoma','JPN',0),(1685,'Yamaguchi','JPN',0),(1686,'Higashimurayama','JPN',0),(1687,'Yonago','JPN',0),(1688,'Matsubara','JPN',0),(1689,'Musashino','JPN',0),(1690,'Tsuchiura','JPN',0),(1691,'Joetsu','JPN',0),(1692,'Miyakonojo','JPN',0),(1693,'Misato','JPN',0),(1694,'Kakamigahara','JPN',0),(1695,'Daito','JPN',0),(1696,'Seto','JPN',0),(1697,'Kariya','JPN',0),(1698,'Urayasu','JPN',0),(1699,'Beppu','JPN',0),(1700,'Niihama','JPN',0),(1701,'Minoo','JPN',0),(1702,'Fujieda','JPN',0),(1703,'Abiko','JPN',0),(1704,'Nobeoka','JPN',0),(1705,'Tondabayashi','JPN',0),(1706,'Ueda','JPN',0),(1707,'Kashihara','JPN',0),(1708,'Matsusaka','JPN',0),(1709,'Isesaki','JPN',0),(1710,'Zama','JPN',0),(1711,'Kisarazu','JPN',0),(1712,'Noda','JPN',0),(1713,'Ishinomaki','JPN',0),(1714,'Fujinomiya','JPN',0),(1715,'Kawachinagano','JPN',0),(1716,'Imabari','JPN',0),(1717,'Aizuwakamatsu','JPN',0),(1718,'Higashihiroshima','JPN',0),(1719,'Habikino','JPN',0),(1720,'Ebetsu','JPN',0),(1721,'Hofu','JPN',0),(1722,'Kiryu','JPN',0),(1723,'Okinawa','JPN',0),(1724,'Yaizu','JPN',0),(1725,'Toyokawa','JPN',0),(1726,'Ebina','JPN',0),(1727,'Asaka','JPN',0),(1728,'Higashikurume','JPN',0),(1729,'Ikoma','JPN',0),(1730,'Kitami','JPN',0),(1731,'Koganei','JPN',0),(1732,'Iwatsuki','JPN',0),(1733,'Mishima','JPN',0),(1734,'Handa','JPN',0),(1735,'Muroran','JPN',0),(1736,'Komatsu','JPN',0),(1737,'Yatsushiro','JPN',0),(1738,'Iida','JPN',0),(1739,'Tokuyama','JPN',0),(1740,'Kokubunji','JPN',0),(1741,'Akishima','JPN',0),(1742,'Iwakuni','JPN',0),(1743,'Kusatsu','JPN',0),(1744,'Kuwana','JPN',0),(1745,'Sanda','JPN',0),(1746,'Hikone','JPN',0),(1747,'Toda','JPN',0),(1748,'Tajimi','JPN',0),(1749,'Ikeda','JPN',0),(1750,'Fukaya','JPN',0),(1751,'Ise','JPN',0),(1752,'Sakata','JPN',0),(1753,'Kasuga','JPN',0),(1754,'Kamagaya','JPN',0),(1755,'Tsuruoka','JPN',0),(1756,'Hoya','JPN',0),(1757,'Nishio','JPN',0),(1758,'Tokai','JPN',0),(1759,'Inazawa','JPN',0),(1760,'Sakado','JPN',0),(1761,'Isehara','JPN',0),(1762,'Takasago','JPN',0),(1763,'Fujimi','JPN',0),(1764,'Urasoe','JPN',0),(1765,'Yonezawa','JPN',0),(1766,'Konan','JPN',0),(1767,'Yamatokoriyama','JPN',0),(1768,'Maizuru','JPN',0),(1769,'Onomichi','JPN',0),(1770,'Higashimatsuyama','JPN',0),(1771,'Kimitsu','JPN',0),(1772,'Isahaya','JPN',0),(1773,'Kanuma','JPN',0),(1774,'Izumisano','JPN',0),(1775,'Kameoka','JPN',0),(1776,'Mobara','JPN',0),(1777,'Narita','JPN',0),(1778,'Kashiwazaki','JPN',0),(1779,'Tsuyama','JPN',0),(1780,'Sanaa','YEM',0),(1781,'Aden','YEM',0),(1782,'Taizz','YEM',0),(1783,'Hodeida','YEM',0),(1784,'al-Mukalla','YEM',0),(1785,'Ibb','YEM',0),(1786,'Amman','JOR',0),(1787,'al-Zarqa','JOR',0),(1788,'Irbid','JOR',0),(1789,'al-Rusayfa','JOR',0),(1790,'Wadi al-Sir','JOR',0),(1791,'Flying Fish Cove','CXR',0),(1792,'Beograd','YUG',0),(1793,'Novi Sad','YUG',0),(1794,'Niš','YUG',0),(1795,'Priština','YUG',0),(1796,'Kragujevac','YUG',0),(1797,'Podgorica','YUG',0),(1798,'Subotica','YUG',0),(1799,'Prizren','YUG',0),(1800,'Phnom Penh','KHM',0),(1801,'Battambang','KHM',0),(1802,'Siem Reap','KHM',0),(1803,'Douala','CMR',0),(1804,'Yaoundé','CMR',0),(1805,'Garoua','CMR',0),(1806,'Maroua','CMR',0),(1807,'Bamenda','CMR',0),(1808,'Bafoussam','CMR',0),(1809,'Nkongsamba','CMR',0),(1810,'Montréal','CAN',0),(1811,'Calgary','CAN',0),(1812,'Toronto','CAN',0),(1813,'North York','CAN',0),(1814,'Winnipeg','CAN',0),(1815,'Edmonton','CAN',0),(1816,'Mississauga','CAN',0),(1817,'Scarborough','CAN',0),(1818,'Vancouver','CAN',0),(1819,'Etobicoke','CAN',0),(1820,'London','CAN',0),(1821,'Hamilton','CAN',0),(1822,'Ottawa','CAN',0),(1823,'Laval','CAN',0),(1824,'Surrey','CAN',0),(1825,'Brampton','CAN',0),(1826,'Windsor','CAN',0),(1827,'Saskatoon','CAN',0),(1828,'Kitchener','CAN',0),(1829,'Markham','CAN',0),(1830,'Regina','CAN',0),(1831,'Burnaby','CAN',0),(1832,'Québec','CAN',0),(1833,'York','CAN',0),(1834,'Richmond','CAN',0),(1835,'Vaughan','CAN',0),(1836,'Burlington','CAN',0),(1837,'Oshawa','CAN',0),(1838,'Oakville','CAN',0),(1839,'Saint Catharines','CAN',0),(1840,'Longueuil','CAN',0),(1841,'Richmond Hill','CAN',0),(1842,'Thunder Bay','CAN',0),(1843,'Nepean','CAN',0),(1844,'Cape Breton','CAN',0),(1845,'East York','CAN',0),(1846,'Halifax','CAN',0),(1847,'Cambridge','CAN',0),(1848,'Gloucester','CAN',0),(1849,'Abbotsford','CAN',0),(1850,'Guelph','CAN',0),(1851,'Saint John´s','CAN',0),(1852,'Coquitlam','CAN',0),(1853,'Saanich','CAN',0),(1854,'Gatineau','CAN',0),(1855,'Delta','CAN',0),(1856,'Sudbury','CAN',0),(1857,'Kelowna','CAN',0),(1858,'Barrie','CAN',0),(1859,'Praia','CPV',0),(1860,'Almaty','KAZ',0),(1861,'Qaraghandy','KAZ',0),(1862,'Shymkent','KAZ',0),(1863,'Taraz','KAZ',0),(1864,'Astana','KAZ',0),(1865,'Öskemen','KAZ',0),(1866,'Pavlodar','KAZ',0),(1867,'Semey','KAZ',0),(1868,'Aqtöbe','KAZ',0),(1869,'Qostanay','KAZ',0),(1870,'Petropavl','KAZ',0),(1871,'Oral','KAZ',0),(1872,'Temirtau','KAZ',0),(1873,'Qyzylorda','KAZ',0),(1874,'Aqtau','KAZ',0),(1875,'Atyrau','KAZ',0),(1876,'Ekibastuz','KAZ',0),(1877,'Kökshetau','KAZ',0),(1878,'Rudnyy','KAZ',0),(1879,'Taldyqorghan','KAZ',0),(1880,'Zhezqazghan','KAZ',0),(1881,'Nairobi','KEN',0),(1882,'Mombasa','KEN',0),(1883,'Kisumu','KEN',0),(1884,'Nakuru','KEN',0),(1885,'Machakos','KEN',0),(1886,'Eldoret','KEN',0),(1887,'Meru','KEN',0),(1888,'Nyeri','KEN',0),(1889,'Bangui','CAF',0),(1890,'Shanghai','CHN',0),(1891,'Peking','CHN',0),(1892,'Chongqing','CHN',0),(1893,'Tianjin','CHN',0),(1894,'Wuhan','CHN',0),(1895,'Harbin','CHN',0),(1896,'Shenyang','CHN',0),(1897,'Kanton [Guangzhou]','CHN',0),(1898,'Chengdu','CHN',0),(1899,'Nanking [Nanjing]','CHN',0),(1900,'Changchun','CHN',0),(1901,'Xi´an','CHN',0),(1902,'Dalian','CHN',0),(1903,'Qingdao','CHN',0),(1904,'Jinan','CHN',0),(1905,'Hangzhou','CHN',0),(1906,'Zhengzhou','CHN',0),(1907,'Shijiazhuang','CHN',0),(1908,'Taiyuan','CHN',0),(1909,'Kunming','CHN',0),(1910,'Changsha','CHN',0),(1911,'Nanchang','CHN',0),(1912,'Fuzhou','CHN',0),(1913,'Lanzhou','CHN',0),(1914,'Guiyang','CHN',0),(1915,'Ningbo','CHN',0),(1916,'Hefei','CHN',0),(1917,'Urumtši [Ürümqi]','CHN',0),(1918,'Anshan','CHN',0),(1919,'Fushun','CHN',0),(1920,'Nanning','CHN',0),(1921,'Zibo','CHN',0),(1922,'Qiqihar','CHN',0),(1923,'Jilin','CHN',0),(1924,'Tangshan','CHN',0),(1925,'Baotou','CHN',0),(1926,'Shenzhen','CHN',0),(1927,'Hohhot','CHN',0),(1928,'Handan','CHN',0),(1929,'Wuxi','CHN',0),(1930,'Xuzhou','CHN',0),(1931,'Datong','CHN',0),(1932,'Yichun','CHN',0),(1933,'Benxi','CHN',0),(1934,'Luoyang','CHN',0),(1935,'Suzhou','CHN',0),(1936,'Xining','CHN',0),(1937,'Huainan','CHN',0),(1938,'Jixi','CHN',0),(1939,'Daqing','CHN',0),(1940,'Fuxin','CHN',0),(1941,'Amoy [Xiamen]','CHN',0),(1942,'Liuzhou','CHN',0),(1943,'Shantou','CHN',0),(1944,'Jinzhou','CHN',0),(1945,'Mudanjiang','CHN',0),(1946,'Yinchuan','CHN',0),(1947,'Changzhou','CHN',0),(1948,'Zhangjiakou','CHN',0),(1949,'Dandong','CHN',0),(1950,'Hegang','CHN',0),(1951,'Kaifeng','CHN',0),(1952,'Jiamusi','CHN',0),(1953,'Liaoyang','CHN',0),(1954,'Hengyang','CHN',0),(1955,'Baoding','CHN',0),(1956,'Hunjiang','CHN',0),(1957,'Xinxiang','CHN',0),(1958,'Huangshi','CHN',0),(1959,'Haikou','CHN',0),(1960,'Yantai','CHN',0),(1961,'Bengbu','CHN',0),(1962,'Xiangtan','CHN',0),(1963,'Weifang','CHN',0),(1964,'Wuhu','CHN',0),(1965,'Pingxiang','CHN',0),(1966,'Yingkou','CHN',0),(1967,'Anyang','CHN',0),(1968,'Panzhihua','CHN',0),(1969,'Pingdingshan','CHN',0),(1970,'Xiangfan','CHN',0),(1971,'Zhuzhou','CHN',0),(1972,'Jiaozuo','CHN',0),(1973,'Wenzhou','CHN',0),(1974,'Zhangjiang','CHN',0),(1975,'Zigong','CHN',0),(1976,'Shuangyashan','CHN',0),(1977,'Zaozhuang','CHN',0),(1978,'Yakeshi','CHN',0),(1979,'Yichang','CHN',0),(1980,'Zhenjiang','CHN',0),(1981,'Huaibei','CHN',0),(1982,'Qinhuangdao','CHN',0),(1983,'Guilin','CHN',0),(1984,'Liupanshui','CHN',0),(1985,'Panjin','CHN',0),(1986,'Yangquan','CHN',0),(1987,'Jinxi','CHN',0),(1988,'Liaoyuan','CHN',0),(1989,'Lianyungang','CHN',0),(1990,'Xianyang','CHN',0),(1991,'Tai´an','CHN',0),(1992,'Chifeng','CHN',0),(1993,'Shaoguan','CHN',0),(1994,'Nantong','CHN',0),(1995,'Leshan','CHN',0),(1996,'Baoji','CHN',0),(1997,'Linyi','CHN',0),(1998,'Tonghua','CHN',0),(1999,'Siping','CHN',0),(2000,'Changzhi','CHN',0),(2001,'Tengzhou','CHN',0),(2002,'Chaozhou','CHN',0),(2003,'Yangzhou','CHN',0),(2004,'Dongwan','CHN',0),(2005,'Ma´anshan','CHN',0),(2006,'Foshan','CHN',0),(2007,'Yueyang','CHN',0),(2008,'Xingtai','CHN',0),(2009,'Changde','CHN',0),(2010,'Shihezi','CHN',0),(2011,'Yancheng','CHN',0),(2012,'Jiujiang','CHN',0),(2013,'Dongying','CHN',0),(2014,'Shashi','CHN',0),(2015,'Xintai','CHN',0),(2016,'Jingdezhen','CHN',0),(2017,'Tongchuan','CHN',0),(2018,'Zhongshan','CHN',0),(2019,'Shiyan','CHN',0),(2020,'Tieli','CHN',0),(2021,'Jining','CHN',0),(2022,'Wuhai','CHN',0),(2023,'Mianyang','CHN',0),(2024,'Luzhou','CHN',0),(2025,'Zunyi','CHN',0),(2026,'Shizuishan','CHN',0),(2027,'Neijiang','CHN',0),(2028,'Tongliao','CHN',0),(2029,'Tieling','CHN',0),(2030,'Wafangdian','CHN',0),(2031,'Anqing','CHN',0),(2032,'Shaoyang','CHN',0),(2033,'Laiwu','CHN',0),(2034,'Chengde','CHN',0),(2035,'Tianshui','CHN',0),(2036,'Nanyang','CHN',0),(2037,'Cangzhou','CHN',0),(2038,'Yibin','CHN',0),(2039,'Huaiyin','CHN',0),(2040,'Dunhua','CHN',0),(2041,'Yanji','CHN',0),(2042,'Jiangmen','CHN',0),(2043,'Tongling','CHN',0),(2044,'Suihua','CHN',0),(2045,'Gongziling','CHN',0),(2046,'Xiantao','CHN',0),(2047,'Chaoyang','CHN',0),(2048,'Ganzhou','CHN',0),(2049,'Huzhou','CHN',0),(2050,'Baicheng','CHN',0),(2051,'Shangzi','CHN',0),(2052,'Yangjiang','CHN',0),(2053,'Qitaihe','CHN',0),(2054,'Gejiu','CHN',0),(2055,'Jiangyin','CHN',0),(2056,'Hebi','CHN',0),(2057,'Jiaxing','CHN',0),(2058,'Wuzhou','CHN',0),(2059,'Meihekou','CHN',0),(2060,'Xuchang','CHN',0),(2061,'Liaocheng','CHN',0),(2062,'Haicheng','CHN',0),(2063,'Qianjiang','CHN',0),(2064,'Baiyin','CHN',0),(2065,'Bei´an','CHN',0),(2066,'Yixing','CHN',0),(2067,'Laizhou','CHN',0),(2068,'Qaramay','CHN',0),(2069,'Acheng','CHN',0),(2070,'Dezhou','CHN',0),(2071,'Nanping','CHN',0),(2072,'Zhaoqing','CHN',0),(2073,'Beipiao','CHN',0),(2074,'Fengcheng','CHN',0),(2075,'Fuyu','CHN',0),(2076,'Xinyang','CHN',0),(2077,'Dongtai','CHN',0),(2078,'Yuci','CHN',0),(2079,'Honghu','CHN',0),(2080,'Ezhou','CHN',0),(2081,'Heze','CHN',0),(2082,'Daxian','CHN',0),(2083,'Linfen','CHN',0),(2084,'Tianmen','CHN',0),(2085,'Yiyang','CHN',0),(2086,'Quanzhou','CHN',0),(2087,'Rizhao','CHN',0),(2088,'Deyang','CHN',0),(2089,'Guangyuan','CHN',0),(2090,'Changshu','CHN',0),(2091,'Zhangzhou','CHN',0),(2092,'Hailar','CHN',0),(2093,'Nanchong','CHN',0),(2094,'Jiutai','CHN',0),(2095,'Zhaodong','CHN',0),(2096,'Shaoxing','CHN',0),(2097,'Fuyang','CHN',0),(2098,'Maoming','CHN',0),(2099,'Qujing','CHN',0),(2100,'Ghulja','CHN',0),(2101,'Jiaohe','CHN',0),(2102,'Puyang','CHN',0),(2103,'Huadian','CHN',0),(2104,'Jiangyou','CHN',0),(2105,'Qashqar','CHN',0),(2106,'Anshun','CHN',0),(2107,'Fuling','CHN',0),(2108,'Xinyu','CHN',0),(2109,'Hanzhong','CHN',0),(2110,'Danyang','CHN',0),(2111,'Chenzhou','CHN',0),(2112,'Xiaogan','CHN',0),(2113,'Shangqiu','CHN',0),(2114,'Zhuhai','CHN',0),(2115,'Qingyuan','CHN',0),(2116,'Aqsu','CHN',0),(2117,'Jining','CHN',0),(2118,'Xiaoshan','CHN',0),(2119,'Zaoyang','CHN',0),(2120,'Xinghua','CHN',0),(2121,'Hami','CHN',0),(2122,'Huizhou','CHN',0),(2123,'Jinmen','CHN',0),(2124,'Sanming','CHN',0),(2125,'Ulanhot','CHN',0),(2126,'Korla','CHN',0),(2127,'Wanxian','CHN',0),(2128,'Rui´an','CHN',0),(2129,'Zhoushan','CHN',0),(2130,'Liangcheng','CHN',0),(2131,'Jiaozhou','CHN',0),(2132,'Taizhou','CHN',0),(2133,'Suzhou','CHN',0),(2134,'Yichun','CHN',0),(2135,'Taonan','CHN',0),(2136,'Pingdu','CHN',0),(2137,'Ji´an','CHN',0),(2138,'Longkou','CHN',0),(2139,'Langfang','CHN',0),(2140,'Zhoukou','CHN',0),(2141,'Suining','CHN',0),(2142,'Yulin','CHN',0),(2143,'Jinhua','CHN',0),(2144,'Liu´an','CHN',0),(2145,'Shuangcheng','CHN',0),(2146,'Suizhou','CHN',0),(2147,'Ankang','CHN',0),(2148,'Weinan','CHN',0),(2149,'Longjing','CHN',0),(2150,'Da´an','CHN',0),(2151,'Lengshuijiang','CHN',0),(2152,'Laiyang','CHN',0),(2153,'Xianning','CHN',0),(2154,'Dali','CHN',0),(2155,'Anda','CHN',0),(2156,'Jincheng','CHN',0),(2157,'Longyan','CHN',0),(2158,'Xichang','CHN',0),(2159,'Wendeng','CHN',0),(2160,'Hailun','CHN',0),(2161,'Binzhou','CHN',0),(2162,'Linhe','CHN',0),(2163,'Wuwei','CHN',0),(2164,'Duyun','CHN',0),(2165,'Mishan','CHN',0),(2166,'Shangrao','CHN',0),(2167,'Changji','CHN',0),(2168,'Meixian','CHN',0),(2169,'Yushu','CHN',0),(2170,'Tiefa','CHN',0),(2171,'Huai´an','CHN',0),(2172,'Leiyang','CHN',0),(2173,'Zalantun','CHN',0),(2174,'Weihai','CHN',0),(2175,'Loudi','CHN',0),(2176,'Qingzhou','CHN',0),(2177,'Qidong','CHN',0),(2178,'Huaihua','CHN',0),(2179,'Luohe','CHN',0),(2180,'Chuzhou','CHN',0),(2181,'Kaiyuan','CHN',0),(2182,'Linqing','CHN',0),(2183,'Chaohu','CHN',0),(2184,'Laohekou','CHN',0),(2185,'Dujiangyan','CHN',0),(2186,'Zhumadian','CHN',0),(2187,'Linchuan','CHN',0),(2188,'Jiaonan','CHN',0),(2189,'Sanmenxia','CHN',0),(2190,'Heyuan','CHN',0),(2191,'Manzhouli','CHN',0),(2192,'Lhasa','CHN',0),(2193,'Lianyuan','CHN',0),(2194,'Kuytun','CHN',0),(2195,'Puqi','CHN',0),(2196,'Hongjiang','CHN',0),(2197,'Qinzhou','CHN',0),(2198,'Renqiu','CHN',0),(2199,'Yuyao','CHN',0),(2200,'Guigang','CHN',0),(2201,'Kaili','CHN',0),(2202,'Yan´an','CHN',0),(2203,'Beihai','CHN',0),(2204,'Xuangzhou','CHN',0),(2205,'Quzhou','CHN',0),(2206,'Yong´an','CHN',0),(2207,'Zixing','CHN',0),(2208,'Liyang','CHN',0),(2209,'Yizheng','CHN',0),(2210,'Yumen','CHN',0),(2211,'Liling','CHN',0),(2212,'Yuncheng','CHN',0),(2213,'Shanwei','CHN',0),(2214,'Cixi','CHN',0),(2215,'Yuanjiang','CHN',0),(2216,'Bozhou','CHN',0),(2217,'Jinchang','CHN',0),(2218,'Fu´an','CHN',0),(2219,'Suqian','CHN',0),(2220,'Shishou','CHN',0),(2221,'Hengshui','CHN',0),(2222,'Danjiangkou','CHN',0),(2223,'Fujin','CHN',0),(2224,'Sanya','CHN',0),(2225,'Guangshui','CHN',0),(2226,'Huangshan','CHN',0),(2227,'Xingcheng','CHN',0),(2228,'Zhucheng','CHN',0),(2229,'Kunshan','CHN',0),(2230,'Haining','CHN',0),(2231,'Pingliang','CHN',0),(2232,'Fuqing','CHN',0),(2233,'Xinzhou','CHN',0),(2234,'Jieyang','CHN',0),(2235,'Zhangjiagang','CHN',0),(2236,'Tong Xian','CHN',0),(2237,'Ya´an','CHN',0),(2238,'Jinzhou','CHN',0),(2239,'Emeishan','CHN',0),(2240,'Enshi','CHN',0),(2241,'Bose','CHN',0),(2242,'Yuzhou','CHN',0),(2243,'Kaiyuan','CHN',0),(2244,'Tumen','CHN',0),(2245,'Putian','CHN',0),(2246,'Linhai','CHN',0),(2247,'Xilin Hot','CHN',0),(2248,'Shaowu','CHN',0),(2249,'Junan','CHN',0),(2250,'Huaying','CHN',0),(2251,'Pingyi','CHN',0),(2252,'Huangyan','CHN',0),(2253,'Bishkek','KGZ',0),(2254,'Osh','KGZ',0),(2255,'Bikenibeu','KIR',0),(2256,'Bairiki','KIR',0),(2295,'Moroni','COM',0),(2296,'Brazzaville','COG',0),(2297,'Pointe-Noire','COG',0),(2298,'Kinshasa','COD',0),(2299,'Lubumbashi','COD',0),(2300,'Mbuji-Mayi','COD',0),(2301,'Kolwezi','COD',0),(2302,'Kisangani','COD',0),(2303,'Kananga','COD',0),(2304,'Likasi','COD',0),(2305,'Bukavu','COD',0),(2306,'Kikwit','COD',0),(2307,'Tshikapa','COD',0),(2308,'Matadi','COD',0),(2309,'Mbandaka','COD',0),(2310,'Mwene-Ditu','COD',0),(2311,'Boma','COD',0),(2312,'Uvira','COD',0),(2313,'Butembo','COD',0),(2314,'Goma','COD',0),(2315,'Kalemie','COD',0),(2316,'Bantam','CCK',0),(2317,'West Island','CCK',0),(2318,'Pyongyang','PRK',0),(2319,'Hamhung','PRK',0),(2320,'Chongjin','PRK',0),(2321,'Nampo','PRK',0),(2322,'Sinuiju','PRK',0),(2323,'Wonsan','PRK',0),(2324,'Phyongsong','PRK',0),(2325,'Sariwon','PRK',0),(2326,'Haeju','PRK',0),(2327,'Kanggye','PRK',0),(2328,'Kimchaek','PRK',0),(2329,'Hyesan','PRK',0),(2330,'Kaesong','PRK',0),(2331,'Seoul','KOR',0),(2332,'Pusan','KOR',0),(2333,'Inchon','KOR',0),(2334,'Taegu','KOR',0),(2335,'Taejon','KOR',0),(2336,'Kwangju','KOR',0),(2337,'Ulsan','KOR',0),(2338,'Songnam','KOR',0),(2339,'Puchon','KOR',0),(2340,'Suwon','KOR',0),(2341,'Anyang','KOR',0),(2342,'Chonju','KOR',0),(2343,'Chongju','KOR',0),(2344,'Koyang','KOR',0),(2345,'Ansan','KOR',0),(2346,'Pohang','KOR',0),(2347,'Chang-won','KOR',0),(2348,'Masan','KOR',0),(2349,'Kwangmyong','KOR',0),(2350,'Chonan','KOR',0),(2351,'Chinju','KOR',0),(2352,'Iksan','KOR',0),(2353,'Pyongtaek','KOR',0),(2354,'Kumi','KOR',0),(2355,'Uijongbu','KOR',0),(2356,'Kyongju','KOR',0),(2357,'Kunsan','KOR',0),(2358,'Cheju','KOR',0),(2359,'Kimhae','KOR',0),(2360,'Sunchon','KOR',0),(2361,'Mokpo','KOR',0),(2362,'Yong-in','KOR',0),(2363,'Wonju','KOR',0),(2364,'Kunpo','KOR',0),(2365,'Chunchon','KOR',0),(2366,'Namyangju','KOR',0),(2367,'Kangnung','KOR',0),(2368,'Chungju','KOR',0),(2369,'Andong','KOR',0),(2370,'Yosu','KOR',0),(2371,'Kyongsan','KOR',0),(2372,'Paju','KOR',0),(2373,'Yangsan','KOR',0),(2374,'Ichon','KOR',0),(2375,'Asan','KOR',0),(2376,'Koje','KOR',0),(2377,'Kimchon','KOR',0),(2378,'Nonsan','KOR',0),(2379,'Kuri','KOR',0),(2380,'Chong-up','KOR',0),(2381,'Chechon','KOR',0),(2382,'Sosan','KOR',0),(2383,'Shihung','KOR',0),(2384,'Tong-yong','KOR',0),(2385,'Kongju','KOR',0),(2386,'Yongju','KOR',0),(2387,'Chinhae','KOR',0),(2388,'Sangju','KOR',0),(2389,'Poryong','KOR',0),(2390,'Kwang-yang','KOR',0),(2391,'Miryang','KOR',0),(2392,'Hanam','KOR',0),(2393,'Kimje','KOR',0),(2394,'Yongchon','KOR',0),(2395,'Sachon','KOR',0),(2396,'Uiwang','KOR',0),(2397,'Naju','KOR',0),(2398,'Namwon','KOR',0),(2399,'Tonghae','KOR',0),(2400,'Mun-gyong','KOR',0),(2401,'Athenai','GRC',0),(2402,'Thessaloniki','GRC',0),(2403,'Pireus','GRC',0),(2404,'Patras','GRC',0),(2405,'Peristerion','GRC',0),(2406,'Herakleion','GRC',0),(2407,'Kallithea','GRC',0),(2408,'Larisa','GRC',0),(2409,'Zagreb','HRV',0),(2410,'Split','HRV',0),(2411,'Rijeka','HRV',0),(2412,'Osijek','HRV',0),(2413,'La Habana','CUB',0),(2414,'Santiago de Cuba','CUB',0),(2415,'Camagüey','CUB',0),(2416,'Holguín','CUB',0),(2417,'Santa Clara','CUB',0),(2418,'Guantánamo','CUB',0),(2419,'Pinar del Río','CUB',0),(2420,'Bayamo','CUB',0),(2421,'Cienfuegos','CUB',0),(2422,'Victoria de las Tunas','CUB',0),(2423,'Matanzas','CUB',0),(2424,'Manzanillo','CUB',0),(2425,'Sancti-Spíritus','CUB',0),(2426,'Ciego de Ávila','CUB',0),(2427,'al-Salimiya','KWT',0),(2428,'Jalib al-Shuyukh','KWT',0),(2429,'Kuwait','KWT',0),(2430,'Nicosia','CYP',0),(2431,'Limassol','CYP',0),(2432,'Vientiane','LAO',0),(2433,'Savannakhet','LAO',0),(2434,'Riga','LVA',0),(2435,'Daugavpils','LVA',0),(2436,'Liepaja','LVA',0),(2437,'Maseru','LSO',0),(2438,'Beirut','LBN',0),(2439,'Tripoli','LBN',0),(2440,'Monrovia','LBR',0),(2441,'Tripoli','LBY',0),(2442,'Bengasi','LBY',0),(2443,'Misrata','LBY',0),(2444,'al-Zawiya','LBY',0),(2445,'Schaan','LIE',0),(2446,'Vaduz','LIE',0),(2447,'Vilnius','LTU',0),(2448,'Kaunas','LTU',0),(2449,'Klaipeda','LTU',0),(2450,'Šiauliai','LTU',0),(2451,'Panevezys','LTU',0),(2452,'Luxembourg [Luxemburg/Lëtzebuerg]','LUX',0),(2453,'El-Aaiún','ESH',0),(2454,'Macao','MAC',0),(2455,'Antananarivo','MDG',0),(2456,'Toamasina','MDG',0),(2457,'Antsirabé','MDG',0),(2458,'Mahajanga','MDG',0),(2459,'Fianarantsoa','MDG',0),(2460,'Skopje','MKD',0),(2461,'Blantyre','MWI',0),(2462,'Lilongwe','MWI',0),(2463,'Male','MDV',0),(2464,'Kuala Lumpur','MYS',0),(2465,'Ipoh','MYS',0),(2466,'Johor Baharu','MYS',0),(2467,'Petaling Jaya','MYS',0),(2468,'Kelang','MYS',0),(2469,'Kuala Terengganu','MYS',0),(2470,'Pinang','MYS',0),(2471,'Kota Bharu','MYS',0),(2472,'Kuantan','MYS',0),(2473,'Taiping','MYS',0),(2474,'Seremban','MYS',0),(2475,'Kuching','MYS',0),(2476,'Sibu','MYS',0),(2477,'Sandakan','MYS',0),(2478,'Alor Setar','MYS',0),(2479,'Selayang Baru','MYS',0),(2480,'Sungai Petani','MYS',0),(2481,'Shah Alam','MYS',0),(2482,'Bamako','MLI',0),(2483,'Birkirkara','MLT',0),(2484,'Valletta','MLT',0),(2485,'Casablanca','MAR',0),(2486,'Rabat','MAR',0),(2487,'Marrakech','MAR',0),(2488,'Fès','MAR',0),(2489,'Tanger','MAR',0),(2490,'Salé','MAR',0),(2491,'Meknès','MAR',0),(2492,'Oujda','MAR',0),(2493,'Kénitra','MAR',0),(2494,'Tétouan','MAR',0),(2495,'Safi','MAR',0),(2496,'Agadir','MAR',0),(2497,'Mohammedia','MAR',0),(2498,'Khouribga','MAR',0),(2499,'Beni-Mellal','MAR',0),(2500,'Témara','MAR',0),(2501,'El Jadida','MAR',0),(2502,'Nador','MAR',0),(2503,'Ksar el Kebir','MAR',0),(2504,'Settat','MAR',0),(2505,'Taza','MAR',0),(2506,'El Araich','MAR',0),(2507,'Dalap-Uliga-Darrit','MHL',0),(2508,'Fort-de-France','MTQ',0),(2509,'Nouakchott','MRT',0),(2510,'Nouâdhibou','MRT',0),(2511,'Port-Louis','MUS',0),(2512,'Beau Bassin-Rose Hill','MUS',0),(2513,'Vacoas-Phoenix','MUS',0),(2514,'Mamoutzou','MYT',0),(2515,'Ciudad de México','MEX',0),(2516,'Guadalajara','MEX',0),(2517,'Ecatepec de Morelos','MEX',0),(2518,'Puebla','MEX',0),(2519,'Nezahualcóyotl','MEX',0),(2520,'Juárez','MEX',0),(2521,'Tijuana','MEX',0),(2522,'León','MEX',0),(2523,'Monterrey','MEX',0),(2524,'Zapopan','MEX',0),(2525,'Naucalpan de Juárez','MEX',0),(2526,'Mexicali','MEX',0),(2527,'Culiacán','MEX',0),(2528,'Acapulco de Juárez','MEX',0),(2529,'Tlalnepantla de Baz','MEX',0),(2530,'Mérida','MEX',0),(2531,'Chihuahua','MEX',0),(2532,'San Luis Potosí','MEX',0),(2533,'Guadalupe','MEX',0),(2534,'Toluca','MEX',0),(2535,'Aguascalientes','MEX',0),(2536,'Querétaro','MEX',0),(2537,'Morelia','MEX',0),(2538,'Hermosillo','MEX',0),(2539,'Saltillo','MEX',0),(2540,'Torreón','MEX',0),(2541,'Centro (Villahermosa)','MEX',0),(2542,'San Nicolás de los Garza','MEX',0),(2543,'Durango','MEX',0),(2544,'Chimalhuacán','MEX',0),(2545,'Tlaquepaque','MEX',0),(2546,'Atizapán de Zaragoza','MEX',0),(2547,'Veracruz','MEX',0),(2548,'Cuautitlán Izcalli','MEX',0),(2549,'Irapuato','MEX',0),(2550,'Tuxtla Gutiérrez','MEX',0),(2551,'Tultitlán','MEX',0),(2552,'Reynosa','MEX',0),(2553,'Benito Juárez','MEX',0),(2554,'Matamoros','MEX',0),(2555,'Xalapa','MEX',0),(2556,'Celaya','MEX',0),(2557,'Mazatlán','MEX',0),(2558,'Ensenada','MEX',0),(2559,'Ahome','MEX',0),(2560,'Cajeme','MEX',0),(2561,'Cuernavaca','MEX',0),(2562,'Tonalá','MEX',0),(2563,'Valle de Chalco Solidaridad','MEX',0),(2564,'Nuevo Laredo','MEX',0),(2565,'Tepic','MEX',0),(2566,'Tampico','MEX',0),(2567,'Ixtapaluca','MEX',0),(2568,'Apodaca','MEX',0),(2569,'Guasave','MEX',0),(2570,'Gómez Palacio','MEX',0),(2571,'Tapachula','MEX',0),(2572,'Nicolás Romero','MEX',0),(2573,'Coatzacoalcos','MEX',0),(2574,'Uruapan','MEX',0),(2575,'Victoria','MEX',0),(2576,'Oaxaca de Juárez','MEX',0),(2577,'Coacalco de Berriozábal','MEX',0),(2578,'Pachuca de Soto','MEX',0),(2579,'General Escobedo','MEX',0),(2580,'Salamanca','MEX',0),(2581,'Santa Catarina','MEX',0),(2582,'Tehuacán','MEX',0),(2583,'Chalco','MEX',0),(2584,'Cárdenas','MEX',0),(2585,'Campeche','MEX',0),(2586,'La Paz','MEX',0),(2587,'Othón P. Blanco (Chetumal)','MEX',0),(2588,'Texcoco','MEX',0),(2589,'La Paz','MEX',0),(2590,'Metepec','MEX',0),(2591,'Monclova','MEX',0),(2592,'Huixquilucan','MEX',0),(2593,'Chilpancingo de los Bravo','MEX',0),(2594,'Puerto Vallarta','MEX',0),(2595,'Fresnillo','MEX',0),(2596,'Ciudad Madero','MEX',0),(2597,'Soledad de Graciano Sánchez','MEX',0),(2598,'San Juan del Río','MEX',0),(2599,'San Felipe del Progreso','MEX',0),(2600,'Córdoba','MEX',0),(2601,'Tecámac','MEX',0),(2602,'Ocosingo','MEX',0),(2603,'Carmen','MEX',0),(2604,'Lázaro Cárdenas','MEX',0),(2605,'Jiutepec','MEX',0),(2606,'Papantla','MEX',0),(2607,'Comalcalco','MEX',0),(2608,'Zamora','MEX',0),(2609,'Nogales','MEX',0),(2610,'Huimanguillo','MEX',0),(2611,'Cuautla','MEX',0),(2612,'Minatitlán','MEX',0),(2613,'Poza Rica de Hidalgo','MEX',0),(2614,'Ciudad Valles','MEX',0),(2615,'Navolato','MEX',0),(2616,'San Luis Río Colorado','MEX',0),(2617,'Pénjamo','MEX',0),(2618,'San Andrés Tuxtla','MEX',0),(2619,'Guanajuato','MEX',0),(2620,'Navojoa','MEX',0),(2621,'Zitácuaro','MEX',0),(2622,'Boca del Río','MEX',0),(2623,'Allende','MEX',0),(2624,'Silao','MEX',0),(2625,'Macuspana','MEX',0),(2626,'San Juan Bautista Tuxtepec','MEX',0),(2627,'San Cristóbal de las Casas','MEX',0),(2628,'Valle de Santiago','MEX',0),(2629,'Guaymas','MEX',0),(2630,'Colima','MEX',0),(2631,'Dolores Hidalgo','MEX',0),(2632,'Lagos de Moreno','MEX',0),(2633,'Piedras Negras','MEX',0),(2634,'Altamira','MEX',0),(2635,'Túxpam','MEX',0),(2636,'San Pedro Garza García','MEX',0),(2637,'Cuauhtémoc','MEX',0),(2638,'Manzanillo','MEX',0),(2639,'Iguala de la Independencia','MEX',0),(2640,'Zacatecas','MEX',0),(2641,'Tlajomulco de Zúñiga','MEX',0),(2642,'Tulancingo de Bravo','MEX',0),(2643,'Zinacantepec','MEX',0),(2644,'San Martín Texmelucan','MEX',0),(2645,'Tepatitlán de Morelos','MEX',0),(2646,'Martínez de la Torre','MEX',0),(2647,'Orizaba','MEX',0),(2648,'Apatzingán','MEX',0),(2649,'Atlixco','MEX',0),(2650,'Delicias','MEX',0),(2651,'Ixtlahuaca','MEX',0),(2652,'El Mante','MEX',0),(2653,'Lerdo','MEX',0),(2654,'Almoloya de Juárez','MEX',0),(2655,'Acámbaro','MEX',0),(2656,'Acuña','MEX',0),(2657,'Guadalupe','MEX',0),(2658,'Huejutla de Reyes','MEX',0),(2659,'Hidalgo','MEX',0),(2660,'Los Cabos','MEX',0),(2661,'Comitán de Domínguez','MEX',0),(2662,'Cunduacán','MEX',0),(2663,'Río Bravo','MEX',0),(2664,'Temapache','MEX',0),(2665,'Chilapa de Alvarez','MEX',0),(2666,'Hidalgo del Parral','MEX',0),(2667,'San Francisco del Rincón','MEX',0),(2668,'Taxco de Alarcón','MEX',0),(2669,'Zumpango','MEX',0),(2670,'San Pedro Cholula','MEX',0),(2671,'Lerma','MEX',0),(2672,'Tecomán','MEX',0),(2673,'Las Margaritas','MEX',0),(2674,'Cosoleacaque','MEX',0),(2675,'San Luis de la Paz','MEX',0),(2676,'José Azueta','MEX',0),(2677,'Santiago Ixcuintla','MEX',0),(2678,'San Felipe','MEX',0),(2679,'Tejupilco','MEX',0),(2680,'Tantoyuca','MEX',0),(2681,'Salvatierra','MEX',0),(2682,'Tultepec','MEX',0),(2683,'Temixco','MEX',0),(2684,'Matamoros','MEX',0),(2685,'Pánuco','MEX',0),(2686,'El Fuerte','MEX',0),(2687,'Tierra Blanca','MEX',0),(2688,'Weno','FSM',0),(2689,'Palikir','FSM',0),(2690,'Chisinau','MDA',0),(2691,'Tiraspol','MDA',0),(2692,'Balti','MDA',0),(2693,'Bender (Tîghina)','MDA',0),(2694,'Monte-Carlo','MCO',0),(2695,'Monaco-Ville','MCO',0),(2696,'Ulan Bator','MNG',0),(2697,'Plymouth','MSR',0),(2698,'Maputo','MOZ',0),(2699,'Matola','MOZ',0),(2700,'Beira','MOZ',0),(2701,'Nampula','MOZ',0),(2702,'Chimoio','MOZ',0),(2703,'Naçala-Porto','MOZ',0),(2704,'Quelimane','MOZ',0),(2705,'Mocuba','MOZ',0),(2706,'Tete','MOZ',0),(2707,'Xai-Xai','MOZ',0),(2708,'Gurue','MOZ',0),(2709,'Maxixe','MOZ',0),(2710,'Rangoon (Yangon)','MMR',0),(2711,'Mandalay','MMR',0),(2712,'Moulmein (Mawlamyine)','MMR',0),(2713,'Pegu (Bago)','MMR',0),(2714,'Bassein (Pathein)','MMR',0),(2715,'Monywa','MMR',0),(2716,'Sittwe (Akyab)','MMR',0),(2717,'Taunggyi (Taunggye)','MMR',0),(2718,'Meikhtila','MMR',0),(2719,'Mergui (Myeik)','MMR',0),(2720,'Lashio (Lasho)','MMR',0),(2721,'Prome (Pyay)','MMR',0),(2722,'Henzada (Hinthada)','MMR',0),(2723,'Myingyan','MMR',0),(2724,'Tavoy (Dawei)','MMR',0),(2725,'Pagakku (Pakokku)','MMR',0),(2726,'Windhoek','NAM',0),(2727,'Yangor','NRU',0),(2728,'Yaren','NRU',0),(2729,'Kathmandu','NPL',0),(2730,'Biratnagar','NPL',0),(2731,'Pokhara','NPL',0),(2732,'Lalitapur','NPL',0),(2733,'Birgunj','NPL',0),(2734,'Managua','NIC',0),(2735,'León','NIC',0),(2736,'Chinandega','NIC',0),(2737,'Masaya','NIC',0),(2738,'Niamey','NER',0),(2739,'Zinder','NER',0),(2740,'Maradi','NER',0),(2741,'Lagos','NGA',0),(2742,'Ibadan','NGA',0),(2743,'Ogbomosho','NGA',0),(2744,'Kano','NGA',0),(2745,'Oshogbo','NGA',0),(2746,'Ilorin','NGA',0),(2747,'Abeokuta','NGA',0),(2748,'Port Harcourt','NGA',0),(2749,'Zaria','NGA',0),(2750,'Ilesha','NGA',0),(2751,'Onitsha','NGA',0),(2752,'Iwo','NGA',0),(2753,'Ado-Ekiti','NGA',0),(2754,'Abuja','NGA',0),(2755,'Kaduna','NGA',0),(2756,'Mushin','NGA',0),(2757,'Maiduguri','NGA',0),(2758,'Enugu','NGA',0),(2759,'Ede','NGA',0),(2760,'Aba','NGA',0),(2761,'Ife','NGA',0),(2762,'Ila','NGA',0),(2763,'Oyo','NGA',0),(2764,'Ikerre','NGA',0),(2765,'Benin City','NGA',0),(2766,'Iseyin','NGA',0),(2767,'Katsina','NGA',0),(2768,'Jos','NGA',0),(2769,'Sokoto','NGA',0),(2770,'Ilobu','NGA',0),(2771,'Offa','NGA',0),(2772,'Ikorodu','NGA',0),(2773,'Ilawe-Ekiti','NGA',0),(2774,'Owo','NGA',0),(2775,'Ikirun','NGA',0),(2776,'Shaki','NGA',0),(2777,'Calabar','NGA',0),(2778,'Ondo','NGA',0),(2779,'Akure','NGA',0),(2780,'Gusau','NGA',0),(2781,'Ijebu-Ode','NGA',0),(2782,'Effon-Alaiye','NGA',0),(2783,'Kumo','NGA',0),(2784,'Shomolu','NGA',0),(2785,'Oka-Akoko','NGA',0),(2786,'Ikare','NGA',0),(2787,'Sapele','NGA',0),(2788,'Deba Habe','NGA',0),(2789,'Minna','NGA',0),(2790,'Warri','NGA',0),(2791,'Bida','NGA',0),(2792,'Ikire','NGA',0),(2793,'Makurdi','NGA',0),(2794,'Lafia','NGA',0),(2795,'Inisa','NGA',0),(2796,'Shagamu','NGA',0),(2797,'Awka','NGA',0),(2798,'Gombe','NGA',0),(2799,'Igboho','NGA',0),(2800,'Ejigbo','NGA',0),(2801,'Agege','NGA',0),(2802,'Ise-Ekiti','NGA',0),(2803,'Ugep','NGA',0),(2804,'Epe','NGA',0),(2805,'Alofi','NIU',0),(2806,'Kingston','NFK',0),(2807,'Oslo','NOR',0),(2808,'Bergen','NOR',0),(2809,'Trondheim','NOR',0),(2810,'Stavanger','NOR',0),(2811,'Bærum','NOR',0),(2812,'Abidjan','CIV',0),(2813,'Bouaké','CIV',0),(2814,'Yamoussoukro','CIV',0),(2815,'Daloa','CIV',0),(2816,'Korhogo','CIV',0),(2817,'al-Sib','OMN',0),(2818,'Salala','OMN',0),(2819,'Bawshar','OMN',0),(2820,'Suhar','OMN',0),(2821,'Masqat','OMN',0),(2822,'Karachi','PAK',0),(2823,'Lahore','PAK',0),(2824,'Faisalabad','PAK',0),(2825,'Rawalpindi','PAK',0),(2826,'Multan','PAK',0),(2827,'Hyderabad','PAK',0),(2828,'Gujranwala','PAK',0),(2829,'Peshawar','PAK',0),(2830,'Quetta','PAK',0),(2831,'Islamabad','PAK',0),(2832,'Sargodha','PAK',0),(2833,'Sialkot','PAK',0),(2834,'Bahawalpur','PAK',0),(2835,'Sukkur','PAK',0),(2836,'Jhang','PAK',0),(2837,'Sheikhupura','PAK',0),(2838,'Larkana','PAK',0),(2839,'Gujrat','PAK',0),(2840,'Mardan','PAK',0),(2841,'Kasur','PAK',0),(2842,'Rahim Yar Khan','PAK',0),(2843,'Sahiwal','PAK',0),(2844,'Okara','PAK',0),(2845,'Wah','PAK',0),(2846,'Dera Ghazi Khan','PAK',0),(2847,'Mirpur Khas','PAK',0),(2848,'Nawabshah','PAK',0),(2849,'Mingora','PAK',0),(2850,'Chiniot','PAK',0),(2851,'Kamoke','PAK',0),(2852,'Mandi Burewala','PAK',0),(2853,'Jhelum','PAK',0),(2854,'Sadiqabad','PAK',0),(2855,'Jacobabad','PAK',0),(2856,'Shikarpur','PAK',0),(2857,'Khanewal','PAK',0),(2858,'Hafizabad','PAK',0),(2859,'Kohat','PAK',0),(2860,'Muzaffargarh','PAK',0),(2861,'Khanpur','PAK',0),(2862,'Gojra','PAK',0),(2863,'Bahawalnagar','PAK',0),(2864,'Muridke','PAK',0),(2865,'Pak Pattan','PAK',0),(2866,'Abottabad','PAK',0),(2867,'Tando Adam','PAK',0),(2868,'Jaranwala','PAK',0),(2869,'Khairpur','PAK',0),(2870,'Chishtian Mandi','PAK',0),(2871,'Daska','PAK',0),(2872,'Dadu','PAK',0),(2873,'Mandi Bahauddin','PAK',0),(2874,'Ahmadpur East','PAK',0),(2875,'Kamalia','PAK',0),(2876,'Khuzdar','PAK',0),(2877,'Vihari','PAK',0),(2878,'Dera Ismail Khan','PAK',0),(2879,'Wazirabad','PAK',0),(2880,'Nowshera','PAK',0),(2881,'Koror','PLW',0),(2882,'Ciudad de Panamá','PAN',0),(2883,'San Miguelito','PAN',0),(2884,'Port Moresby','PNG',0),(2885,'Asunción','PRY',0),(2886,'Ciudad del Este','PRY',0),(2887,'San Lorenzo','PRY',0),(2888,'Lambaré','PRY',0),(2889,'Fernando de la Mora','PRY',0),(2890,'Lima','PER',0),(2891,'Arequipa','PER',0),(2892,'Trujillo','PER',0),(2893,'Chiclayo','PER',0),(2894,'Callao','PER',0),(2895,'Iquitos','PER',0),(2896,'Chimbote','PER',0),(2897,'Huancayo','PER',0),(2898,'Piura','PER',0),(2899,'Cusco','PER',0),(2900,'Pucallpa','PER',0),(2901,'Tacna','PER',0),(2902,'Ica','PER',0),(2903,'Sullana','PER',0),(2904,'Juliaca','PER',0),(2905,'Huánuco','PER',0),(2906,'Ayacucho','PER',0),(2907,'Chincha Alta','PER',0),(2908,'Cajamarca','PER',0),(2909,'Puno','PER',0),(2910,'Ventanilla','PER',0),(2911,'Castilla','PER',0),(2912,'Adamstown','PCN',0),(2913,'Garapan','MNP',0),(2914,'Lisboa','PRT',0),(2915,'Porto','PRT',0),(2916,'Amadora','PRT',0),(2917,'Coímbra','PRT',0),(2918,'Braga','PRT',0),(2919,'San Juan','PRI',0),(2920,'Bayamón','PRI',0),(2921,'Ponce','PRI',0),(2922,'Carolina','PRI',0),(2923,'Caguas','PRI',0),(2924,'Arecibo','PRI',0),(2925,'Guaynabo','PRI',0),(2926,'Mayagüez','PRI',0),(2927,'Toa Baja','PRI',0),(2928,'Warszawa','POL',0),(2929,'Lódz','POL',0),(2930,'Kraków','POL',0),(2931,'Wroclaw','POL',0),(2932,'Poznan','POL',0),(2933,'Gdansk','POL',0),(2934,'Szczecin','POL',0),(2935,'Bydgoszcz','POL',0),(2936,'Lublin','POL',0),(2937,'Katowice','POL',0),(2938,'Bialystok','POL',0),(2939,'Czestochowa','POL',0),(2940,'Gdynia','POL',0),(2941,'Sosnowiec','POL',0),(2942,'Radom','POL',0),(2943,'Kielce','POL',0),(2944,'Gliwice','POL',0),(2945,'Torun','POL',0),(2946,'Bytom','POL',0),(2947,'Zabrze','POL',0),(2948,'Bielsko-Biala','POL',0),(2949,'Olsztyn','POL',0),(2950,'Rzeszów','POL',0),(2951,'Ruda Slaska','POL',0),(2952,'Rybnik','POL',0),(2953,'Walbrzych','POL',0),(2954,'Tychy','POL',0),(2955,'Dabrowa Górnicza','POL',0),(2956,'Plock','POL',0),(2957,'Elblag','POL',0),(2958,'Opole','POL',0),(2959,'Gorzów Wielkopolski','POL',0),(2960,'Wloclawek','POL',0),(2961,'Chorzów','POL',0),(2962,'Tarnów','POL',0),(2963,'Zielona Góra','POL',0),(2964,'Koszalin','POL',0),(2965,'Legnica','POL',0),(2966,'Kalisz','POL',0),(2967,'Grudziadz','POL',0),(2968,'Slupsk','POL',0),(2969,'Jastrzebie-Zdrój','POL',0),(2970,'Jaworzno','POL',0),(2971,'Jelenia Góra','POL',0),(2972,'Malabo','GNQ',0),(2973,'Doha','QAT',0),(2974,'Paris','FRA',0),(2975,'Marseille','FRA',0),(2976,'Lyon','FRA',0),(2977,'Toulouse','FRA',0),(2978,'Nice','FRA',0),(2979,'Nantes','FRA',0),(2980,'Strasbourg','FRA',0),(2981,'Montpellier','FRA',0),(2982,'Bordeaux','FRA',0),(2983,'Rennes','FRA',0),(2984,'Le Havre','FRA',0),(2985,'Reims','FRA',0),(2986,'Lille','FRA',0),(2987,'St-Étienne','FRA',0),(2988,'Toulon','FRA',0),(2989,'Grenoble','FRA',0),(2990,'Angers','FRA',0),(2991,'Dijon','FRA',0),(2992,'Brest','FRA',0),(2993,'Le Mans','FRA',0),(2994,'Clermont-Ferrand','FRA',0),(2995,'Amiens','FRA',0),(2996,'Aix-en-Provence','FRA',0),(2997,'Limoges','FRA',0),(2998,'Nîmes','FRA',0),(2999,'Tours','FRA',0),(3000,'Villeurbanne','FRA',0),(3001,'Metz','FRA',0),(3002,'Besançon','FRA',0),(3003,'Caen','FRA',0),(3004,'Orléans','FRA',0),(3005,'Mulhouse','FRA',0),(3006,'Rouen','FRA',0),(3007,'Boulogne-Billancourt','FRA',0),(3008,'Perpignan','FRA',0),(3009,'Nancy','FRA',0),(3010,'Roubaix','FRA',0),(3011,'Argenteuil','FRA',0),(3012,'Tourcoing','FRA',0),(3013,'Montreuil','FRA',0),(3014,'Cayenne','GUF',0),(3015,'Faaa','PYF',0),(3016,'Papeete','PYF',0),(3017,'Saint-Denis','REU',0),(3018,'Bucuresti','ROM',0),(3019,'Iasi','ROM',0),(3020,'Constanta','ROM',0),(3021,'Cluj-Napoca','ROM',0),(3022,'Galati','ROM',0),(3023,'Timisoara','ROM',0),(3024,'Brasov','ROM',0),(3025,'Craiova','ROM',0),(3026,'Ploiesti','ROM',0),(3027,'Braila','ROM',0),(3028,'Oradea','ROM',0),(3029,'Bacau','ROM',0),(3030,'Pitesti','ROM',0),(3031,'Arad','ROM',0),(3032,'Sibiu','ROM',0),(3033,'Târgu Mures','ROM',0),(3034,'Baia Mare','ROM',0),(3035,'Buzau','ROM',0),(3036,'Satu Mare','ROM',0),(3037,'Botosani','ROM',0),(3038,'Piatra Neamt','ROM',0),(3039,'Râmnicu Vâlcea','ROM',0),(3040,'Suceava','ROM',0),(3041,'Drobeta-Turnu Severin','ROM',0),(3042,'Târgoviste','ROM',0),(3043,'Focsani','ROM',0),(3044,'Târgu Jiu','ROM',0),(3045,'Tulcea','ROM',0),(3046,'Resita','ROM',0),(3047,'Kigali','RWA',0),(3048,'Estocolmo','SWE',0),(3049,'Gothenburg [Göteborg]','SWE',0),(3050,'Malmö','SWE',0),(3051,'Uppsala','SWE',0),(3052,'Linköping','SWE',0),(3053,'Västerås','SWE',0),(3054,'Örebro','SWE',0),(3055,'Norrköping','SWE',0),(3056,'Helsingborg','SWE',0),(3057,'Jönköping','SWE',0),(3058,'Umeå','SWE',0),(3059,'Lund','SWE',0),(3060,'Borås','SWE',0),(3061,'Sundsvall','SWE',0),(3062,'Gävle','SWE',0),(3063,'Jamestown','SHN',0),(3064,'Basseterre','KNA',0),(3065,'Castries','LCA',0),(3066,'Kingstown','VCT',0),(3067,'Saint-Pierre','SPM',0),(3068,'Berlin','DEU',0),(3069,'Hamburg','DEU',0),(3070,'Munich','DEU',0),(3071,'Köln','DEU',0),(3072,'Frankfurt','DEU',0),(3073,'Essen','DEU',0),(3074,'Dortmund','DEU',0),(3075,'Stuttgart','DEU',0),(3076,'Düsseldorf','DEU',0),(3077,'Bremen','DEU',0),(3078,'Duisburg','DEU',0),(3079,'Hannover','DEU',0),(3080,'Leipzig','DEU',0),(3081,'Nürnberg','DEU',0),(3082,'Dresden','DEU',0),(3083,'Bochum','DEU',0),(3084,'Wuppertal','DEU',0),(3085,'Bielefeld','DEU',0),(3086,'Mannheim','DEU',0),(3087,'Bonn','DEU',0),(3088,'Gelsenkirchen','DEU',0),(3089,'Karlsruhe','DEU',0),(3090,'Wiesbaden','DEU',0),(3091,'Münster','DEU',0),(3092,'Mönchengladbach','DEU',0),(3093,'Chemnitz','DEU',0),(3094,'Augsburg','DEU',0),(3095,'Halle/Saale','DEU',0),(3096,'Braunschweig','DEU',0),(3097,'Aachen','DEU',0),(3098,'Krefeld','DEU',0),(3099,'Magdeburg','DEU',0),(3100,'Kiel','DEU',0),(3101,'Oberhausen','DEU',0),(3102,'Lübeck','DEU',0),(3103,'Hagen','DEU',0),(3104,'Rostock','DEU',0),(3105,'Freiburg im Breisgau','DEU',0),(3106,'Erfurt','DEU',0),(3107,'Kassel','DEU',0),(3108,'Saarbrücken','DEU',0),(3109,'Mainz','DEU',0),(3110,'Hamm','DEU',0),(3111,'Herne','DEU',0),(3112,'Mülheim an der Ruhr','DEU',0),(3113,'Solingen','DEU',0),(3114,'Osnabrück','DEU',0),(3115,'Ludwigshafen am Rhein','DEU',0),(3116,'Leverkusen','DEU',0),(3117,'Oldenburg','DEU',0),(3118,'Neuss','DEU',0),(3119,'Heidelberg','DEU',0),(3120,'Darmstadt','DEU',0),(3121,'Paderborn','DEU',0),(3122,'Potsdam','DEU',0),(3123,'Würzburg','DEU',0),(3124,'Regensburg','DEU',0),(3125,'Recklinghausen','DEU',0),(3126,'Göttingen','DEU',0),(3127,'Bremerhaven','DEU',0),(3128,'Wolfsburg','DEU',0),(3129,'Bottrop','DEU',0),(3130,'Remscheid','DEU',0),(3131,'Heilbronn','DEU',0),(3132,'Pforzheim','DEU',0),(3133,'Offenbach am Main','DEU',0),(3134,'Ulm','DEU',0),(3135,'Ingolstadt','DEU',0),(3136,'Gera','DEU',0),(3137,'Salzgitter','DEU',0),(3138,'Cottbus','DEU',0),(3139,'Reutlingen','DEU',0),(3140,'Fürth','DEU',0),(3141,'Siegen','DEU',0),(3142,'Koblenz','DEU',0),(3143,'Moers','DEU',0),(3144,'Bergisch Gladbach','DEU',0),(3145,'Zwickau','DEU',0),(3146,'Hildesheim','DEU',0),(3147,'Witten','DEU',0),(3148,'Schwerin','DEU',0),(3149,'Erlangen','DEU',0),(3150,'Kaiserslautern','DEU',0),(3151,'Trier','DEU',0),(3152,'Jena','DEU',0),(3153,'Iserlohn','DEU',0),(3154,'Gütersloh','DEU',0),(3155,'Marl','DEU',0),(3156,'Lünen','DEU',0),(3157,'Düren','DEU',0),(3158,'Ratingen','DEU',0),(3159,'Velbert','DEU',0),(3160,'Esslingen am Neckar','DEU',0),(3161,'Honiara','SLB',0),(3162,'Lusaka','ZMB',0),(3163,'Ndola','ZMB',0),(3164,'Kitwe','ZMB',0),(3165,'Kabwe','ZMB',0),(3166,'Chingola','ZMB',0),(3167,'Mufulira','ZMB',0),(3168,'Luanshya','ZMB',0),(3169,'Apia','WSM',0),(3170,'Serravalle','SMR',0),(3171,'San Marino','SMR',0),(3172,'São Tomé','STP',0),(3173,'Riyadh','SAU',0),(3174,'Jedda','SAU',0),(3175,'Mekka','SAU',0),(3176,'Medina','SAU',0),(3177,'al-Dammam','SAU',0),(3178,'al-Taif','SAU',0),(3179,'Tabuk','SAU',0),(3180,'Burayda','SAU',0),(3181,'al-Hufuf','SAU',0),(3182,'al-Mubarraz','SAU',0),(3183,'Khamis Mushayt','SAU',0),(3184,'Hail','SAU',0),(3185,'al-Kharj','SAU',0),(3186,'al-Khubar','SAU',0),(3187,'Jubayl','SAU',0),(3188,'Hafar al-Batin','SAU',0),(3189,'al-Tuqba','SAU',0),(3190,'Yanbu','SAU',0),(3191,'Abha','SAU',0),(3192,'Ara´ar','SAU',0),(3193,'al-Qatif','SAU',0),(3194,'al-Hawiya','SAU',0),(3195,'Unayza','SAU',0),(3196,'Najran','SAU',0),(3197,'Pikine','SEN',0),(3198,'Dakar','SEN',0),(3199,'Thiès','SEN',0),(3200,'Kaolack','SEN',0),(3201,'Ziguinchor','SEN',0),(3202,'Rufisque','SEN',0),(3203,'Saint-Louis','SEN',0),(3204,'Mbour','SEN',0),(3205,'Diourbel','SEN',0),(3206,'Victoria','SYC',0),(3207,'Freetown','SLE',0),(3208,'Singapore','SGP',0),(3209,'Bratislava','SVK',0),(3210,'Košice','SVK',0),(3211,'Prešov','SVK',0),(3212,'Ljubljana','SVN',0),(3213,'Maribor','SVN',0),(3214,'Mogadishu','SOM',0),(3215,'Hargeysa','SOM',0),(3216,'Kismaayo','SOM',0),(3217,'Colombo','LKA',0),(3218,'Dehiwala','LKA',0),(3219,'Moratuwa','LKA',0),(3220,'Jaffna','LKA',0),(3221,'Kandy','LKA',0),(3222,'Sri Jayawardenepura Kotte','LKA',0),(3223,'Negombo','LKA',0),(3224,'Omdurman','SDN',0),(3225,'Khartum','SDN',0),(3226,'Sharq al-Nil','SDN',0),(3227,'Port Sudan','SDN',0),(3228,'Kassala','SDN',0),(3229,'Obeid','SDN',0),(3230,'Nyala','SDN',0),(3231,'Wad Madani','SDN',0),(3232,'al-Qadarif','SDN',0),(3233,'Kusti','SDN',0),(3234,'al-Fashir','SDN',0),(3235,'Juba','SDN',0),(3236,'Helsinki [Helsingfors]','FIN',0),(3237,'Espoo','FIN',0),(3238,'Tampere','FIN',0),(3239,'Vantaa','FIN',0),(3240,'Turku [Åbo]','FIN',0),(3241,'Oulu','FIN',0),(3242,'Lahti','FIN',0),(3243,'Paramaribo','SUR',0),(3244,'Mbabane','SWZ',0),(3245,'Zürich','CHE',0),(3246,'Geneve','CHE',0),(3247,'Basel','CHE',0),(3248,'Bern','CHE',0),(3249,'Lausanne','CHE',0),(3250,'Damascus','SYR',0),(3251,'Aleppo','SYR',0),(3252,'Hims','SYR',0),(3253,'Hama','SYR',0),(3254,'Latakia','SYR',0),(3255,'al-Qamishliya','SYR',0),(3256,'Dayr al-Zawr','SYR',0),(3257,'Jaramana','SYR',0),(3258,'Duma','SYR',0),(3259,'al-Raqqa','SYR',0),(3260,'Idlib','SYR',0),(3261,'Dushanbe','TJK',0),(3262,'Khujand','TJK',0),(3263,'Taipei','TWN',0),(3264,'Kaohsiung','TWN',0),(3265,'Taichung','TWN',0),(3266,'Tainan','TWN',0),(3267,'Panchiao','TWN',0),(3268,'Chungho','TWN',0),(3269,'Keelung (Chilung)','TWN',0),(3270,'Sanchung','TWN',0),(3271,'Hsinchuang','TWN',0),(3272,'Hsinchu','TWN',0),(3273,'Chungli','TWN',0),(3274,'Fengshan','TWN',0),(3275,'Taoyuan','TWN',0),(3276,'Chiayi','TWN',0),(3277,'Hsintien','TWN',0),(3278,'Changhwa','TWN',0),(3279,'Yungho','TWN',0),(3280,'Tucheng','TWN',0),(3281,'Pingtung','TWN',0),(3282,'Yungkang','TWN',0),(3283,'Pingchen','TWN',0),(3284,'Tali','TWN',0),(3285,'Taiping','TWN',0),(3286,'Pate','TWN',0),(3287,'Fengyuan','TWN',0),(3288,'Luchou','TWN',0),(3289,'Hsichuh','TWN',0),(3290,'Shulin','TWN',0),(3291,'Yuanlin','TWN',0),(3292,'Yangmei','TWN',0),(3293,'Taliao','TWN',0),(3294,'Kueishan','TWN',0),(3295,'Tanshui','TWN',0),(3296,'Taitung','TWN',0),(3297,'Hualien','TWN',0),(3298,'Nantou','TWN',0),(3299,'Lungtan','TWN',0),(3300,'Touliu','TWN',0),(3301,'Tsaotun','TWN',0),(3302,'Kangshan','TWN',0),(3303,'Ilan','TWN',0),(3304,'Miaoli','TWN',0),(3305,'Dar es Salaam','TZA',0),(3306,'Dodoma','TZA',0),(3307,'Mwanza','TZA',0),(3308,'Zanzibar','TZA',0),(3309,'Tanga','TZA',0),(3310,'Mbeya','TZA',0),(3311,'Morogoro','TZA',0),(3312,'Arusha','TZA',0),(3313,'Moshi','TZA',0),(3314,'Tabora','TZA',0),(3315,'København','DNK',0),(3316,'Århus','DNK',0),(3317,'Odense','DNK',0),(3318,'Aalborg','DNK',0),(3319,'Frederiksberg','DNK',0),(3320,'Bangkok','THA',0),(3321,'Nonthaburi','THA',0),(3322,'Nakhon Ratchasima','THA',0),(3323,'Chiang Mai','THA',0),(3324,'Udon Thani','THA',0),(3325,'Hat Yai','THA',0),(3326,'Khon Kaen','THA',0),(3327,'Pak Kret','THA',0),(3328,'Nakhon Sawan','THA',0),(3329,'Ubon Ratchathani','THA',0),(3330,'Songkhla','THA',0),(3331,'Nakhon Pathom','THA',0),(3332,'Lomé','TGO',0),(3333,'Fakaofo','TKL',0),(3334,'Nuku´alofa','TON',0),(3335,'Chaguanas','TTO',0),(3336,'Port-of-Spain','TTO',0),(3337,'N´Djaména','TCD',0),(3338,'Moundou','TCD',0),(3339,'Praha','CZE',0),(3340,'Brno','CZE',0),(3341,'Ostrava','CZE',0),(3342,'Plzen','CZE',0),(3343,'Olomouc','CZE',0),(3344,'Liberec','CZE',0),(3345,'Ceské Budejovice','CZE',0),(3346,'Hradec Králové','CZE',0),(3347,'Ústí nad Labem','CZE',0),(3348,'Pardubice','CZE',0),(3349,'Tunis','TUN',0),(3350,'Sfax','TUN',0),(3351,'Ariana','TUN',0),(3352,'Ettadhamen','TUN',0),(3353,'Sousse','TUN',0),(3354,'Kairouan','TUN',0),(3355,'Biserta','TUN',0),(3356,'Gabès','TUN',0),(3357,'Istanbul','TUR',0),(3358,'Ankara','TUR',0),(3359,'Izmir','TUR',0),(3360,'Adana','TUR',0),(3361,'Bursa','TUR',0),(3362,'Gaziantep','TUR',0),(3363,'Konya','TUR',0),(3364,'Mersin (Içel)','TUR',0),(3365,'Antalya','TUR',0),(3366,'Diyarbakir','TUR',0),(3367,'Kayseri','TUR',0),(3368,'Eskisehir','TUR',0),(3369,'Sanliurfa','TUR',0),(3370,'Samsun','TUR',0),(3371,'Malatya','TUR',0),(3372,'Gebze','TUR',0),(3373,'Denizli','TUR',0),(3374,'Sivas','TUR',0),(3375,'Erzurum','TUR',0),(3376,'Tarsus','TUR',0),(3377,'Kahramanmaras','TUR',0),(3378,'Elâzig','TUR',0),(3379,'Van','TUR',0),(3380,'Sultanbeyli','TUR',0),(3381,'Izmit (Kocaeli)','TUR',0),(3382,'Manisa','TUR',0),(3383,'Batman','TUR',0),(3384,'Balikesir','TUR',0),(3385,'Sakarya (Adapazari)','TUR',0),(3386,'Iskenderun','TUR',0),(3387,'Osmaniye','TUR',0),(3388,'Çorum','TUR',0),(3389,'Kütahya','TUR',0),(3390,'Hatay (Antakya)','TUR',0),(3391,'Kirikkale','TUR',0),(3392,'Adiyaman','TUR',0),(3393,'Trabzon','TUR',0),(3394,'Ordu','TUR',0),(3395,'Aydin','TUR',0),(3396,'Usak','TUR',0),(3397,'Edirne','TUR',0),(3398,'Çorlu','TUR',0),(3399,'Isparta','TUR',0),(3400,'Karabük','TUR',0),(3401,'Kilis','TUR',0),(3402,'Alanya','TUR',0),(3403,'Kiziltepe','TUR',0),(3404,'Zonguldak','TUR',0),(3405,'Siirt','TUR',0),(3406,'Viransehir','TUR',0),(3407,'Tekirdag','TUR',0),(3408,'Karaman','TUR',0),(3409,'Afyon','TUR',0),(3410,'Aksaray','TUR',0),(3411,'Ceyhan','TUR',0),(3412,'Erzincan','TUR',0),(3413,'Bismil','TUR',0),(3414,'Nazilli','TUR',0),(3415,'Tokat','TUR',0),(3416,'Kars','TUR',0),(3417,'Inegöl','TUR',0),(3418,'Bandirma','TUR',0),(3419,'Ashgabat','TKM',0),(3420,'Chärjew','TKM',0),(3421,'Dashhowuz','TKM',0),(3422,'Mary','TKM',0),(3423,'Cockburn Town','TCA',0),(3424,'Funafuti','TUV',0),(3425,'Kampala','UGA',0),(3426,'Kyiv','UKR',0),(3427,'Harkova [Harkiv]','UKR',0),(3428,'Dnipropetrovsk','UKR',0),(3429,'Donetsk','UKR',0),(3430,'Odesa','UKR',0),(3431,'Zaporizzja','UKR',0),(3432,'Lviv','UKR',0),(3433,'Kryvyi Rig','UKR',0),(3434,'Mykolajiv','UKR',0),(3435,'Mariupol','UKR',0),(3436,'Lugansk','UKR',0),(3437,'Vinnytsja','UKR',0),(3438,'Makijivka','UKR',0),(3439,'Herson','UKR',0),(3440,'Sevastopol','UKR',0),(3441,'Simferopol','UKR',0),(3442,'Pultava [Poltava]','UKR',0),(3443,'Tšernigiv','UKR',0),(3444,'Tšerkasy','UKR',0),(3445,'Gorlivka','UKR',0),(3446,'Zytomyr','UKR',0),(3447,'Sumy','UKR',0),(3448,'Dniprodzerzynsk','UKR',0),(3449,'Kirovograd','UKR',0),(3450,'Hmelnytskyi','UKR',0),(3451,'Tšernivtsi','UKR',0),(3452,'Rivne','UKR',0),(3453,'Krementšuk','UKR',0),(3454,'Ivano-Frankivsk','UKR',0),(3455,'Ternopil','UKR',0),(3456,'Lutsk','UKR',0),(3457,'Bila Tserkva','UKR',0),(3458,'Kramatorsk','UKR',0),(3459,'Melitopol','UKR',0),(3460,'Kertš','UKR',0),(3461,'Nikopol','UKR',0),(3462,'Berdjansk','UKR',0),(3463,'Pavlograd','UKR',0),(3464,'Sjeverodonetsk','UKR',0),(3465,'Slovjansk','UKR',0),(3466,'Uzgorod','UKR',0),(3467,'Altševsk','UKR',0),(3468,'Lysytšansk','UKR',0),(3469,'Jevpatorija','UKR',0),(3470,'Kamjanets-Podilskyi','UKR',0),(3471,'Jenakijeve','UKR',0),(3472,'Krasnyi Lutš','UKR',0),(3473,'Stahanov','UKR',0),(3474,'Oleksandrija','UKR',0),(3475,'Konotop','UKR',0),(3476,'Kostjantynivka','UKR',0),(3477,'Berdytšiv','UKR',0),(3478,'Izmajil','UKR',0),(3479,'Šostka','UKR',0),(3480,'Uman','UKR',0),(3481,'Brovary','UKR',0),(3482,'Mukatševe','UKR',0),(3483,'Budapest','HUN',0),(3484,'Debrecen','HUN',0),(3485,'Miskolc','HUN',0),(3486,'Szeged','HUN',0),(3487,'Pécs','HUN',0),(3488,'Györ','HUN',0),(3489,'Nyiregyháza','HUN',0),(3490,'Kecskemét','HUN',0),(3491,'Székesfehérvár','HUN',0),(3492,'Montevideo','URY',0),(3493,'Nouméa','NCL',0),(3494,'Auckland','NZL',0),(3495,'Christchurch','NZL',0),(3496,'Manukau','NZL',0),(3497,'North Shore','NZL',0),(3498,'Waitakere','NZL',0),(3499,'Wellington','NZL',0),(3500,'Dunedin','NZL',0),(3501,'Hamilton','NZL',0),(3502,'Lower Hutt','NZL',0),(3503,'Toskent','UZB',0),(3504,'Namangan','UZB',0),(3505,'Samarkand','UZB',0),(3506,'Andijon','UZB',0),(3507,'Buhoro','UZB',0),(3508,'Karsi','UZB',0),(3509,'Nukus','UZB',0),(3510,'Kükon','UZB',0),(3511,'Fargona','UZB',0),(3512,'Circik','UZB',0),(3513,'Margilon','UZB',0),(3514,'Ürgenc','UZB',0),(3515,'Angren','UZB',0),(3516,'Cizah','UZB',0),(3517,'Navoi','UZB',0),(3518,'Olmalik','UZB',0),(3519,'Termiz','UZB',0),(3520,'Minsk','BLR',0),(3521,'Gomel','BLR',0),(3522,'Mogiljov','BLR',0),(3523,'Vitebsk','BLR',0),(3524,'Grodno','BLR',0),(3525,'Brest','BLR',0),(3526,'Bobruisk','BLR',0),(3527,'Baranovitši','BLR',0),(3528,'Borisov','BLR',0),(3529,'Pinsk','BLR',0),(3530,'Orša','BLR',0),(3531,'Mozyr','BLR',0),(3532,'Novopolotsk','BLR',0),(3533,'Lida','BLR',0),(3534,'Soligorsk','BLR',0),(3535,'Molodetšno','BLR',0),(3536,'Mata-Utu','WLF',0),(3537,'Port-Vila','VUT',0),(3538,'Città del Vaticano','VAT',0),(3539,'Caracas','VEN',0),(3540,'Maracaíbo','VEN',0),(3541,'Barquisimeto','VEN',0),(3542,'Valencia','VEN',0),(3543,'Ciudad Guayana','VEN',0),(3544,'Petare','VEN',0),(3545,'Maracay','VEN',0),(3546,'Barcelona','VEN',0),(3547,'Maturín','VEN',0),(3548,'San Cristóbal','VEN',0),(3549,'Ciudad Bolívar','VEN',0),(3550,'Cumaná','VEN',0),(3551,'Mérida','VEN',0),(3552,'Cabimas','VEN',0),(3553,'Barinas','VEN',0),(3554,'Turmero','VEN',0),(3555,'Baruta','VEN',0),(3556,'Puerto Cabello','VEN',0),(3557,'Santa Ana de Coro','VEN',0),(3558,'Los Teques','VEN',0),(3559,'Punto Fijo','VEN',0),(3560,'Guarenas','VEN',0),(3561,'Acarigua','VEN',0),(3562,'Puerto La Cruz','VEN',0),(3563,'Ciudad Losada','VEN',0),(3564,'Guacara','VEN',0),(3565,'Valera','VEN',0),(3566,'Guanare','VEN',0),(3567,'Carúpano','VEN',0),(3568,'Catia La Mar','VEN',0),(3569,'El Tigre','VEN',0),(3570,'Guatire','VEN',0),(3571,'Calabozo','VEN',0),(3572,'Pozuelos','VEN',0),(3573,'Ciudad Ojeda','VEN',0),(3574,'Ocumare del Tuy','VEN',0),(3575,'Valle de la Pascua','VEN',0),(3576,'Araure','VEN',0),(3577,'San Fernando de Apure','VEN',0),(3578,'San Felipe','VEN',0),(3579,'El Limón','VEN',0),(3580,'Moscow','RUS',0),(3581,'St Petersburg','RUS',0),(3582,'Novosibirsk','RUS',0),(3583,'Nizni Novgorod','RUS',0),(3584,'Jekaterinburg','RUS',0),(3585,'Samara','RUS',0),(3586,'Omsk','RUS',0),(3587,'Kazan','RUS',0),(3588,'Ufa','RUS',0),(3589,'Tšeljabinsk','RUS',0),(3590,'Rostov-na-Donu','RUS',0),(3591,'Perm','RUS',0),(3592,'Volgograd','RUS',0),(3593,'Voronez','RUS',0),(3594,'Krasnojarsk','RUS',0),(3595,'Saratov','RUS',0),(3596,'Toljatti','RUS',0),(3597,'Uljanovsk','RUS',0),(3598,'Izevsk','RUS',0),(3599,'Krasnodar','RUS',0),(3600,'Jaroslavl','RUS',0),(3601,'Habarovsk','RUS',0),(3602,'Vladivostok','RUS',0),(3603,'Irkutsk','RUS',0),(3604,'Barnaul','RUS',0),(3605,'Novokuznetsk','RUS',0),(3606,'Penza','RUS',0),(3607,'Rjazan','RUS',0),(3608,'Orenburg','RUS',0),(3609,'Lipetsk','RUS',0),(3610,'Nabereznyje Tšelny','RUS',0),(3611,'Tula','RUS',0),(3612,'Tjumen','RUS',0),(3613,'Kemerovo','RUS',0),(3614,'Astrahan','RUS',0),(3615,'Tomsk','RUS',0),(3616,'Kirov','RUS',0),(3617,'Ivanovo','RUS',0),(3618,'Tšeboksary','RUS',0),(3619,'Brjansk','RUS',0),(3620,'Tver','RUS',0),(3621,'Kursk','RUS',0),(3622,'Magnitogorsk','RUS',0),(3623,'Kaliningrad','RUS',0),(3624,'Nizni Tagil','RUS',0),(3625,'Murmansk','RUS',0),(3626,'Ulan-Ude','RUS',0),(3627,'Kurgan','RUS',0),(3628,'Arkangeli','RUS',0),(3629,'Sotši','RUS',0),(3630,'Smolensk','RUS',0),(3631,'Orjol','RUS',0),(3632,'Stavropol','RUS',0),(3633,'Belgorod','RUS',0),(3634,'Kaluga','RUS',0),(3635,'Vladimir','RUS',0),(3636,'Mahatškala','RUS',0),(3637,'Tšerepovets','RUS',0),(3638,'Saransk','RUS',0),(3639,'Tambov','RUS',0),(3640,'Vladikavkaz','RUS',0),(3641,'Tšita','RUS',0),(3642,'Vologda','RUS',0),(3643,'Veliki Novgorod','RUS',0),(3644,'Komsomolsk-na-Amure','RUS',0),(3645,'Kostroma','RUS',0),(3646,'Volzski','RUS',0),(3647,'Taganrog','RUS',0),(3648,'Petroskoi','RUS',0),(3649,'Bratsk','RUS',0),(3650,'Dzerzinsk','RUS',0),(3651,'Surgut','RUS',0),(3652,'Orsk','RUS',0),(3653,'Sterlitamak','RUS',0),(3654,'Angarsk','RUS',0),(3655,'Joškar-Ola','RUS',0),(3656,'Rybinsk','RUS',0),(3657,'Prokopjevsk','RUS',0),(3658,'Niznevartovsk','RUS',0),(3659,'Naltšik','RUS',0),(3660,'Syktyvkar','RUS',0),(3661,'Severodvinsk','RUS',0),(3662,'Bijsk','RUS',0),(3663,'Niznekamsk','RUS',0),(3664,'Blagoveštšensk','RUS',0),(3665,'Šahty','RUS',0),(3666,'Staryi Oskol','RUS',0),(3667,'Zelenograd','RUS',0),(3668,'Balakovo','RUS',0),(3669,'Novorossijsk','RUS',0),(3670,'Pihkova','RUS',0),(3671,'Zlatoust','RUS',0),(3672,'Jakutsk','RUS',0),(3673,'Podolsk','RUS',0),(3674,'Petropavlovsk-Kamtšatski','RUS',0),(3675,'Kamensk-Uralski','RUS',0),(3676,'Engels','RUS',0),(3677,'Syzran','RUS',0),(3678,'Grozny','RUS',0),(3679,'Novotšerkassk','RUS',0),(3680,'Berezniki','RUS',0),(3681,'Juzno-Sahalinsk','RUS',0),(3682,'Volgodonsk','RUS',0),(3683,'Abakan','RUS',0),(3684,'Maikop','RUS',0),(3685,'Miass','RUS',0),(3686,'Armavir','RUS',0),(3687,'Ljubertsy','RUS',0),(3688,'Rubtsovsk','RUS',0),(3689,'Kovrov','RUS',0),(3690,'Nahodka','RUS',0),(3691,'Ussurijsk','RUS',0),(3692,'Salavat','RUS',0),(3693,'Mytištši','RUS',0),(3694,'Kolomna','RUS',0),(3695,'Elektrostal','RUS',0),(3696,'Murom','RUS',0),(3697,'Kolpino','RUS',0),(3698,'Norilsk','RUS',0),(3699,'Almetjevsk','RUS',0),(3700,'Novomoskovsk','RUS',0),(3701,'Dimitrovgrad','RUS',0),(3702,'Pervouralsk','RUS',0),(3703,'Himki','RUS',0),(3704,'Balašiha','RUS',0),(3705,'Nevinnomyssk','RUS',0),(3706,'Pjatigorsk','RUS',0),(3707,'Korolev','RUS',0),(3708,'Serpuhov','RUS',0),(3709,'Odintsovo','RUS',0),(3710,'Orehovo-Zujevo','RUS',0),(3711,'Kamyšin','RUS',0),(3712,'Novotšeboksarsk','RUS',0),(3713,'Tšerkessk','RUS',0),(3714,'Atšinsk','RUS',0),(3715,'Magadan','RUS',0),(3716,'Mitšurinsk','RUS',0),(3717,'Kislovodsk','RUS',0),(3718,'Jelets','RUS',0),(3719,'Seversk','RUS',0),(3720,'Noginsk','RUS',0),(3721,'Velikije Luki','RUS',0),(3722,'Novokuibyševsk','RUS',0),(3723,'Neftekamsk','RUS',0),(3724,'Leninsk-Kuznetski','RUS',0),(3725,'Oktjabrski','RUS',0),(3726,'Sergijev Posad','RUS',0),(3727,'Arzamas','RUS',0),(3728,'Kiseljovsk','RUS',0),(3729,'Novotroitsk','RUS',0),(3730,'Obninsk','RUS',0),(3731,'Kansk','RUS',0),(3732,'Glazov','RUS',0),(3733,'Solikamsk','RUS',0),(3734,'Sarapul','RUS',0),(3735,'Ust-Ilimsk','RUS',0),(3736,'Štšolkovo','RUS',0),(3737,'Mezduretšensk','RUS',0),(3738,'Usolje-Sibirskoje','RUS',0),(3739,'Elista','RUS',0),(3740,'Novošahtinsk','RUS',0),(3741,'Votkinsk','RUS',0),(3742,'Kyzyl','RUS',0),(3743,'Serov','RUS',0),(3744,'Zelenodolsk','RUS',0),(3745,'Zeleznodoroznyi','RUS',0),(3746,'Kinešma','RUS',0),(3747,'Kuznetsk','RUS',0),(3748,'Uhta','RUS',0),(3749,'Jessentuki','RUS',0),(3750,'Tobolsk','RUS',0),(3751,'Neftejugansk','RUS',0),(3752,'Bataisk','RUS',0),(3753,'Nojabrsk','RUS',0),(3754,'Balašov','RUS',0),(3755,'Zeleznogorsk','RUS',0),(3756,'Zukovski','RUS',0),(3757,'Anzero-Sudzensk','RUS',0),(3758,'Bugulma','RUS',0),(3759,'Zeleznogorsk','RUS',0),(3760,'Novouralsk','RUS',0),(3761,'Puškin','RUS',0),(3762,'Vorkuta','RUS',0),(3763,'Derbent','RUS',0),(3764,'Kirovo-Tšepetsk','RUS',0),(3765,'Krasnogorsk','RUS',0),(3766,'Klin','RUS',0),(3767,'Tšaikovski','RUS',0),(3768,'Novyi Urengoi','RUS',0),(3769,'Ho Chi Minh City','VNM',0),(3770,'Hanoi','VNM',0),(3771,'Haiphong','VNM',0),(3772,'Da Nang','VNM',0),(3773,'Biên Hoa','VNM',0),(3774,'Nha Trang','VNM',0),(3775,'Hue','VNM',0),(3776,'Can Tho','VNM',0),(3777,'Cam Pha','VNM',0),(3778,'Nam Dinh','VNM',0),(3779,'Quy Nhon','VNM',0),(3780,'Vung Tau','VNM',0),(3781,'Rach Gia','VNM',0),(3782,'Long Xuyen','VNM',0),(3783,'Thai Nguyen','VNM',0),(3784,'Hong Gai','VNM',0),(3785,'Phan Thiêt','VNM',0),(3786,'Cam Ranh','VNM',0),(3787,'Vinh','VNM',0),(3788,'My Tho','VNM',0),(3789,'Da Lat','VNM',0),(3790,'Buon Ma Thuot','VNM',0),(3791,'Tallinn','EST',0),(3792,'Tartu','EST',0),(3793,'New York','USA',0),(3794,'Los Angeles','USA',0),(3795,'Chicago','USA',0),(3796,'Houston','USA',0),(3797,'Philadelphia','USA',0),(3798,'Phoenix','USA',0),(3799,'San Diego','USA',0),(3800,'Dallas','USA',0),(3801,'San Antonio','USA',0),(3802,'Detroit','USA',0),(3803,'San Jose','USA',0),(3804,'Indianapolis','USA',0),(3805,'San Francisco','USA',0),(3806,'Jacksonville','USA',0),(3807,'Columbus','USA',0),(3808,'Austin','USA',0),(3809,'Baltimore','USA',0),(3810,'Memphis','USA',0),(3811,'Milwaukee','USA',0),(3812,'Boston','USA',0),(3813,'Washington','USA',0),(3814,'Nashville-Davidson','USA',0),(3815,'El Paso','USA',0),(3816,'Seattle','USA',0),(3817,'Denver','USA',0),(3818,'Charlotte','USA',0),(3819,'Fort Worth','USA',0),(3820,'Portland','USA',0),(3821,'Oklahoma City','USA',0),(3822,'Tucson','USA',0),(3823,'New Orleans','USA',0),(3824,'Las Vegas','USA',0),(3825,'Cleveland','USA',0),(3826,'Long Beach','USA',0),(3827,'Albuquerque','USA',0),(3828,'Kansas City','USA',0),(3829,'Fresno','USA',0),(3830,'Virginia Beach','USA',0),(3831,'Atlanta','USA',0),(3832,'Sacramento','USA',0),(3833,'Oakland','USA',0),(3834,'Mesa','USA',0),(3835,'Tulsa','USA',0),(3836,'Omaha','USA',0),(3837,'Minneapolis','USA',0),(3838,'Honolulu','USA',0),(3839,'Miami','USA',0),(3840,'Colorado Springs','USA',0),(3841,'Saint Louis','USA',0),(3842,'Wichita','USA',0),(3843,'Santa Ana','USA',0),(3844,'Pittsburgh','USA',0),(3845,'Arlington','USA',0),(3846,'Cincinnati','USA',0),(3847,'Anaheim','USA',0),(3848,'Toledo','USA',0),(3849,'Tampa','USA',0),(3850,'Buffalo','USA',0),(3851,'Saint Paul','USA',0),(3852,'Corpus Christi','USA',0),(3853,'Aurora','USA',0),(3854,'Raleigh','USA',0),(3855,'Newark','USA',0),(3856,'Lexington-Fayette','USA',0),(3857,'Anchorage','USA',0),(3858,'Louisville','USA',0),(3859,'Riverside','USA',0),(3860,'Saint Petersburg','USA',0),(3861,'Bakersfield','USA',0),(3862,'Stockton','USA',0),(3863,'Birmingham','USA',0),(3864,'Jersey City','USA',0),(3865,'Norfolk','USA',0),(3866,'Baton Rouge','USA',0),(3867,'Hialeah','USA',0),(3868,'Lincoln','USA',0),(3869,'Greensboro','USA',0),(3870,'Plano','USA',0),(3871,'Rochester','USA',0),(3872,'Glendale','USA',0),(3873,'Akron','USA',0),(3874,'Garland','USA',0),(3875,'Madison','USA',0),(3876,'Fort Wayne','USA',0),(3877,'Fremont','USA',0),(3878,'Scottsdale','USA',0),(3879,'Montgomery','USA',0),(3880,'Shreveport','USA',0),(3881,'Augusta-Richmond County','USA',0),(3882,'Lubbock','USA',0),(3883,'Chesapeake','USA',0),(3884,'Mobile','USA',0),(3885,'Des Moines','USA',0),(3886,'Grand Rapids','USA',0),(3887,'Richmond','USA',0),(3888,'Yonkers','USA',0),(3889,'Spokane','USA',0),(3890,'Glendale','USA',0),(3891,'Tacoma','USA',0),(3892,'Irving','USA',0),(3893,'Huntington Beach','USA',0),(3894,'Modesto','USA',0),(3895,'Durham','USA',0),(3896,'Columbus','USA',0),(3897,'Orlando','USA',0),(3898,'Boise City','USA',0),(3899,'Winston-Salem','USA',0),(3900,'San Bernardino','USA',0),(3901,'Jackson','USA',0),(3902,'Little Rock','USA',0),(3903,'Salt Lake City','USA',0),(3904,'Reno','USA',0),(3905,'Newport News','USA',0),(3906,'Chandler','USA',0),(3907,'Laredo','USA',0),(3908,'Henderson','USA',0),(3909,'Arlington','USA',0),(3910,'Knoxville','USA',0),(3911,'Amarillo','USA',0),(3912,'Providence','USA',0),(3913,'Chula Vista','USA',0),(3914,'Worcester','USA',0),(3915,'Oxnard','USA',0),(3916,'Dayton','USA',0),(3917,'Garden Grove','USA',0),(3918,'Oceanside','USA',0),(3919,'Tempe','USA',0),(3920,'Huntsville','USA',0),(3921,'Ontario','USA',0),(3922,'Chattanooga','USA',0),(3923,'Fort Lauderdale','USA',0),(3924,'Springfield','USA',0),(3925,'Springfield','USA',0),(3926,'Santa Clarita','USA',0),(3927,'Salinas','USA',0),(3928,'Tallahassee','USA',0),(3929,'Rockford','USA',0),(3930,'Pomona','USA',0),(3931,'Metairie','USA',0),(3932,'Paterson','USA',0),(3933,'Overland Park','USA',0),(3934,'Santa Rosa','USA',0),(3935,'Syracuse','USA',0),(3936,'Kansas City','USA',0),(3937,'Hampton','USA',0),(3938,'Lakewood','USA',0),(3939,'Vancouver','USA',0),(3940,'Irvine','USA',0),(3941,'Aurora','USA',0),(3942,'Moreno Valley','USA',0),(3943,'Pasadena','USA',0),(3944,'Hayward','USA',0),(3945,'Brownsville','USA',0),(3946,'Bridgeport','USA',0),(3947,'Hollywood','USA',0),(3948,'Warren','USA',0),(3949,'Torrance','USA',0),(3950,'Eugene','USA',0),(3951,'Pembroke Pines','USA',0),(3952,'Salem','USA',0),(3953,'Pasadena','USA',0),(3954,'Escondido','USA',0),(3955,'Sunnyvale','USA',0),(3956,'Savannah','USA',0),(3957,'Fontana','USA',0),(3958,'Orange','USA',0),(3959,'Naperville','USA',0),(3960,'Alexandria','USA',0),(3961,'Rancho Cucamonga','USA',0),(3962,'Grand Prairie','USA',0),(3963,'East Los Angeles','USA',0),(3964,'Fullerton','USA',0),(3965,'Corona','USA',0),(3966,'Flint','USA',0),(3967,'Paradise','USA',0),(3968,'Mesquite','USA',0),(3969,'Sterling Heights','USA',0),(3970,'Sioux Falls','USA',0),(3971,'New Haven','USA',0),(3972,'Topeka','USA',0),(3973,'Concord','USA',0),(3974,'Evansville','USA',0),(3975,'Hartford','USA',0),(3976,'Fayetteville','USA',0),(3977,'Cedar Rapids','USA',0),(3978,'Elizabeth','USA',0),(3979,'Lansing','USA',0),(3980,'Lancaster','USA',0),(3981,'Fort Collins','USA',0),(3982,'Coral Springs','USA',0),(3983,'Stamford','USA',0),(3984,'Thousand Oaks','USA',0),(3985,'Vallejo','USA',0),(3986,'Palmdale','USA',0),(3987,'Columbia','USA',0),(3988,'El Monte','USA',0),(3989,'Abilene','USA',0),(3990,'North Las Vegas','USA',0),(3991,'Ann Arbor','USA',0),(3992,'Beaumont','USA',0),(3993,'Waco','USA',0),(3994,'Macon','USA',0),(3995,'Independence','USA',0),(3996,'Peoria','USA',0),(3997,'Inglewood','USA',0),(3998,'Springfield','USA',0),(3999,'Simi Valley','USA',0),(4000,'Lafayette','USA',0),(4001,'Gilbert','USA',0),(4002,'Carrollton','USA',0),(4003,'Bellevue','USA',0),(4004,'West Valley City','USA',0),(4005,'Clarksville','USA',0),(4006,'Costa Mesa','USA',0),(4007,'Peoria','USA',0),(4008,'South Bend','USA',0),(4009,'Downey','USA',0),(4010,'Waterbury','USA',0),(4011,'Manchester','USA',0),(4012,'Allentown','USA',0),(4013,'McAllen','USA',0),(4014,'Joliet','USA',0),(4015,'Lowell','USA',0),(4016,'Provo','USA',0),(4017,'West Covina','USA',0),(4018,'Wichita Falls','USA',0),(4019,'Erie','USA',0),(4020,'Daly City','USA',0),(4021,'Citrus Heights','USA',0),(4022,'Norwalk','USA',0),(4023,'Gary','USA',0),(4024,'Berkeley','USA',0),(4025,'Santa Clara','USA',0),(4026,'Green Bay','USA',0),(4027,'Cape Coral','USA',0),(4028,'Arvada','USA',0),(4029,'Pueblo','USA',0),(4030,'Sandy','USA',0),(4031,'Athens-Clarke County','USA',0),(4032,'Cambridge','USA',0),(4033,'Westminster','USA',0),(4034,'San Buenaventura','USA',0),(4035,'Portsmouth','USA',0),(4036,'Livonia','USA',0),(4037,'Burbank','USA',0),(4038,'Clearwater','USA',0),(4039,'Midland','USA',0),(4040,'Davenport','USA',0),(4041,'Mission Viejo','USA',0),(4042,'Miami Beach','USA',0),(4043,'Sunrise Manor','USA',0),(4044,'New Bedford','USA',0),(4045,'El Cajon','USA',0),(4046,'Norman','USA',0),(4047,'Richmond','USA',0),(4048,'Albany','USA',0),(4049,'Brockton','USA',0),(4050,'Roanoke','USA',0),(4051,'Billings','USA',0),(4052,'Compton','USA',0),(4053,'Gainesville','USA',0),(4054,'Fairfield','USA',0),(4055,'Arden-Arcade','USA',0),(4056,'San Mateo','USA',0),(4057,'Visalia','USA',0),(4058,'Boulder','USA',0),(4059,'Cary','USA',0),(4060,'Santa Monica','USA',0),(4061,'Fall River','USA',0),(4062,'Kenosha','USA',0),(4063,'Elgin','USA',0),(4064,'Odessa','USA',0),(4065,'Carson','USA',0),(4066,'Charleston','USA',0),(4067,'Charlotte Amalie','VIR',0),(4068,'Harare','ZWE',0),(4069,'Bulawayo','ZWE',0),(4070,'Chitungwiza','ZWE',0),(4071,'Mount Darwin','ZWE',0),(4072,'Mutare','ZWE',0),(4073,'Gweru','ZWE',0),(4074,'Gaza','PSE',0),(4075,'Khan Yunis','PSE',0),(4076,'Hebron','PSE',0),(4077,'Jabaliya','PSE',0),(4078,'Nablus','PSE',0),(4079,'Rafah','PSE',0),(5001,'MEDELLIN','COL',1),(5002,'Abejorral','COL',1),(5004,'Abriaqui','COL',1),(5021,'ALEJANDRIA','COL',1),(5030,'AMAGA','COL',1),(5031,'AMALFI','COL',1),(5034,'ANDES','COL',1),(5036,'ANGELOPOLIS','COL',1),(5038,'ANGOSTURA','COL',1),(5040,'ANORI','COL',1),(5042,'ANTIOQUIA','COL',1),(5044,'ANZA','COL',1),(5045,'APARTADO','COL',1),(5051,'ARBOLETES','COL',1),(5055,'ARGELIA','COL',1),(5059,'ARMENIA','COL',1),(5079,'BARBOSA','COL',1),(5086,'BELMIRA','COL',1),(5088,'BELLO','COL',1),(5091,'BETANIA','COL',1),(5093,'BETULIA','COL',1),(5101,'CIUDAD BOLIVAR','COL',1),(5107,'BRICEÑO','COL',1),(5113,'BURITICA','COL',1),(5120,'CACERES','COL',1),(5125,'CAICEDO','COL',1),(5129,'CALDAS','COL',1),(5134,'CAMPAMENTO','COL',1),(5138,'CAÑASGORDAS','COL',1),(5142,'CARACOLI','COL',1),(5145,'CARAMANTA','COL',1),(5147,'CAREPA','COL',1),(5148,'CARMEN DE VIBORAL','COL',1),(5150,'CAROLINA','COL',1),(5154,'CAUCASIA','COL',1),(5172,'CHIGORODO','COL',1),(5190,'CISNEROS','COL',1),(5197,'COCORNA','COL',1),(5206,'CONCEPCION','COL',1),(5209,'CONCORDIA','COL',1),(5212,'COPACABANA','COL',1),(5234,'DABEIBA','COL',1),(5237,'DON MATIAS','COL',1),(5240,'EBEJICO','COL',1),(5250,'EL BAGRE','COL',1),(5264,'ENTRERRIOS','COL',1),(5266,'ENVIGADO','COL',1),(5282,'FREDONIA','COL',1),(5284,'FRONTINO','COL',1),(5306,'GIRALDO','COL',1),(5308,'GIRARDOTA','COL',1),(5310,'GOMEZ PLATA','COL',1),(5313,'GRANADA','COL',1),(5315,'GUADALUPE','COL',1),(5318,'GUARNE','COL',1),(5321,'GUATAPE','COL',1),(5347,'HELICONIA','COL',1),(5353,'HISPANIA','COL',1),(5360,'ITAGUI','COL',1),(5361,'ITUANGO','COL',1),(5364,'JARDIN','COL',1),(5368,'JERICO','COL',1),(5376,'LA CEJA','COL',1),(5380,'LA ESTRELLA','COL',1),(5390,'LA PINTADA','COL',1),(5400,'LA UNION','COL',1),(5411,'LIBORINA','COL',1),(5425,'MACEO','COL',1),(5440,'MARINILLA','COL',1),(5467,'MONTEBELLO','COL',1),(5475,'MURINDO','COL',1),(5480,'MUTATA','COL',1),(5483,'NARIÑO','COL',1),(5490,'NECOCLI','COL',1),(5495,'NECHI','COL',1),(5501,'OLAYA','COL',1),(5541,'PEÑOL','COL',1),(5543,'PEQUE','COL',1),(5576,'PUEBLORRICO','COL',1),(5579,'PUERTO BERRIO','COL',1),(5585,'PUERTO NARE','COL',1),(5591,'PUERTO TRIUNFO','COL',1),(5604,'REMEDIOS','COL',1),(5607,'RETIRO','COL',1),(5615,'RIONEGRO','COL',1),(5628,'SABANALARGA','COL',1),(5631,'SABANETA','COL',1),(5642,'SALGAR','COL',1),(5647,'SAN ANDRES','COL',1),(5649,'SAN CARLOS','COL',1),(5652,'SAN FRANCISCO','COL',1),(5656,'SAN JERONIMO','COL',1),(5658,'SAN JOSE DE LA MONTAÑA','COL',1),(5659,'SAN JUAN DE URABA','COL',1),(5660,'SAN LUIS','COL',1),(5664,'SAN PEDRO','COL',1),(5665,'SAN PEDRO DE URABA','COL',1),(5667,'SAN RAFAEL','COL',1),(5670,'SAN ROQUE','COL',1),(5674,'SAN VICENTE','COL',1),(5679,'SANTA BARBARA','COL',1),(5686,'SANTA ROSA DE OSOS','COL',1),(5690,'SANTO DOMINGO','COL',1),(5697,'SANTUARIO','COL',1),(5736,'SEGOVIA','COL',1),(5756,'SONSON','COL',1),(5761,'SOPETRAN','COL',1),(5789,'TAMESIS','COL',1),(5790,'TARAZA','COL',1),(5792,'TARSO','COL',1),(5809,'TITIRIBI','COL',1),(5819,'Toledo Antioquia','COL',1),(5837,'TURBO','COL',1),(5842,'URAMITA','COL',1),(5847,'URRAO','COL',1),(5854,'VALDIVIA','COL',1),(5856,'VALPARAISO','COL',1),(5858,'VEGACHI','COL',1),(5861,'VENECIA','ITA',1),(5873,'VIGIA DEL FUERTE','COL',1),(5885,'YALI','COL',1),(5887,'YARUMAL','COL',1),(5890,'YOLOMBO','COL',1),(5893,'YONDO','COL',1),(5895,'ZARAGOZA','COL',1),(8001,'Barranquilla','COL',2),(8078,'BARANOA','COL',2),(8137,'CAMPO DE LA CRUZ','COL',2),(8141,'CANDELARIA','COL',2),(8296,'GALAPA','COL',2),(8372,'JUAN DE ACOSTA','COL',2),(8421,'LURUACO','COL',2),(8433,'MALAMBO','COL',2),(8436,'MANATI','COL',2),(8520,'PALMAR DE VARELA','COL',2),(8549,'PIOJO','COL',2),(8558,'POLO NUEVO','COL',2),(8560,'PONEDERA','COL',2),(8573,'PUERTO COLOMBIA','COL',2),(8606,'REPELON','COL',2),(8634,'SABANAGRANDE','COL',2),(8638,'SABANALARGA','COL',2),(8675,'SANTA LUCIA','COL',2),(8685,'SANTO TOMAS','COL',2),(8758,'SOLEDAD','COL',2),(8770,'SUAN','COL',2),(8832,'TUBARA','COL',2),(8849,'USIACURI','COL',2),(11001,'BOGOTA','COL',14),(13001,'Cartagena','COL',5),(13006,'ACHI','COL',5),(13030,'ALTOS DEL ROSARIO','COL',5),(13042,'ARENAL','COL',5),(13052,'ARJONA','COL',5),(13062,'ARROYOHONDO','COL',5),(13074,'BARRANCO DE LOBA','COL',5),(13140,'CALAMAR','COL',5),(13160,'CANTAGALLO','COL',5),(13188,'CICUCO','COL',5),(13212,'CORDOBA','COL',5),(13222,'CLEMENCIA','COL',5),(13244,'EL CARMEN DE BOLIVAR','COL',5),(13248,'EL GUAMO','COL',5),(13268,'EL PEÑON','COL',5),(13300,'HATILLO DE LOBA','COL',5),(13430,'MAGANGUE','COL',5),(13433,'MAHATES','COL',5),(13440,'MARGARITA','COL',5),(13442,'MARIA LA BAJA','COL',5),(13458,'MONTECRISTO','COL',5),(13468,'MOMPOS','COL',5),(13473,'MORALES','COL',5),(13549,'PINILLOS','COL',5),(13580,'REGIDOR','COL',5),(13600,'RIO VIEJO','COL',5),(13620,'SAN CRISTOBAL','COL',5),(13647,'SAN ESTANISLAO','COL',5),(13650,'SAN FERNANDO','COL',5),(13654,'SAN JACINTO','COL',5),(13655,'SAN JACINTO DEL CAUCA','COL',5),(13657,'SAN JUAN NEPOMUCENO','COL',5),(13667,'SAN MARTIN DE LOBA','COL',5),(13670,'SAN PABLO','COL',5),(13673,'SANTA CATALINA','COL',5),(13683,'Santa Rosa','COL',5),(13688,'SANTA ROSA DEL SUR','COL',5),(13744,'SIMITI','COL',5),(13760,'SOPLAVIENTO','COL',5),(13780,'TALAIGUA NUEVO','COL',5),(13810,'TIQUISIO','COL',5),(13836,'TURBACO','COL',5),(13838,'TURBANA','COL',5),(13873,'VILLANUEVA','COL',5),(13894,'ZAMBRANO','COL',5),(15001,'TUNJA','COL',6),(15022,'ALMEIDA','COL',6),(15047,'AQUITANIA','COL',6),(15051,'ARCABUCO','COL',6),(15087,'BELEN','COL',6),(15090,'BERBEO','COL',6),(15092,'BETEITIVA','COL',6),(15097,'BOAVITA','COL',6),(15104,'BOYACA','COL',6),(15106,'BRICEÑO','COL',6),(15109,'BUENAVISTA','COL',6),(15114,'BUSBANZA','COL',6),(15131,'CALDAS','COL',6),(15135,'CAMPOHERMOSO','COL',6),(15162,'CERINZA','COL',6),(15172,'CHINAVITA','COL',6),(15176,'CHIQUINQUIRA','COL',6),(15180,'CHISCAS','COL',6),(15183,'CHITA','COL',6),(15185,'CHITARAQUE','COL',6),(15187,'CHIVATA','COL',6),(15189,'CIENEGA','COL',6),(15204,'COMBITA','COL',6),(15212,'COPER','COL',6),(15215,'CORRALES','COL',6),(15218,'COVARACHIA','COL',6),(15223,'CUBARA','COL',6),(15224,'CUCAITA','COL',6),(15226,'CUITIVA','COL',6),(15232,'CHIQUIZA','COL',6),(15236,'CHIVOR','COL',6),(15238,'DUITAMA','COL',6),(15244,'EL COCUY','COL',6),(15248,'EL ESPINO','COL',6),(15272,'FIRAVITOBA','COL',6),(15276,'FLORESTA','COL',6),(15293,'GACHANTIVA','COL',6),(15296,'GAMEZA','COL',6),(15299,'GARAGOA','COL',6),(15317,'GUACAMAYAS','COL',6),(15322,'GUATEQUE','COL',6),(15325,'GUAYATA','COL',6),(15332,'GUICAN','COL',6),(15362,'IZA','COL',6),(15367,'JENESANO','COL',6),(15368,'JERICO','COL',6),(15377,'LABRANZAGRANDE','COL',6),(15380,'LA CAPILLA','COL',6),(15401,'LA VICTORIA','COL',6),(15403,'LA UVITA','COL',6),(15407,'LEIVA','COL',6),(15425,'MACANAL','COL',6),(15442,'MARIPI','COL',6),(15455,'MIRAFLORES','COL',6),(15464,'MONGUA','COL',6),(15466,'MONGUI','COL',6),(15469,'MONIQUIRA','COL',6),(15476,'MOTAVITA','COL',6),(15480,'MUZO','COL',6),(15491,'NOBSA','COL',6),(15494,'NUEVO COLON','COL',6),(15500,'OICATA','COL',6),(15507,'OTANCHE','COL',6),(15511,'PACHAVITA','COL',6),(15514,'PAEZ','COL',6),(15516,'PAIPA','COL',6),(15518,'PAJARITO','COL',6),(15522,'PANQUEBA','COL',6),(15531,'PAUNA','COL',6),(15533,'PAYA','COL',6),(15537,'PAZ DEL RIO','COL',6),(15542,'PESCA','COL',6),(15550,'PISBA','COL',6),(15572,'PUERTO BOYACA','COL',6),(15580,'QUIPAMA','COL',6),(15599,'RAMIRIQUI','COL',6),(15600,'RAQUIRA','COL',6),(15621,'RONDON','COL',6),(15632,'SABOYA','COL',6),(15638,'SACHICA','COL',6),(15646,'SAMACA','COL',6),(15660,'SAN EDUARDO','COL',6),(15664,'SAN JOSE DE PARE','COL',6),(15667,'SAN LUIS DE GACENO','COL',6),(15673,'SAN MATEO','COL',6),(15676,'SAN MIGUEL DE SEMA','COL',6),(15681,'SAN PABLO DE BORBUR','COL',6),(15686,'SANTANA','COL',6),(15690,'SANTA MARIA','COL',6),(15693,'SANTA ROSA DE VITERBO','COL',6),(15696,'SANTA SOFIA','COL',6),(15720,'SATIVANORTE','COL',6),(15723,'SATIVASUR','COL',6),(15740,'SIACHOQUE','COL',6),(15753,'SOATA','COL',6),(15755,'SOCOTA','COL',6),(15757,'SOCHA','COL',6),(15759,'SOGAMOSO','COL',6),(15761,'SOMONDOCO','COL',6),(15762,'SORA','COL',6),(15763,'SOTAQUIRA','COL',6),(15764,'SORACA','COL',6),(15774,'SUSACON','COL',6),(15776,'SUTAMARCHAN','COL',6),(15778,'SUTATENZA','COL',6),(15790,'TASCO','COL',6),(15798,'TENZA','COL',6),(15804,'TIBANA','COL',6),(15806,'TIBASOSA','COL',6),(15808,'TINJACA','COL',6),(15810,'TIPACOQUE','COL',6),(15814,'TOCA','COL',6),(15816,'TOGUI','COL',6),(15820,'TOPAGA','COL',6),(15822,'TOTA','COL',6),(15832,'TUNUNGUA','COL',6),(15835,'TURMEQUE','COL',6),(15837,'TUTA','COL',6),(15839,'TUTASA','COL',6),(15842,'UMBITA','COL',6),(15861,'VENTAQUEMADA','COL',6),(15879,'VIRACACHA','COL',6),(15897,'ZETAQUIRA','COL',6),(17001,'MANIZALES','COL',7),(17013,'AGUADAS','COL',7),(17042,'ANSERMA','COL',7),(17050,'ARANZAZU','COL',7),(17088,'BELALCAZAR','COL',7),(17174,'CHINCHINA','COL',7),(17272,'FILADELFIA','COL',7),(17380,'LA DORADA','COL',7),(17388,'LA MERCED','COL',7),(17433,'MANZANARES','COL',7),(17442,'MARMATO','COL',7),(17444,'MARQUETALIA','COL',7),(17446,'MARULANDA','COL',7),(17486,'NEIRA','COL',7),(17495,'NORCASIA','COL',7),(17513,'PACORA','COL',7),(17524,'PALESTINA','COL',7),(17541,'PENSILVANIA','COL',7),(17614,'RIOSUCIO','COL',7),(17616,'RISARALDA','COL',7),(17653,'SALAMINA','COL',7),(17662,'SAMANA','COL',7),(17665,'SAN JOSE','COL',7),(17777,'SUPIA','COL',7),(17867,'VICTORIA','COL',7),(17873,'VILLAMARIA','COL',7),(17877,'VITERBO','COL',7),(18001,'FLORENCIA','COL',8),(18029,'ALBANIA','COL',8),(18094,'BELEN ANDAQUIES','COL',8),(18150,'CARTAGENA DEL CHAIRA','COL',8),(18205,'CURILLO','COL',8),(18247,'EL DONCELLO','COL',8),(18256,'EL PAUJIL','COL',8),(18410,'LA MONTAÑITA','COL',8),(18460,'MILAN','ITA',8),(18479,'MORELIA','COL',8),(18592,'PUERTO RICO','COL',8),(18610,'SAN JOSE DE FRAGUA','COL',8),(18753,'SAN  VICENTE DEL CAGUAN','COL',8),(18756,'SOLANO','COL',8),(18785,'SOLITA','COL',8),(18860,'VALPARAISO','COL',8),(19001,'POPAYAN','COL',10),(19022,'ALMAGUER','COL',10),(19050,'ARGELIA','COL',10),(19075,'BALBOA','COL',10),(19100,'BOLIVAR','COL',10),(19110,'BUENOS AIRES','COL',10),(19130,'CAJIBIO','COL',10),(19137,'CALDONO','COL',10),(19142,'CALOTO','COL',10),(19212,'CORINTO','COL',10),(19256,'EL TAMBO','COL',10),(19290,'FLORENCIA','COL',10),(19318,'GUAPI','COL',10),(19355,'INZA','COL',10),(19364,'JAMBALO','COL',10),(19392,'LA SIERRA','COL',10),(19397,'LA VEGA','COL',10),(19418,'LOPEZ','COL',10),(19450,'MERCADERES','COL',10),(19455,'MIRANDA','COL',10),(19473,'MORALES','COL',10),(19513,'PADILLA','COL',10),(19517,'PAEZ','COL',10),(19532,'PATIA(EL BORDO)','COL',10),(19533,'PIAMONTE','COL',10),(19548,'PIENDAMO','COL',10),(19573,'PUERTO TEJADA','COL',10),(19585,'PURACE','COL',10),(19622,'ROSAS','COL',10),(19693,'SAN SEBASTIAN','COL',10),(19698,'SANTANDER DE QUILICHAO','COL',10),(19701,'STA ROSA','COL',10),(19743,'SILVIA','COL',10),(19760,'SOTARA','COL',10),(19780,'SUAREZ','COL',10),(19785,'SUCRE','COL',10),(19807,'TIMBIO','COL',10),(19809,'TIMBIQUI','COL',10),(19821,'TORIBIO','COL',10),(19824,'TOTORO','COL',10),(19845,'VILLA RICA','COL',10),(20001,'VALLEDUPAR','COL',11),(20011,'Aguachica','COL',11),(20013,'AGUSTIN CODAZZI','COL',11),(20032,'ASTREA','COL',11),(20045,'BECERRIL','COL',11),(20060,'BOSCONIA','COL',11),(20175,'CHIMICHAGUA','COL',11),(20178,'CHIRIGUANA','COL',11),(20228,'CURUMANI','COL',11),(20238,'EL COPEY','COL',11),(20250,'EL PASO','COL',11),(20295,'GAMARRA','COL',11),(20310,'GONZALEZ','COL',11),(20383,'LA GLORIA','COL',11),(20400,'LA JAGUA IBIRICO','COL',11),(20443,'MANAURE BALCON DEL CESAR','COL',11),(20517,'PAILITAS','COL',11),(20550,'PELAYA','COL',11),(20570,'PUEBLO BELLO','COL',11),(20614,'RIO DE ORO','COL',11),(20621,'ROBLES (LA PAZ)','COL',11),(20710,'SAN ALBERTO','COL',11),(20750,'SAN DIEGO','COL',11),(20770,'SAN MARTIN','COL',11),(20787,'TAMALAMEQUE','COL',11),(23001,'MONTERIA','COL',13),(23068,'AYAPEL','COL',13),(23079,'BUENAVISTA','COL',13),(23090,'CANALETE','COL',13),(23162,'CERETE','COL',13),(23168,'CHIMA','COL',13),(23182,'CHINU','COL',13),(23189,'CIENAGA DE ORO','COL',13),(23300,'COTORRA','COL',13),(23350,'LA APARTADA','COL',13),(23417,'LORICA','COL',13),(23419,'LOS CORDOBAS','COL',13),(23464,'MOMIL','COL',13),(23466,'MONTELIBANO','COL',13),(23500,'MOÑITOS','COL',13),(23555,'PLANETA RICA','COL',13),(23570,'PUEBLO NUEVO','COL',13),(23574,'PUERTO ESCONDIDO','COL',13),(23580,'PUERTO LIBERTADOR','COL',13),(23586,'PURISIMA','COL',13),(23660,'SAHAGUN','COL',13),(23670,'SAN ANDRES SOTAVENTO','COL',13),(23672,'SAN ANTERO','COL',13),(23675,'SAN BERNARDO VIENTO','COL',13),(23678,'SAN CARLOS','COL',13),(23686,'SAN PELAYO','COL',13),(23807,'TIERRALTA','COL',13),(23855,'VALENCIA','COL',13),(25001,'Agua de Dios','COL',14),(25019,'ALBAN','COL',14),(25035,'ANAPOIMA','COL',14),(25040,'ANOLAIMA','COL',14),(25053,'ARBELAEZ','COL',14),(25086,'BELTRAN','COL',14),(25095,'BITUIMA','COL',14),(25099,'BOJACA','COL',14),(25120,'CABRERA','COL',14),(25123,'CACHIPAY','COL',14),(25126,'CAJICA','COL',14),(25148,'CAPARRAPI','COL',14),(25151,'CAQUEZA','COL',14),(25154,'CARMEN DE CARUPA','COL',14),(25168,'CHAGUANI','COL',14),(25175,'CHIA','COL',14),(25178,'CHIPAQUE','COL',14),(25181,'CHOACHI','COL',14),(25183,'CHOCONTA','COL',14),(25200,'COGUA','COL',14),(25214,'COTA','COL',14),(25224,'CUCUNUBA','COL',14),(25245,'EL COLEGIO','COL',14),(25258,'EL PEÑON','COL',14),(25260,'EL ROSAL','COL',14),(25269,'FACATATIVA','COL',14),(25279,'FOMEQUE','COL',14),(25281,'FOSCA','COL',14),(25286,'FUNZA','COL',14),(25288,'FUQUENE','COL',14),(25290,'FUSAGASUGA','COL',14),(25293,'GACHALA','COL',14),(25295,'GACHANCIPA','COL',14),(25297,'GACHETA','COL',14),(25299,'GAMA','COL',14),(25307,'GIRARDOT','COL',14),(25312,'GRANADA','COL',14),(25317,'GUACHETA','COL',14),(25320,'GUADUAS','COL',14),(25322,'GUASCA','COL',14),(25324,'GUATAQUI','COL',14),(25326,'GUATAVITA','COL',14),(25328,'GUAYABAL DE SIQUIMA','COL',14),(25335,'GUAYABETAL','COL',14),(25339,'GUTIERREZ','COL',14),(25368,'JERUSALEN','COL',14),(25372,'JUNIN','COL',14),(25377,'LA CALERA','COL',14),(25386,'LA MESA','COL',14),(25394,'LA PALMA','COL',14),(25398,'LA PEÑA','COL',14),(25402,'LA VEGA','COL',14),(25407,'LENGUAZAQUE','COL',14),(25426,'MACHETA','COL',14),(25430,'MADRID','COL',14),(25436,'MANTA','COL',14),(25438,'MEDINA','COL',14),(25473,'MOSQUERA','COL',14),(25483,'NARIÑO','COL',14),(25486,'NEMOCON','COL',14),(25488,'NILO','COL',14),(25489,'NIMAIMA','COL',14),(25491,'NOCAIMA','COL',14),(25506,'VENECIA (OSPINA PEREZ)','COL',14),(25513,'PACHO','COL',14),(25518,'PAIME','COL',14),(25524,'PANDI','COL',14),(25530,'PARATEBUENO','COL',14),(25535,'PASCA','COL',14),(25572,'PUERTO SALGAR','COL',14),(25580,'PULI','COL',14),(25592,'QUEBRADANEGRA','COL',14),(25594,'QUETAME','COL',14),(25596,'QUIPILE','COL',14),(25599,'RAFAEL REYES','COL',14),(25612,'RICAURTE','COL',14),(25645,'SAN  ANTONIO DEL  TEQUENDAMA','COL',14),(25649,'SAN BERNARDO','COL',14),(25653,'SAN CAYETANO','COL',14),(25658,'SAN FRANCISCO','COL',14),(25662,'SAN JUAN DE RIOSECO','COL',14),(25718,'SASAIMA','COL',14),(25736,'SESQUILE','COL',14),(25740,'SIBATE','COL',14),(25743,'SILVANIA','COL',14),(25745,'SIMIJACA','COL',14),(25754,'SOACHA','COL',14),(25758,'SOPO','COL',14),(25769,'SUBACHOQUE','COL',14),(25772,'SUESCA','COL',14),(25777,'SUPATA','COL',14),(25779,'SUSA','COL',14),(25781,'SUTATAUSA','COL',14),(25785,'TABIO','COL',14),(25793,'TAUSA','COL',14),(25797,'TENA','COL',14),(25799,'TENJO','COL',14),(25805,'TIBACUY','COL',14),(25807,'TIBIRITA','COL',14),(25815,'TOCAIMA','COL',14),(25817,'TOCANCIPA','COL',14),(25823,'TOPAIPI','COL',14),(25839,'UBALA','COL',14),(25841,'UBAQUE','COL',14),(25843,'UBATE','COL',14),(25845,'UNE','COL',14),(25851,'UTICA','COL',14),(25862,'VERGARA','COL',14),(25867,'VIANI','COL',14),(25871,'VILLAGOMEZ','COL',14),(25873,'VILLAPINZON','COL',14),(25875,'VILLETA','COL',14),(25878,'VIOTA','COL',14),(25885,'YACOPI','COL',14),(25898,'ZIPACON','COL',14),(25899,'ZIPAQUIRA','COL',14),(27001,'QUIBDO','COL',12),(27006,'Acandi','COL',12),(27025,'ALTO BAUDO (PIE DE PATO)','COL',12),(27050,'ATRATO','COL',12),(27073,'BAGADO','COL',12),(27075,'BAHIA SOLANO (MUTIS)','COL',12),(27077,'BAJO BAUDO (PIZARRO)','COL',12),(27099,'BOJAYA (BELLAVISTA)','COL',12),(27135,'CANTON DE SAN PABLO','COL',12),(27150,'CARMEN DEL DARIEN','COL',12),(27160,'CERTEGUI','COL',12),(27205,'CONDOTO','COL',12),(27245,'EL CARMEN','COL',12),(27250,'LITORAL DEL SAN JUAN','COL',12),(27361,'ISTMINA','COL',12),(27372,'JURADO','COL',12),(27413,'LLORO','COL',12),(27425,'MEDIO ATRATO','COL',12),(27430,'MEDIO BAUDO (BOCA DE PEPE)','COL',12),(27450,'MEDIO SAN JUAN','COL',12),(27491,'NOVITA','COL',12),(27495,'NUQUI','COL',12),(27580,'RIO IRO','COL',12),(27600,'RIO QUITO','COL',12),(27615,'RIOSUCIO','COL',12),(27660,'SAN JOSE DEL PALMAR','COL',12),(27745,'SIPI','COL',12),(27787,'TADO','COL',12),(27800,'UNGUIA','COL',12),(27810,'UNION PANAMERICANA','COL',12),(41001,'NEIVA','COL',18),(41006,'Acevedo','COL',18),(41013,'Agrado','COL',18),(41016,'AIPE','COL',18),(41020,'ALGECIRAS','COL',18),(41026,'ALTAMIRA','COL',18),(41078,'BARAYA','COL',18),(41132,'CAMPOALEGRE','COL',18),(41206,'COLOMBIA','COL',18),(41244,'ELIAS','COL',18),(41298,'GARZON','COL',18),(41306,'GIGANTE','COL',18),(41319,'GUADALUPE','COL',18),(41349,'HOBO','COL',18),(41357,'IQUIRA','COL',18),(41359,'ISNOS','COL',18),(41378,'LA ARGENTINA','COL',18),(41396,'LA PLATA','COL',18),(41483,'NATAGA','COL',18),(41503,'OPORAPA','COL',18),(41518,'PAICOL','COL',18),(41524,'PALERMO','COL',18),(41530,'PALESTINA','COL',18),(41548,'PITAL','COL',18),(41551,'PITALITO','COL',18),(41615,'RIVERA','COL',18),(41660,'SALADOBLANCO','COL',18),(41668,'SAN AGUSTIN','COL',18),(41676,'SANTA MARIA','COL',18),(41770,'SUAZA','COL',18),(41791,'TARQUI','COL',18),(41797,'TESALIA','COL',18),(41799,'TELLO','COL',18),(41801,'TERUEL','COL',18),(41807,'TIMANA','COL',18),(41872,'VILLAVIEJA','COL',18),(41885,'YAGUARA','COL',18),(44001,'RIOHACHA','COL',16),(44035,'ALBANIA','COL',16),(44078,'BARRANCAS','COL',16),(44090,'DIBULLA','COL',16),(44098,'DISTRACCION','COL',16),(44110,'EL MOLINO','COL',16),(44279,'FONSECA','COL',16),(44378,'HATONUEVO','COL',16),(44420,'LA JAGUA DEL PILAR','COL',16),(44430,'MAICAO','COL',16),(44560,'MANAURE','COL',16),(44650,'SAN JUAN DEL CESAR','COL',16),(44847,'URIBIA','COL',16),(44855,'URUMITA','COL',16),(44874,'VILLANUEVA','COL',16),(47001,'SANTA MARTA','COL',19),(47030,'ALGARROBO','COL',19),(47053,'ARACATACA','COL',19),(47058,'ARIGUANI','COL',19),(47161,'CERRO SAN ANTONIO','COL',19),(47170,'CHIVOLO','COL',19),(47189,'CIENAGA','COL',19),(47205,'CONCORDIA','COL',19),(47245,'EL BANCO','COL',19),(47258,'EL PIÑON','COL',19),(47268,'EL RETEN','COL',19),(47288,'FUNDACION','COL',19),(47318,'GUAMAL','COL',19),(47460,'NUEVA GRANADA','COL',19),(47541,'PEDRAZA','COL',19),(47545,'PIJIÑO DEL CARMEN','COL',19),(47551,'PIVIJAY','COL',19),(47555,'PLATO','COL',19),(47570,'PUEBLOVIEJO','COL',19),(47605,'REMOLINO','COL',19),(47660,'SABANAS DE SAN ANGEL','COL',19),(47675,'SALAMINA','COL',19),(47692,'SAN SEBASTIAN DE BUENAVISTA','COL',19),(47703,'SAN ZENON','COL',19),(47707,'SANTA ANA','COL',19),(47720,'SANTA BARBARA DE PINTO','COL',19),(47745,'SITIONUEVO','COL',19),(47798,'TENERIFE','COL',19),(47960,'ZAPAYAN','COL',19),(47980,'ZONA BANANERA','COL',19),(50001,'VILLAVICENCIO','COL',20),(50006,'Acacias','COL',20),(50110,'BARRANCA DE UPIA','COL',20),(50124,'CABUYARO','COL',20),(50150,'CASTILLA LA NUEVA','COL',20),(50223,'CUBARRAL','COL',20),(50226,'CUMARAL','COL',20),(50245,'EL CALVARIO','COL',20),(50251,'EL CASTILLO','COL',20),(50270,'EL DORADO','COL',20),(50287,'FUENTE DE ORO','COL',20),(50313,'GRANADA','COL',20),(50318,'GUAMAL','COL',20),(50325,'MAPIRIPAN','COL',20),(50330,'MESETAS','COL',20),(50350,'LA MACARENA','COL',20),(50370,'LA URIBE','COL',20),(50400,'LEJANIAS','COL',20),(50450,'PUERTO CONCORDIA','COL',20),(50568,'PUERTO GAITAN','COL',20),(50573,'PUERTO LOPEZ','COL',20),(50577,'PUERTO LLERAS','COL',20),(50590,'PUERTO RICO','COL',20),(50606,'RESTREPO','COL',20),(50680,'SAN CARLOS GUAROA','COL',20),(50683,'SAN  JUAN DE ARAMA','COL',20),(50686,'SAN JUANITO','COL',20),(50689,'SAN MARTIN','COL',20),(50711,'VISTA HERMOSA','COL',20),(52001,'PASTO','COL',22),(52019,'ALBAN','COL',22),(52022,'ALDAÑA','COL',22),(52036,'ANCUYA','COL',22),(52051,'ARBOLEDA','COL',22),(52079,'BARBACOAS','COL',22),(52083,'BELEN','COL',22),(52110,'BUESACO','COL',22),(52203,'COLON(GENOVA)','COL',22),(52207,'CONSACA','COL',22),(52210,'CONTADERO','COL',22),(52215,'CORDOBA','COL',22),(52224,'CUASPUD','COL',22),(52227,'CUMBAL','COL',22),(52233,'CUMBITARA','COL',22),(52240,'CHACHAGUI','COL',22),(52250,'EL CHARCO','COL',22),(52254,'EL PEÑOL','COL',22),(52256,'EL ROSARIO','COL',22),(52258,'EL TABLON','COL',22),(52260,'EL TAMBO','COL',22),(52287,'FUNES','COL',22),(52317,'GUACHUCAL','COL',22),(52320,'GUAITARILLA','COL',22),(52323,'GUALMATAN','COL',22),(52352,'ILES','COL',22),(52354,'IMUES','COL',22),(52356,'IPIALES','COL',22),(52378,'LA CRUZ','COL',22),(52381,'LA FLORIDA','COL',22),(52385,'LA LLANADA','COL',22),(52390,'LA TOLA','COL',22),(52399,'LA UNION','COL',22),(52405,'LEIVA','COL',22),(52411,'LINARES','COL',22),(52418,'LOS ANDES','COL',22),(52427,'MAGUI','COL',22),(52435,'MALLAMA','COL',22),(52473,'MOSQUERA','COL',22),(52480,'NARIÑO','COL',22),(52490,'OLAYA HERRERA','COL',22),(52506,'OSPINA','COL',22),(52520,'PIZARRO','COL',22),(52540,'POLICARPA','COL',22),(52560,'POTOSI','COL',22),(52565,'PROVIDENCIA','COL',22),(52573,'PUERRES','COL',22),(52585,'PUPIALES','COL',22),(52612,'RICAURTE','COL',22),(52621,'ROBERTO PAYAN','COL',22),(52678,'SAMANIEGO','COL',22),(52683,'SANDONA','COL',22),(52685,'SAN BERNARDO','COL',22),(52687,'SAN LORENZO','COL',22),(52693,'SAN PABLO','COL',22),(52694,'SAN PEDRO DE CARTAGO','COL',22),(52696,'SANTA BARBARA','COL',22),(52699,'SANTACRUZ','COL',22),(52720,'SAPUYES','COL',22),(52786,'TAMINANGO','COL',22),(52788,'TANGUA','COL',22),(52835,'TUMACO','COL',22),(52838,'TUQUERRES','COL',22),(52885,'YACUANQUER','COL',22),(54001,'CUCUTA','COL',21),(54003,'AbregoBREGO','COL',21),(54051,'ARBOLEDAS','COL',21),(54099,'BOCHALEMA','COL',21),(54109,'BUCARASICA','COL',21),(54125,'CACOTA','COL',21),(54128,'CACHIRA','COL',21),(54172,'CHINACOTA','COL',21),(54174,'CHITAGA','COL',21),(54206,'CONVENCION','COL',21),(54223,'CUCUTILLA','COL',21),(54239,'DURANIA','COL',21),(54245,'EL CARMEN','COL',21),(54250,'EL TARRA','COL',21),(54261,'EL ZULIA','COL',21),(54313,'GRAMALOTE','COL',21),(54344,'HACARI','COL',21),(54347,'HERRAN','COL',21),(54377,'LABATECA','COL',21),(54385,'LA ESPERANZA','COL',21),(54398,'LA PLAYA','COL',21),(54405,'LOS PATIOS','COL',21),(54418,'LOURDES','COL',21),(54480,'MUTISCUA','COL',21),(54498,'OCAÑA','COL',21),(54518,'PAMPLONA','COL',21),(54520,'PAMPLONITA','COL',21),(54553,'PUERTO SANTANDER','COL',21),(54599,'RAGONVALIA','COL',21),(54660,'SALAZAR','COL',21),(54670,'SAN CALIXTO','COL',21),(54673,'SAN CAYETANO','COL',21),(54680,'SANTIAGO','COL',21),(54720,'SARDINATA','COL',21),(54743,'SILOS','COL',21),(54800,'TEORAMA','COL',21),(54810,'Tibu','COL',21),(54820,'Toledo Norte Santarder','COL',21),(54871,'VILLACARO','COL',21),(54874,'VILLA DEL ROSARIO','COL',21),(63001,'ARMENIA','COL',24),(63111,'BUENAVISTA','COL',24),(63130,'CALARCA','COL',24),(63190,'CIRCASIA','COL',24),(63212,'CORDOBA','COL',24),(63272,'FILANDIA','COL',24),(63302,'GENOVA','COL',24),(63401,'LA TEBAIDA','COL',24),(63470,'MONTENEGRO','COL',24),(63548,'PIJAO','COL',24),(63594,'QUIMBAYA','COL',24),(63690,'SALENTO','COL',24),(66001,'PEREIRA','COL',25),(66045,'APIA','COL',25),(66075,'BALBOA','COL',25),(66088,'BELEN DE UMBRIA','COL',25),(66170,'DOS QUEBRADAS','COL',25),(66318,'GUATICA','COL',25),(66383,'LA CELIA','COL',25),(66400,'LA VIRGINIA','COL',25),(66440,'MARSELLA','COL',25),(66456,'MISTRATO','COL',25),(66572,'PUEBLO RICO','COL',25),(66594,'QUINCHIA','COL',25),(66682,'SANTA ROSA DE CABAL','COL',25),(66687,'SANTUARIO','COL',25),(68001,'Bucaramanga','COL',27),(68013,'AGUADA','COL',27),(68020,'ALBANIA','COL',27),(68051,'ARATOCA','COL',27),(68077,'BARBOSA','COL',27),(68079,'BARICHARA','COL',27),(68081,'BARRANCABERMEJA','COL',27),(68092,'BETULIA','COL',27),(68101,'BOLIVAR','COL',27),(68121,'CABRERA','COL',27),(68132,'CALIFORNIA','COL',27),(68147,'CAPITANEJO','COL',27),(68152,'CARCASI','COL',27),(68160,'CEPITA','COL',27),(68162,'CERRITO','COL',27),(68167,'CHARALA','COL',27),(68169,'CHARTA','COL',27),(68176,'CHIMA','COL',27),(68179,'CHIPATA','COL',27),(68190,'CIMITARRA','COL',27),(68207,'CONCEPCION','COL',27),(68209,'CONFINES','COL',27),(68211,'CONTRATACION','COL',27),(68217,'COROMORO','COL',27),(68229,'CURITI','COL',27),(68235,'EL CARMEN','COL',27),(68245,'EL GUACAMAYO','COL',27),(68250,'EL PEÑON','COL',27),(68255,'EL PLAYON','COL',27),(68264,'ENCINO','COL',27),(68266,'ENCISO','COL',27),(68271,'FLORIAN','COL',27),(68276,'FLORIDABLANCA','COL',27),(68296,'GALAN','COL',27),(68298,'GAMBITA','COL',27),(68307,'GIRON','COL',27),(68318,'GUACA','COL',27),(68320,'GUADALUPE','COL',27),(68322,'GUAPOTA','COL',27),(68324,'GUAVATA','COL',27),(68327,'GUEPSA','COL',27),(68344,'HATO','COL',27),(68368,'JESUS MARIA','COL',27),(68370,'JORDAN','COL',27),(68377,'LA BELLEZA','COL',27),(68385,'LANDAZURI','COL',27),(68397,'LA PAZ','COL',27),(68406,'LEBRIJA','COL',27),(68418,'LOS SANTOS','COL',27),(68425,'MACARAVITA','COL',27),(68432,'MALAGA','COL',27),(68444,'MATANZA','COL',27),(68464,'MOGOTES','COL',27),(68468,'MOLAGAVITA','COL',27),(68498,'OCAMONTE','COL',27),(68500,'OIBA','COL',27),(68502,'ONZAGA','COL',27),(68522,'PALMAR','COL',27),(68524,'PALMAS DEL SOCORRO','COL',27),(68533,'PARAMO','COL',27),(68547,'PIEDECUESTA','COL',27),(68549,'PINCHOTE','COL',27),(68572,'PUENTE NACIONAL','COL',27),(68573,'PUERTO PARRA','COL',27),(68575,'PUERTO WILCHES','COL',27),(68615,'RIONEGRO','COL',27),(68655,'SABANA DE TORRES','COL',27),(68669,'SAN ANDRES','COL',27),(68673,'SAN BENITO','COL',27),(68679,'SAN GIL','COL',27),(68682,'SAN JOAQUIN','COL',27),(68684,'SAN JOSE DE MIRANDA','COL',27),(68686,'SAN MIGUEL','COL',27),(68689,'SAN VICENTE DE CHUCURI','COL',27),(68705,'SANTA BARBARA','COL',27),(68720,'SANTA HELENA','COL',27),(68745,'SIMACOTA','COL',27),(68755,'SOCORRO','COL',27),(68770,'SUAITA','COL',27),(68773,'SUCRE','COL',27),(68780,'SURATA','COL',27),(68820,'TONA','COL',27),(68855,'VALLE SAN JOSE','COL',27),(68861,'VELEZ','COL',27),(68867,'VETAS','COL',27),(68872,'VILLANUEVA','COL',27),(68895,'ZAPATOCA','COL',27),(70001,'SINCELEJO','COL',28),(70110,'BUENAVISTA','COL',28),(70124,'CAIMITO','COL',28),(70204,'COLOSO','COL',28),(70215,'COROZAL','COL',28),(70221,'COVEÑAS','COL',28),(70230,'CHALAN','COL',28),(70233,'EL ROBLE','COL',28),(70235,'GALERAS','COL',28),(70265,'GUARANDA','COL',28),(70400,'LA UNION','COL',28),(70418,'LOS PALMITOS','COL',28),(70429,'MAJAGUAL','COL',28),(70473,'MORROA','COL',28),(70508,'OVEJAS','COL',28),(70523,'PALMITO','COL',28),(70670,'SAMPUES','COL',28),(70678,'SAN BENITO ABAD','COL',28),(70702,'SAN JUAN DE BETULIA','COL',28),(70708,'SAN MARCOS','COL',28),(70713,'SAN ONOFRE','COL',28),(70717,'SAN PEDRO','COL',28),(70742,'SINCE','COL',28),(70771,'SUCRE','COL',28),(70820,'TOLU','COL',28),(70823,'TOLUVIEJO','COL',28),(73001,'IBAGUE','COL',29),(73024,'ALPUJARRA','COL',29),(73026,'ALVARADO','COL',29),(73030,'AMBALEMA','COL',29),(73043,'ANZOATEGUI','COL',29),(73055,'ARMERO (GUAYABAL)','COL',29),(73067,'ATACO','COL',29),(73124,'CAJAMARCA','COL',29),(73148,'CARMEN APICALA','COL',29),(73152,'CASABIANCA','COL',29),(73168,'CHAPARRAL','COL',29),(73200,'COELLO','COL',29),(73217,'COYAIMA','COL',29),(73226,'CUNDAY','COL',29),(73236,'DOLORES','COL',29),(73268,'ESPINAL','COL',29),(73270,'FALAN','COL',29),(73275,'FLANDES','COL',29),(73283,'FRESNO','COL',29),(73319,'GUAMO','COL',29),(73347,'HERVEO','COL',29),(73349,'HONDA','COL',29),(73352,'ICONONZO','COL',29),(73408,'LERIDA','COL',29),(73411,'LIBANO','COL',29),(73443,'MARIQUITA','COL',29),(73449,'MELGAR','COL',29),(73461,'MURILLO','COL',29),(73483,'NATAGAIMA','COL',29),(73504,'ORTEGA','COL',29),(73520,'PALOCABILDO','COL',29),(73547,'PIEDRAS','COL',29),(73555,'PLANADAS','COL',29),(73563,'PRADO','COL',29),(73585,'PURIFICACION','COL',29),(73616,'RIOBLANCO','COL',29),(73622,'RONCESVALLES','COL',29),(73624,'ROVIRA','COL',29),(73671,'SALDAÑA','COL',29),(73675,'SAN ANTONIO','COL',29),(73678,'SAN LUIS','COL',29),(73686,'SANTA ISABEL','COL',29),(73770,'SUAREZ','COL',29),(73854,'VALLE DE S JUAN','COL',29),(73861,'VENADILLO','COL',29),(73870,'VILLAHERMOSA','COL',29),(73873,'VILLARRICA','COL',29),(76001,'CALI','COL',30),(76020,'ALCALA','COL',30),(76036,'ANDALUCIA','COL',30),(76041,'ANSERMANUEVO','COL',30),(76054,'ARGELIA','COL',30),(76100,'BOLIVAR','COL',30),(76109,'BUENAVENTURA','COL',30),(76111,'BUGA','COL',30),(76113,'BUGALAGRANDE','COL',30),(76122,'CAICEDONIA','COL',30),(76126,'CALIMA','COL',30),(76130,'CANDELARIA','COL',30),(76147,'CARTAGO','COL',30),(76233,'DAGUA','COL',30),(76243,'EL AGUILA','COL',30),(76246,'EL CAIRO','COL',30),(76248,'EL CERRITO','COL',30),(76250,'EL DOVIO','COL',30),(76275,'FLORIDA','COL',30),(76306,'GINEBRA','COL',30),(76318,'GUACARI','COL',30),(76364,'JAMUNDI','COL',30),(76377,'LA CUMBRE','COL',30),(76400,'LA UNION','COL',30),(76403,'LA VICTORIA','COL',30),(76497,'OBANDO','COL',30),(76520,'PALMIRA','COL',30),(76563,'PRADERA','COL',30),(76606,'Restrepo','COL',30),(76616,'Riofrio','COL',30),(76622,'Roldanillo','COL',30),(76670,'San Pedro','COL',30),(76736,'Sevilla','COL',30),(76823,'Toro','COL',30),(76828,'Trujillo','COL',30),(76834,'Tulua','COL',30),(76845,'Ulloa','COL',30),(76863,'Versalles','COL',30),(76869,'Vijes','COL',30),(76890,'Yotoc','COL',30),(76892,'Yumbo','COL',30),(76895,'Zarzal','COL',30),(81001,'ARAUCA','COL',4),(81065,'ARAUQUITA','COL',4),(81220,'CRAVO NORTE','COL',4),(81300,'FORTUL','COL',4),(81591,'PUERTO RONDON','COL',4),(81736,'SARAVENA','COL',4),(81794,'TAME','COL',4),(85001,'YOPAL','COL',9),(85010,'AGUAZUL','COL',9),(85015,'CHAMEZA','COL',9),(85125,'HATO COROZAL','COL',9),(85136,'LA SALINA','COL',9),(85139,'MANI','COL',9),(85162,'MONTERREY','COL',9),(85225,'NUNCHIA','COL',9),(85230,'OROCUE','COL',9),(85250,'PAZ DE ARIPORO','COL',9),(85263,'PORE','COL',9),(85279,'RECETOR','COL',9),(85300,'SABANALARGA','COL',9),(85315,'SACAMA','COL',9),(85325,'SAN LUIS DE PALENQUE','COL',9),(85400,'TAMARA','COL',9),(85410,'TAURAMENA','COL',9),(85430,'TRINIDAD','COL',9),(85440,'VILLANUEVA','COL',9),(86001,'MOCOA','COL',23),(86219,'COLON','COL',23),(86320,'ORITO','COL',23),(86568,'PUERTO ASIS','COL',23),(86569,'PUERTO CAYCEDO','COL',23),(86571,'PUERTO GUZMAN','COL',23),(86573,'PUERTO LEGUIZAMO','COL',23),(86749,'SIBUNDOY','COL',23),(86755,'SAN FRANCISCO','COL',23),(86757,'SAN MIGUEL','COL',23),(86760,'SANTIAGO','COL',23),(86865,'VALLE DEL GUAMUEZ','COL',23),(86885,'VILLAGARZON','COL',23),(88001,'SAN ANDRES','COL',26),(88564,'PROVIDENCIA','COL',26),(91001,'LETICIA','COL',3),(91540,'PUERTO NARIÑO','COL',3),(94001,'PUERTO INIRIDA','COL',15),(95001,'SAN JOSE DEL GUAVIARE','COL',17),(95015,'CALAMAR','COL',17),(95025,'EL RETORNO','COL',17),(95200,'MIRAFLORES','COL',17),(97001,'Mitu','COL',31),(97161,'Caruru','COL',31),(97666,'Taraira','COL',31),(99001,'Puerto Carreño','COL',32),(99524,'La Primavera','COL',32),(99624,'Santa Rosalia','COL',32),(99773,'Cumaribo','COL',32),(99774,'Banadía','COL',4),(99775,'Borco','BHS',0),(99776,'Majuro','MAI',0),(99777,'Rio Haina','DOM',0),(99778,'Apiay','COL',20),(99779,'Araguaney','COL',20),(99780,'Cuoiagua','COL',9),(99781,'Sebastopol','COL',20),(99782,'Samore','COL',21),(99783,'Tilbury','GBR',0),(99784,'El Centro','COL',27),(99785,'Cusiana','COL',20),(99786,'Vasconia','COL',6),(99787,'Cupiagua','COL',9),(99788,'Provincia','COL',27),(99789,'Virgin Gorda','GB',0),(99790,'Port Everglades','USA',0),(99791,'Duesseldorf Rhein-Ruhr','DEU',0),(99792,'Guadero','COL',14),(99794,'Chichimene','COL',20),(99795,'Campo Dina','COL',18),(99796,'Nanjing','CHN',0),(99797,'Amsterdam','HOL',0),(99798,'Nhava Sheva','IND',0),(99799,'Vasteras Hasslo','SUI',0),(99800,'Mansilla','ESP',0),(99801,'Casabe','COL',1),(99802,'Guadero','COL',14),(99803,'Pozos Colorados','COL',19),(99804,'Busan','COR',0),(99805,'Gualanday','COL',29),(99806,'Iowa','USA',0),(99807,'Suria','ESP',0),(99808,'Gothenborg','SWE',0),(99810,'Venice Tessera','ITA',0),(99811,'N/A','N/A',0),(99812,'Tanager','NOR',0),(99813,'Litvinov','CZE',0),(99814,'Humble','USA',0),(99815,'Duesseldorf','DEU',0),(99816,'WISCONSIN','USA',0),(99817,'Minnesota','USA',0),(99818,'Galveston','USA',0),(99819,'Foxboro','USA',0),(99820,'Wellsville','USA',0),(99821,'Massachussetts','USA',0),(99822,'Painted Post','USA',0),(99823,'Port Everglades','USA',0);
/*!40000 ALTER TABLE `qzq4u_core_ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_core_clientes`
--

DROP TABLE IF EXISTS `qzq4u_core_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_core_clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_cliente` int(11) NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `razon_social` varchar(256) DEFAULT NULL,
  `nit` int(11) NOT NULL,
  `pais` varchar(5) NOT NULL,
  `ciudad` int(2) NOT NULL,
  `barrio` varchar(45) NOT NULL,
  `direccion` varchar(512) NOT NULL,
  `oficina` varchar(45) NOT NULL,
  `tel_fijo` int(11) NOT NULL,
  `trel_movil` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `estado` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `token` varchar(128) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `id_cantera` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_core_clientes`
--

LOCK TABLES `qzq4u_core_clientes` WRITE;
/*!40000 ALTER TABLE `qzq4u_core_clientes` DISABLE KEYS */;
INSERT INTO `qzq4u_core_clientes` VALUES (1,1,'Armando Manzanero','Cantante',2147483647,'',0,'','calle 106 # 5 - 25','',2224444,310333333,'ejemplo@ejemplo.com',2,1,'concan','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,6),(2,1,'Argos',NULL,2151251,'',0,'','colombia','',0,251,'wetqwetqw ',2,1,'conca2','2016-08-15 21:04:00',205,'0000-00-00 00:00:00',0,6);
/*!40000 ALTER TABLE `qzq4u_core_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_core_conductores`
--

DROP TABLE IF EXISTS `qzq4u_core_conductores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_core_conductores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `cedula` int(11) NOT NULL,
  `direccion` varchar(256) NOT NULL,
  `tel_fijo` int(11) NOT NULL,
  `movil` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `id_cantera` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_core_conductores`
--

LOCK TABLES `qzq4u_core_conductores` WRITE;
/*!40000 ALTER TABLE `qzq4u_core_conductores` DISABLE KEYS */;
INSERT INTO `qzq4u_core_conductores` VALUES (1,'Carlos Valderrama',4567809,'Cl 34 34-45',3245637,2147483647,'valderrama@hotmail.com',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,6),(2,'Faustino Asprilla',4567890,'Cl 45 34-45',3424567,2147483647,'faustinoa@hotmail.com',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,6),(3,'chepe',123456,'ibiza',33333333,2147483647,'correo@correo.com',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,6),(4,'don pedro',12232132,'villa ',2147483647,2147483647,'ejemplo@ejemplo.com',1,'2016-11-05 00:00:00',1,'2016-11-05 00:00:00',1,6),(5,'andres',12122211,'',0,121111,'andres@erwwew.com',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,6);
/*!40000 ALTER TABLE `qzq4u_core_conductores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_core_departamento`
--

DROP TABLE IF EXISTS `qzq4u_core_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_core_departamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `CountryCode` varchar(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_core_departamento`
--

LOCK TABLES `qzq4u_core_departamento` WRITE;
/*!40000 ALTER TABLE `qzq4u_core_departamento` DISABLE KEYS */;
INSERT INTO `qzq4u_core_departamento` VALUES (1,'Antioquía','COL'),(2,'Atlantico','COL'),(3,'Cundinamarca','COL'),(4,'Arauca','COL'),(5,'Bolivar','COL'),(6,'Boyaca','COL'),(7,'Caldas','COL'),(8,'Caqueta','COL'),(9,'Casanare','COL'),(10,'Cauca','COL'),(11,'Cesar','COL'),(12,'Choco','COL'),(13,'Cordoba','COL'),(14,'Cundinamarca','COL'),(15,'Guania','COL'),(16,'Guajira','COL'),(17,'Guaviare','COL'),(18,'Huila','COL'),(19,'Magdalena','COL'),(20,'Meta','COL'),(21,'Norte de Santander','COL'),(22,'Nariño','COL'),(23,'Putumayo','COL'),(24,'Quindio','COL'),(25,'Risaralda','COL'),(26,'San Andrés','COL'),(27,'Santander','COL'),(28,'Sucre','COL'),(29,'Tolima','COL'),(30,'Valle del Cauca','COL'),(31,'Vaupes','COL'),(32,'Vichada','COL');
/*!40000 ALTER TABLE `qzq4u_core_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_core_log_searches`
--

DROP TABLE IF EXISTS `qzq4u_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_core_log_searches`
--

LOCK TABLES `qzq4u_core_log_searches` WRITE;
/*!40000 ALTER TABLE `qzq4u_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_core_materiales`
--

DROP TABLE IF EXISTS `qzq4u_core_materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_core_materiales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `descripcion` text NOT NULL,
  `creado` int(11) NOT NULL,
  `creado_por` date NOT NULL,
  `modificado` int(11) NOT NULL,
  `modificdo` date NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_core_materiales`
--

LOCK TABLES `qzq4u_core_materiales` WRITE;
/*!40000 ALTER TABLE `qzq4u_core_materiales` DISABLE KEYS */;
INSERT INTO `qzq4u_core_materiales` VALUES (1,'Oro','Descripción',0,'0000-00-00',0,'0000-00-00',0),(2,'Plata','Plata',0,'0000-00-00',0,'0000-00-00',0),(3,'Bronce','',0,'0000-00-00',0,'0000-00-00',0),(9,'Recebo','D-1000 INVIAS',0,'0000-00-00',0,'0000-00-00',0);
/*!40000 ALTER TABLE `qzq4u_core_materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_core_paises`
--

DROP TABLE IF EXISTS `qzq4u_core_paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_core_paises` (
  `Code` char(3) NOT NULL DEFAULT '',
  `Name` char(52) NOT NULL DEFAULT '',
  `Continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL DEFAULT 'Asia',
  `Region` char(26) NOT NULL DEFAULT '',
  `Capital` int(11) DEFAULT NULL,
  `Code2` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_core_paises`
--

LOCK TABLES `qzq4u_core_paises` WRITE;
/*!40000 ALTER TABLE `qzq4u_core_paises` DISABLE KEYS */;
INSERT INTO `qzq4u_core_paises` VALUES ('ABW','Aruba','North America','Caribbean',129,'AW'),('AFG','Afghanistan','Asia','Southern and Central Asia',1,'AF'),('AGO','Angola','Africa','Central Africa',56,'AO'),('AIA','Anguilla','North America','Caribbean',62,'AI'),('ALB','Albania','Europe','Southern Europe',34,'AL'),('AND','Andorra','Europe','Southern Europe',55,'AD'),('ANT','Antillas Holandesas','North America','Caribbean',33,'AN'),('ARE','Emiratos Árabes Unidos','Asia','Middle East',65,'AE'),('ARG','Argentina','South America','South America',69,'AR'),('ARM','Armenia','Asia','Middle East',126,'AM'),('ASM','Samoa Americana','Oceania','Polynesia',54,'AS'),('ATA','Antarctica','Antarctica','Antarctica',NULL,'AQ'),('ATF','Territorios del sur francés','Antarctica','Antarctica',NULL,'TF'),('ATG','Antigua y Barbuda','North America','Caribbean',63,'AG'),('AUS','Australia','Oceania','Australia and New Zealand',135,'AU'),('AUT','Austria','Europe','Western Europe',1523,'AT'),('AZE','Azerbaijan','Asia','Middle East',144,'AZ'),('BDI','Burundi','Africa','Eastern Africa',552,'BI'),('BEL','Bélgica','Europe','Western Europe',179,'BE'),('BEN','Benin','Africa','Western Africa',187,'BJ'),('BFA','Burkina Faso','Africa','Western Africa',549,'BF'),('BGD','Bangladesh','Asia','Southern and Central Asia',150,'BD'),('BGR','Bulgaria','Europe','Eastern Europe',539,'BG'),('BHR','Bahrain','Asia','Middle East',149,'BH'),('BHS','Bahamas','North America','Caribbean',148,'BS'),('BIH','Bosnia and Herzegovina','Europe','Southern Europe',201,'BA'),('BLR','Bielorrusia','Europe','Eastern Europe',3520,'BY'),('BLZ','Belice','North America','Central America',185,'BZ'),('BMU','Bermuda','North America','North America',191,'BM'),('BOL','Bolivia','South America','South America',194,'BO'),('BRA','Brazil','South America','South America',211,'BR'),('BRB','Barbados','North America','Caribbean',174,'BB'),('BRN','Brunei','Asia','Southeast Asia',538,'BN'),('BTN','Bhutan','Asia','Southern and Central Asia',192,'BT'),('BVT','Isla Bouvet','Antarctica','Antarctica',NULL,'BV'),('BWA','Botswana','Africa','Southern Africa',204,'BW'),('CAF','República Centroafricana','Africa','Central Africa',1889,'CF'),('CAN','Canada','North America','North America',1822,'CA'),('CCK','Cocos (Keeling)','Oceania','Australia and New Zealand',2317,'CC'),('CHE','Suiza','Europe','Western Europe',3248,'CH'),('CHL','Chile','South America','South America',554,'CL'),('CHN','China','Asia','Eastern Asia',1891,'CN'),('CMR','Cameroon','Africa','Central Africa',1804,'CM'),('COD','Congo','Africa','Central Africa',2298,'CD'),('COG','Congo','Africa','Central Africa',2296,'CG'),('COL','Colombia','South America','South America',2257,'CO'),('COM','Comoros','Africa','Eastern Africa',2295,'KM'),('CPV','Cabo Verde','Africa','Western Africa',1859,'CV'),('CRI','Costa Rica','North America','Central America',584,'CR'),('CUB','Cuba','North America','Caribbean',2413,'CU'),('CXR','Isla de Navidad','Oceania','Australia and New Zealand',1791,'CX'),('CYM','Islas Caimán','North America','Caribbean',553,'KY'),('CYP','Chipre','Asia','Middle East',2430,'CY'),('CZE','República Checa','Europe','Eastern Europe',3339,'CZ'),('DEU','Alemania','Europe','Western Europe',3068,'DE'),('DJI','Yibuti','Africa','Eastern Africa',585,'DJ'),('DMA','Dominica','North America','Caribbean',586,'DM'),('DNK','Dinamarca','Europe','Nordic Countries',3315,'DK'),('DOM','Republica Dominicana','North America','Caribbean',587,'DO'),('DZA','Algeria','Africa','Northern Africa',35,'DZ'),('ECU','Ecuador','South America','South America',594,'EC'),('EGY','Egypto','Africa','Northern Africa',608,'EG'),('ERI','Eritrea','Africa','Eastern Africa',652,'ER'),('ESH','Sáhara Occidental','Africa','Northern Africa',2453,'EH'),('ESP','España','Europe','Southern Europe',653,'ES'),('EST','Estonia','Europe','Baltic Countries',3791,'EE'),('ETH','Ethiopia','Africa','Eastern Africa',756,'ET'),('FIN','Finlandia','Europe','Nordic Countries',3236,'FI'),('FJI','Islas Fiji','Oceania','Melanesia',764,'FJ'),('FLK','Islas Malvinas','South America','South America',763,'FK'),('FRA','Francia','Europe','Western Europe',2974,'FR'),('FRO','Islas Feroe','Europe','Nordic Countries',901,'FO'),('FSM','Micronesia','Oceania','Micronesia',2689,'FM'),('GAB','Gabon','Africa','Central Africa',902,'GA'),('GBR','Reino Unido','Europe','British Islands',456,'GB'),('GEO','Georgia','Asia','Middle East',905,'GE'),('GHA','Ghana','Africa','Western Africa',910,'GH'),('GIB','Gibraltar','Europe','Southern Europe',915,'GI'),('GIN','Guinea','Africa','Western Africa',926,'GN'),('GLP','Guadalupe','North America','Caribbean',919,'GP'),('GMB','Gambia','Africa','Western Africa',904,'GM'),('GNB','Guinea-Bissau','Africa','Western Africa',927,'GW'),('GNQ','Guinea Ecuatorial','Africa','Central Africa',2972,'GQ'),('GRC','Grecia','Europe','Southern Europe',2401,'GR'),('GRD','Granada','North America','Caribbean',916,'GD'),('GRL','Groenlandia','North America','North America',917,'GL'),('GTM','Guatemala','North America','Central America',922,'GT'),('GUF','Francés Guayana','South America','South America',3014,'GF'),('GUM','Guam','Oceania','Micronesia',921,'GU'),('GUY','Guyana','South America','South America',928,'GY'),('HMD','Islas Heard y McDonald','Antarctica','Antarctica',NULL,'HM'),('HND','Honduras','North America','Central America',933,'HN'),('HOL','Holanda','Europe','Eastern Europe',3483,'HO'),('HRV','Croacia','Europe','Southern Europe',2409,'HR'),('HTI','Haiti','North America','Caribbean',929,'HT'),('HUN','Hungría','Europe','Eastern Europe',3483,'HU'),('IDN','Indonesia','Asia','Southeast Asia',939,'ID'),('IND','India','Asia','Southern and Central Asia',1109,'IN'),('IOT','Territorio Británico del Océano','Africa','Eastern Africa',NULL,'IO'),('IRL','Irlanda','Europe','British Islands',1447,'IE'),('IRN','Iran','Asia','Southern and Central Asia',1380,'IR'),('IRQ','Iraq','Asia','Middle East',1365,'IQ'),('ISL','Islandia','Europe','Nordic Countries',1449,'IS'),('ISR','Israel','Asia','Middle East',1450,'IL'),('ITA','Italia','Europe','Southern Europe',1464,'IT'),('JAM','Jamaica','North America','Caribbean',1530,'JM'),('JOR','Jordania','Asia','Middle East',1786,'JO'),('JPN','Japon','Asia','Eastern Asia',1532,'JP'),('KAZ','Kazajstán','Asia','Southern and Central Asia',1864,'KZ'),('KEN','Kenya','Africa','Eastern Africa',1881,'KE'),('KGZ','Kyrgyzstan','Asia','Southern and Central Asia',2253,'KG'),('KHM','Cambodia','Asia','Southeast Asia',1800,'KH'),('KIR','Kiribati','Oceania','Micronesia',2256,'KI'),('KNA','Saint Kitts y Nevis','North America','Caribbean',3064,'KN'),('KOR','Corea del Sur','Asia','Eastern Asia',2331,'KR'),('KWT','Kuwait','Asia','Middle East',2429,'KW'),('LAO','Laos','Asia','Southeast Asia',2432,'LA'),('LBN','Líbano','Asia','Middle East',2438,'LB'),('LBR','Liberia','Africa','Western Africa',2440,'LR'),('LBY','Jamahiriya Árabe Libia','Africa','Northern Africa',2441,'LY'),('LCA','Santa Lucia','North America','Caribbean',3065,'LC'),('LIE','Liechtenstein','Europe','Western Europe',2446,'LI'),('LKA','Sri Lanka','Asia','Southern and Central Asia',3217,'LK'),('LSO','Lesotho','Africa','Southern Africa',2437,'LS'),('LTU','Lithuania','Europe','Baltic Countries',2447,'LT'),('LUX','Luxembourg','Europe','Western Europe',2452,'LU'),('LVA','Latvia','Europe','Baltic Countries',2434,'LV'),('MAC','Macao','Asia','Eastern Asia',2454,'MO'),('MAI','Marshall Island','Oceania','Micronesia',0,''),('MAR','Marruecos','Africa','Northern Africa',2486,'MA'),('MCO','Monaco','Europe','Western Europe',2695,'MC'),('MDA','Moldova','Europe','Eastern Europe',2690,'MD'),('MDG','Madagascar','Africa','Eastern Africa',2455,'MG'),('MDV','Maldivas','Asia','Southern and Central Asia',2463,'MV'),('MEX','Mexico','North America','Central America',2515,'MX'),('MHL','Islas Marshall','Oceania','Micronesia',2507,'MH'),('MKD','Macedonia','Europe','Southern Europe',2460,'MK'),('MLI','Mali','Africa','Western Africa',2482,'ML'),('MLT','Malta','Europe','Southern Europe',2484,'MT'),('MMR','Myanmar','Asia','Southeast Asia',2710,'MM'),('MNG','Mongolia','Asia','Eastern Asia',2696,'MN'),('MNP','Islas Marianas del Norte','Oceania','Micronesia',2913,'MP'),('MOZ','Mozambique','Africa','Eastern Africa',2698,'MZ'),('MRT','Mauritania','Africa','Western Africa',2509,'MR'),('MSR','Montserrat','North America','Caribbean',2697,'MS'),('MTQ','Martinica','North America','Caribbean',2508,'MQ'),('MUS','Islas Mauricio','Africa','Eastern Africa',2511,'MU'),('MWI','Malawi','Africa','Eastern Africa',2462,'MW'),('MYS','Malaysia','Asia','Southeast Asia',2464,'MY'),('MYT','Mayotte','Africa','Eastern Africa',2514,'YT'),('NAM','Namibia','Africa','Southern Africa',2726,'NA'),('NCL','Nueva Caledonia','Oceania','Melanesia',3493,'NC'),('NER','Niger','Africa','Western Africa',2738,'NE'),('NFK','isla Norfolk','Oceania','Australia and New Zealand',2806,'NF'),('NGA','Nigeria','Africa','Western Africa',2754,'NG'),('NIC','Nicaragua','North America','Central America',2734,'NI'),('NIU','Niue','Oceania','Polynesia',2805,'NU'),('NLD','Países Bajos','Europe','Western Europe',5,'NL'),('NOR','Noruega','Europe','Nordic Countries',2807,'NO'),('NPL','Nepal','Asia','Southern and Central Asia',2729,'NP'),('NRU','Nauru','Oceania','Micronesia',2728,'NR'),('NZL','Nueva Zelanda','Oceania','Australia and New Zealand',3499,'NZ'),('OMN','Oman','Asia','Middle East',2821,'OM'),('PAK','Pakistan','Asia','Southern and Central Asia',2831,'PK'),('PAN','Panama','North America','Central America',2882,'PA'),('PCN','Pitcairn','Oceania','Polynesia',2912,'PN'),('PER','Peru','South America','South America',2890,'PE'),('PHL','Filipinas','Asia','Southeast Asia',766,'PH'),('PLW','Palau','Oceania','Micronesia',2881,'PW'),('PNG','Papua Nueva Guinea','Oceania','Melanesia',2884,'PG'),('POL','Polonia','Europe','Eastern Europe',2928,'PL'),('PRI','Puerto Rico','North America','Caribbean',2919,'PR'),('PRK','Corea del Norte','Asia','Eastern Asia',2318,'KP'),('PRT','Portugal','Europe','Southern Europe',2914,'PT'),('PRY','Paraguay','South America','South America',2885,'PY'),('PSE','Palestina','Asia','Middle East',4074,'PS'),('PYF','Polinesia francés','Oceania','Polynesia',3016,'PF'),('QAT','Qatar','Asia','Middle East',2973,'QA'),('REU','Réunion','Africa','Eastern Africa',3017,'RE'),('ROM','Rumania','Europe','Eastern Europe',3018,'RO'),('RUS','Rusia','Europe','Eastern Europe',3580,'RU'),('RWA','Rwanda','Africa','Eastern Africa',3047,'RW'),('SAU','Arabia Saudita','Asia','Middle East',3173,'SA'),('SDN','Sudan','Africa','Northern Africa',3225,'SD'),('SEN','Senegal','Africa','Western Africa',3198,'SN'),('SGS','Georgia del Sur e Islas Sandwich del Sur','Antarctica','Antarctica',NULL,'GS'),('SHN','Saint Helena','Africa','Western Africa',3063,'SH'),('SJM','Svalbard y Jan Mayen','Europe','Nordic Countries',938,'SJ'),('SLB','Islas Solomon','Oceania','Melanesia',3161,'SB'),('SLE','Sierra Leona','Africa','Western Africa',3207,'SL'),('SLV','El Salvador','North America','Central America',645,'SV'),('SMR','San Marino','Europe','Southern Europe',3171,'SM'),('SOM','Somalia','Africa','Eastern Africa',3214,'SO'),('SPM','San Pedro y Miquelón','North America','North America',3067,'PM'),('STP','Sao Tome y Príncipe','Africa','Central Africa',3172,'ST'),('SUR','Suriname','South America','South America',3243,'SR'),('SVK','Slovakia','Europe','Eastern Europe',3209,'SK'),('SVN','Slovenia','Europe','Southern Europe',3212,'SI'),('SWE','Suecia','Europe','Nordic Countries',3048,'SE'),('SWZ','Suazilandia','Africa','Southern Africa',3244,'SZ'),('SYC','Seychelles','Africa','Eastern Africa',3206,'SC'),('SYR','Syria','Asia','Middle East',3250,'SY'),('TCA','Islas Turcas y Caicos','North America','Caribbean',3423,'TC'),('TCD','Chad','Africa','Central Africa',3337,'TD'),('TGO','Togo','Africa','Western Africa',3332,'TG'),('THA','Thailandia','Asia','Southeast Asia',3320,'TH'),('TJK','Tajikistan','Asia','Southern and Central Asia',3261,'TJ'),('TKL','Tokelau','Oceania','Polynesia',3333,'TK'),('TKM','Turkmenistan','Asia','Southern and Central Asia',3419,'TM'),('TMP','Timor Oriental','Asia','Southeast Asia',1522,'TP'),('TON','Tonga','Oceania','Polynesia',3334,'TO'),('TTO','Trinidad y Tobago','North America','Caribbean',3336,'TT'),('TUN','Tunisia','Africa','Northern Africa',3349,'TN'),('TUR','Turkia','Asia','Middle East',3358,'TR'),('TUV','Tuvalu','Oceania','Polynesia',3424,'TV'),('TWN','Taiwan','Asia','Eastern Asia',3263,'TW'),('TZA','Tanzania','Africa','Eastern Africa',3306,'TZ'),('UGA','Uganda','Africa','Eastern Africa',3425,'UG'),('UKR','Ucrania','Europe','Eastern Europe',3426,'UA'),('UMI','Islas menores alejadas de Estados Unidos','Oceania','Micronesia/Caribbean',NULL,'UM'),('URY','Uruguay','South America','South America',3492,'UY'),('USA','Estados Unidos','North America','North America',3813,'US'),('UZB','Uzbekistan','Asia','Southern and Central Asia',3503,'UZ'),('VAT','Santa Sede (Ciudad del Vaticano)','Europe','Southern Europe',3538,'VA'),('VCT','San Vicente y las Granadinas','North America','Caribbean',3066,'VC'),('VEN','Venezuela','South America','South America',3539,'VE'),('VGB','Islas Vírgenes Británicas','North America','Caribbean',537,'VG'),('VIR','Islas Vírgenes, EE.UU.','North America','Caribbean',4067,'VI'),('VNM','Vietnam','Asia','Southeast Asia',3770,'VN'),('VUT','Vanuatu','Oceania','Melanesia',3537,'VU'),('WLF','Wallis y Futuna','Oceania','Polynesia',3536,'WF'),('WSM','Samoa','Oceania','Polynesia',3169,'WS'),('YEM','Yemen','Asia','Middle East',1780,'YE'),('YUG','Yugoslavia','Europe','Southern Europe',1792,'YU'),('ZAF','Sudáfrica','Africa','Southern Africa',716,'ZA'),('ZMB','Zambia','Africa','Eastern Africa',3162,'ZM'),('ZWE','Zimbabwe','Africa','Eastern Africa',4068,'ZW');
/*!40000 ALTER TABLE `qzq4u_core_paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_core_proveedores`
--

DROP TABLE IF EXISTS `qzq4u_core_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_core_proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `razon_social` varchar(256) DEFAULT NULL,
  `nit` int(11) NOT NULL,
  `direccion` varchar(512) NOT NULL,
  `tel_fijo` int(11) NOT NULL,
  `trel_movil` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `ciudad` int(11) DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL,
  `tipo` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `id_cantera` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_core_proveedores`
--

LOCK TABLES `qzq4u_core_proveedores` WRITE;
/*!40000 ALTER TABLE `qzq4u_core_proveedores` DISABLE KEYS */;
INSERT INTO `qzq4u_core_proveedores` VALUES (1,'nombre Proveedor','Razon Social ',222222,'carrera dirección',33333333,444444444,'ejemplo@ejemplo.com',NULL,0,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,6),(2,'Cemex',NULL,2147483647,'calle siempre viva 123',968769,67547564,'msuhuui',NULL,0,0,'2016-10-20 17:01:00',204,'0000-00-00 00:00:00',0,6);
/*!40000 ALTER TABLE `qzq4u_core_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_core_tipo_operacion`
--

DROP TABLE IF EXISTS `qzq4u_core_tipo_operacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_core_tipo_operacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_core_tipo_operacion`
--

LOCK TABLES `qzq4u_core_tipo_operacion` WRITE;
/*!40000 ALTER TABLE `qzq4u_core_tipo_operacion` DISABLE KEYS */;
INSERT INTO `qzq4u_core_tipo_operacion` VALUES (1,'Orden Pedido','2016-08-20 00:00:00',205,'2016-08-20 00:00:00',205,0),(2,'Ingreso Material','2016-08-20 00:00:00',205,'2016-08-20 00:00:00',205,0);
/*!40000 ALTER TABLE `qzq4u_core_tipo_operacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_core_vehiculo_rel_conductor`
--

DROP TABLE IF EXISTS `qzq4u_core_vehiculo_rel_conductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_core_vehiculo_rel_conductor` (
  `id_conductor` int(11) NOT NULL,
  `id_vehiculo` int(11) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_conductor`,`id_vehiculo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_core_vehiculo_rel_conductor`
--

LOCK TABLES `qzq4u_core_vehiculo_rel_conductor` WRITE;
/*!40000 ALTER TABLE `qzq4u_core_vehiculo_rel_conductor` DISABLE KEYS */;
INSERT INTO `qzq4u_core_vehiculo_rel_conductor` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL);
/*!40000 ALTER TABLE `qzq4u_core_vehiculo_rel_conductor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_core_vehiculos`
--

DROP TABLE IF EXISTS `qzq4u_core_vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_core_vehiculos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placa` varchar(6) NOT NULL,
  `marca` varchar(256) NOT NULL,
  `modelo` varchar(40) NOT NULL,
  `color` varchar(256) NOT NULL,
  `carga` int(11) NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `propietario` varchar(256) NOT NULL,
  `identificacion` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `id_cantera` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_core_vehiculos`
--

LOCK TABLES `qzq4u_core_vehiculos` WRITE;
/*!40000 ALTER TABLE `qzq4u_core_vehiculos` DISABLE KEYS */;
INSERT INTO `qzq4u_core_vehiculos` VALUES (1,'DRE123','chevrolet','','Rojo',3500,0,'Alberto E',80985456,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,6),(2,'WER456','Zamurai','','Azul',3000,0,'Fernando T',80985234,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,6),(3,'AAA123','Mercedez','D210','Verde',2800,0,'Orlando E',80345456,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,6),(4,'DAQ232','VOLVO','','AZUL',3500,0,'JUAN PEDRO CONDUCTOR',2147483647,'2016-08-15 19:21:00',205,'0000-00-00 00:00:00',0,6),(5,'23523','sdfg','dfhd','verde',23,0,'sdfg',252,'2016-08-15 21:25:00',205,'0000-00-00 00:00:00',0,6);
/*!40000 ALTER TABLE `qzq4u_core_vehiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_extensions`
--

DROP TABLE IF EXISTS `qzq4u_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10023 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_extensions`
--

LOCK TABLES `qzq4u_extensions` WRITE;
/*!40000 ALTER TABLE `qzq4u_extensions` DISABLE KEYS */;
INSERT INTO `qzq4u_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"es-CO\",\"site\":\"es-CO\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"11\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{\"updatesource\":\"testing\",\"customurl\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'LIB_PHPUTF8','library','phputf8','',0,1,1,1,'{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'LIB_JOOMLA','library','joomla','',0,1,1,1,'{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"mediaversion\":\"5c322e84a0739a42b351d16c15a9f76c\"}','','',0,'0000-00-00 00:00:00',0,0),(104,'LIB_IDNA','library','idna_convert','',0,1,1,1,'{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,'LIB_PHPASS','library','phpass','',0,1,1,1,'{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.18.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2016\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.4.3\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,0,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','','','',0,'0000-00-00 00:00:00',4,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}','','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}','','','',0,'0000-00-00 00:00:00',0,0),(451,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(452,'plg_system_updatenotification','plugin','updatenotification','system',0,1,1,0,'{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}','{\"lastrun\":1479171494}','','',0,'0000-00-00 00:00:00',0,0),(453,'plg_editors-xtd_module','plugin','module','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}','','','',0,'0000-00-00 00:00:00',0,0),(454,'plg_system_stats','plugin','stats','system',0,1,1,0,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}','{\"mode\":3,\"lastrun\":\"\",\"unique_id\":\"2d68cbeb172b11514cede74d131d7cfa97d75d67\",\"interval\":12}','','',0,'0000-00-00 00:00:00',0,0),(455,'plg_installer_packageinstaller','plugin','packageinstaller','installer',0,1,1,1,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}','','','',0,'0000-00-00 00:00:00',1,0),(456,'PLG_INSTALLER_FOLDERINSTALLER','plugin','folderinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}','','','',0,'0000-00-00 00:00:00',2,0),(457,'PLG_INSTALLER_URLINSTALLER','plugin','urlinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}','','','',0,'0000-00-00 00:00:00',3,0),(506,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (en-GB)','language','en-GB','',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"September 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.3\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (en-GB)','language','en-GB','',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"September 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.3\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"September 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.3-rc1\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(802,'English (en-GB) Language Pack','package','pkg_en-GB','',0,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"September 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.3.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'com_administracion','component','com_administracion','',1,1,1,1,'','','','',0,'2016-08-05 00:00:00',0,0),(10001,'com_operacion','component','com_operacion','',1,1,1,1,'','','','',0,'2016-08-05 00:00:00',0,0),(10002,'com_estadisticas','component','com_estadisticas','',1,1,1,1,'','','','',0,'2016-08-05 00:00:00',0,0),(10003,'EspaolColombia','language','es-CO','',0,1,0,0,'{\"name\":\"Espa\\u00f1ol (Colombia)\",\"type\":\"language\",\"creationDate\":\"2016-10-05\",\"author\":\"JUG Bogot\\u00e1\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@jugbogota.org\",\"authorUrl\":\"jugbogota.org\",\"version\":\"3.6.3.1\",\"description\":\"idioma del sitio es-CO\",\"group\":\"\",\"filename\":\"install\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10004,'EspaolColombia','language','es-CO','',1,1,0,0,'{\"name\":\"Espa\\u00f1ol (Colombia)\",\"type\":\"language\",\"creationDate\":\"2016-10-05\",\"author\":\"JUG Bogot\\u00e1\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@jugbogota.org\",\"authorUrl\":\"jugbogota.org\",\"version\":\"3.6.3.1\",\"description\":\"idioma del administrador de es-CO\",\"group\":\"\",\"filename\":\"install\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10005,'Spanish-Colombia (es-CO) Language Pack','package','pkg_es-CO','',0,1,1,0,'{\"name\":\"Spanish-Colombia (es-CO) Language Pack\",\"type\":\"package\",\"creationDate\":\"2016-10-05\",\"author\":\"JUG Bogot\\u00e1\",\"copyright\":\"\",\"authorEmail\":\"info@jugbogota.org\",\"authorUrl\":\"jugbogota.org\",\"version\":\"3.6.3.1\",\"description\":\"Paquete de idioma espa\\u00f1ol colombiano (es-CO)\",\"group\":\"\",\"filename\":\"pkg_es-CO\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10006,'AcyMailing','component','com_acymailing','',1,1,0,0,'{\"name\":\"AcyMailing\",\"type\":\"component\",\"creationDate\":\"juillet 2016\",\"author\":\"Acyba\",\"copyright\":\"Copyright (C) 2009-2016 ACYBA SAS - All rights reserved.\",\"authorEmail\":\"dev@acyba.com\",\"authorUrl\":\"http:\\/\\/www.acyba.com\",\"version\":\"5.5.0\",\"description\":\"Manage your Mailing lists, Newsletters, e-mail marketing campaigns\",\"group\":\"\",\"filename\":\"acymailing_j3\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10007,'AcyMailing : trigger Joomla Content plugins','plugin','contentplugin','acymailing',0,0,1,0,'{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"November 2009\"}','','','',0,'0000-00-00 00:00:00',15,0),(10008,'AcyMailing Manage text','plugin','managetext','acymailing',0,1,1,0,'{\"version\":\"1.0.0\",\"author\":\"Acyba\",\"creationDate\":\"October 2010\"}','','','',0,'0000-00-00 00:00:00',10,0),(10009,'AcyMailing Tag : Website links','plugin','online','acymailing',0,1,1,0,'{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"September 2009\"}','','','',0,'0000-00-00 00:00:00',6,0),(10010,'AcyMailing : share on social networks','plugin','share','acymailing',0,1,1,0,'{\"version\":\"1.0.0\",\"author\":\"Acyba\",\"creationDate\":\"August 2010\"}','','','',0,'0000-00-00 00:00:00',20,0),(10011,'AcyMailing : Statistics Plugin','plugin','stats','acymailing',0,1,1,0,'{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"September 2009\"}','','','',0,'0000-00-00 00:00:00',50,0),(10012,'AcyMailing table of contents generator','plugin','tablecontents','acymailing',0,1,1,0,'{\"version\":\"1.0.0\",\"author\":\"Acyba\",\"creationDate\":\"January 2011\"}','','','',0,'0000-00-00 00:00:00',5,0),(10013,'AcyMailing Tag : CB User information','plugin','tagcbuser','acymailing',0,0,1,0,'{\"version\":\"3.7.2\",\"author\":\"Acyba\",\"creationDate\":\"September 2009\"}','','','',0,'0000-00-00 00:00:00',4,0),(10014,'AcyMailing Tag : content insertion','plugin','tagcontent','acymailing',0,1,1,0,'{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"September 2009\"}','','','',0,'0000-00-00 00:00:00',11,0),(10015,'AcyMailing Tag : Subscriber information','plugin','tagsubscriber','acymailing',0,1,1,0,'{\"version\":\"5.5.0\",\"author\":\"Acyba\",\"creationDate\":\"juillet 2016\"}','','','',0,'0000-00-00 00:00:00',2,0),(10016,'AcyMailing Tag : Manage the Subscription','plugin','tagsubscription','acymailing',0,1,1,0,'{\"version\":\"5.5.0\",\"author\":\"Acyba\",\"creationDate\":\"juillet 2016\"}','','','',0,'0000-00-00 00:00:00',1,0),(10017,'AcyMailing Tag : Date / Time','plugin','tagtime','acymailing',0,1,1,0,'{\"version\":\"5.5.0\",\"author\":\"Acyba\",\"creationDate\":\"juillet 2016\"}','','','',0,'0000-00-00 00:00:00',5,0),(10018,'AcyMailing Tag : Joomla User Information','plugin','taguser','acymailing',0,1,1,0,'{\"version\":\"5.5.0\",\"author\":\"Acyba\",\"creationDate\":\"juillet 2016\"}','','','',0,'0000-00-00 00:00:00',3,0),(10019,'AcyMailing Template Class Replacer','plugin','template','acymailing',0,1,1,0,'{\"version\":\"5.5.0\",\"author\":\"Acyba\",\"creationDate\":\"juillet 2016\"}','','','',0,'0000-00-00 00:00:00',25,0),(10020,'AcyMailing Editor','plugin','acyeditor','editors',0,1,1,0,'{\"version\":\"5.5.0\",\"author\":\"Acyba\",\"creationDate\":\"juillet 2016\"}','','','',0,'0000-00-00 00:00:00',5,0),(10021,'AcyMailing : (auto)Subscribe during Joomla registration','plugin','regacymailing','system',0,1,1,0,'{\"version\":\"5.5.0\",\"author\":\"Acyba\",\"creationDate\":\"juillet 2016\"}','','','',0,'0000-00-00 00:00:00',0,0),(10022,'AcyMailing Module','module','mod_acymailing','',0,1,1,0,'{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"September 2009\"}','','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `qzq4u_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_filters`
--

DROP TABLE IF EXISTS `qzq4u_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_filters`
--

LOCK TABLES `qzq4u_finder_filters` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links`
--

DROP TABLE IF EXISTS `qzq4u_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links`
--

LOCK TABLES `qzq4u_finder_links` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links_terms0`
--

DROP TABLE IF EXISTS `qzq4u_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links_terms0`
--

LOCK TABLES `qzq4u_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links_terms1`
--

DROP TABLE IF EXISTS `qzq4u_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links_terms1`
--

LOCK TABLES `qzq4u_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links_terms2`
--

DROP TABLE IF EXISTS `qzq4u_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links_terms2`
--

LOCK TABLES `qzq4u_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links_terms3`
--

DROP TABLE IF EXISTS `qzq4u_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links_terms3`
--

LOCK TABLES `qzq4u_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links_terms4`
--

DROP TABLE IF EXISTS `qzq4u_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links_terms4`
--

LOCK TABLES `qzq4u_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links_terms5`
--

DROP TABLE IF EXISTS `qzq4u_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links_terms5`
--

LOCK TABLES `qzq4u_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links_terms6`
--

DROP TABLE IF EXISTS `qzq4u_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links_terms6`
--

LOCK TABLES `qzq4u_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links_terms7`
--

DROP TABLE IF EXISTS `qzq4u_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links_terms7`
--

LOCK TABLES `qzq4u_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links_terms8`
--

DROP TABLE IF EXISTS `qzq4u_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links_terms8`
--

LOCK TABLES `qzq4u_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links_terms9`
--

DROP TABLE IF EXISTS `qzq4u_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links_terms9`
--

LOCK TABLES `qzq4u_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links_termsa`
--

DROP TABLE IF EXISTS `qzq4u_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links_termsa`
--

LOCK TABLES `qzq4u_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links_termsb`
--

DROP TABLE IF EXISTS `qzq4u_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links_termsb`
--

LOCK TABLES `qzq4u_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links_termsc`
--

DROP TABLE IF EXISTS `qzq4u_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links_termsc`
--

LOCK TABLES `qzq4u_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links_termsd`
--

DROP TABLE IF EXISTS `qzq4u_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links_termsd`
--

LOCK TABLES `qzq4u_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links_termse`
--

DROP TABLE IF EXISTS `qzq4u_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links_termse`
--

LOCK TABLES `qzq4u_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_links_termsf`
--

DROP TABLE IF EXISTS `qzq4u_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_links_termsf`
--

LOCK TABLES `qzq4u_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_taxonomy`
--

DROP TABLE IF EXISTS `qzq4u_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_taxonomy`
--

LOCK TABLES `qzq4u_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `qzq4u_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `qzq4u_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `qzq4u_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_taxonomy_map`
--

LOCK TABLES `qzq4u_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_terms`
--

DROP TABLE IF EXISTS `qzq4u_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_terms`
--

LOCK TABLES `qzq4u_finder_terms` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_terms_common`
--

DROP TABLE IF EXISTS `qzq4u_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_terms_common`
--

LOCK TABLES `qzq4u_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_terms_common` DISABLE KEYS */;
INSERT INTO `qzq4u_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `qzq4u_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_tokens`
--

DROP TABLE IF EXISTS `qzq4u_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_tokens`
--

LOCK TABLES `qzq4u_finder_tokens` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `qzq4u_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_tokens_aggregate`
--

LOCK TABLES `qzq4u_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_finder_types`
--

DROP TABLE IF EXISTS `qzq4u_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_finder_types`
--

LOCK TABLES `qzq4u_finder_types` WRITE;
/*!40000 ALTER TABLE `qzq4u_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_languages`
--

DROP TABLE IF EXISTS `qzq4u_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_languages`
--

LOCK TABLES `qzq4u_languages` WRITE;
/*!40000 ALTER TABLE `qzq4u_languages` DISABLE KEYS */;
INSERT INTO `qzq4u_languages` VALUES (1,0,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,1),(2,56,'es-CO','ESpañol','ES','espa','es_co','','','','',1,1,0);
/*!40000 ALTER TABLE `qzq4u_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_menu`
--

DROP TABLE IF EXISTS `qzq4u_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_menu`
--

LOCK TABLES `qzq4u_menu` WRITE;
/*!40000 ALTER TABLE `qzq4u_menu` DISABLE KEYS */;
INSERT INTO `qzq4u_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,107,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',59,64,0,'*',1),(8,'menu','com_contact_contacts','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',60,61,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',62,63,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',65,68,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',66,67,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',69,74,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',70,71,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',72,73,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',75,76,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',77,78,0,'*',1),(18,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',51,52,0,'*',1),(19,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',53,54,0,'*',1),(20,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',55,56,0,'',1),(21,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',57,58,0,'*',1),(101,'invisible','Home','home','','home','index.php?option=com_estadisticas&view=estadisticas','component',1,1,1,10002,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',11,12,1,'*',0),(102,'mainmenu','Canteras','canteras','','administrador-clientes/canteras','index.php?option=com_administracion&view=canteras','component',1,109,2,10000,0,'0000-00-00 00:00:00',0,8,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',38,39,0,'*',0),(103,'mainmenu','Materiales','materiales','','administrador-clientes/materiales','index.php?option=com_administracion&view=materiales','component',1,109,2,10000,0,'0000-00-00 00:00:00',0,8,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',40,41,0,'*',0),(104,'mainmenu','Permisos Cliente','administrador-cliente','','administrador-cliente','#','url',0,1,1,0,0,'0000-00-00 00:00:00',0,2,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}',27,36,0,'*',0),(105,'mainmenu','Registros','registros','','administrador-cliente/registros','#','url',0,104,2,0,0,'0000-00-00 00:00:00',0,2,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}',28,29,0,'*',0),(106,'mainmenu','Autorizaciones','autorizaciones','','administrador-cliente/autorizaciones','#','url',0,104,2,0,0,'0000-00-00 00:00:00',0,2,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}',30,31,0,'*',0),(107,'mainmenu','Coordinadores','coordinadores','','administrador-cliente/coordinadores','#','url',0,104,2,0,0,'0000-00-00 00:00:00',0,2,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}',32,33,0,'*',0),(108,'mainmenu','Coordinador Carga','coordinador-carga','','administrador-cliente/coordinador-carga','#','url',0,104,2,0,0,'0000-00-00 00:00:00',0,2,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}',34,35,0,'*',0),(109,'mainmenu','Administración','administrador-clientes','','administrador-clientes','#','url',1,1,1,0,0,'0000-00-00 00:00:00',0,2,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}',37,50,0,'*',0),(110,'mainmenu','Clientes','clientes','','administrador-clientes/clientes','index.php?option=com_administracion&view=clientes','component',1,109,2,10000,0,'0000-00-00 00:00:00',0,7,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',42,43,0,'*',0),(111,'mainmenu','Proveedores','proveedores','','administrador-clientes/proveedores','index.php?option=com_administracion&view=proveedores','component',1,109,2,10000,0,'0000-00-00 00:00:00',0,7,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',44,45,0,'*',0),(112,'mainmenu','Registro de vehículos','registro-de-vehiculos','','administrador-clientes/registro-de-vehiculos','index.php?option=com_administracion&view=vehiculos','component',1,109,2,10000,0,'0000-00-00 00:00:00',0,7,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',46,47,0,'*',0),(113,'mainmenu','Módulo de Autorizaciones','modulo-de-autorizaciones','','modulo-de-autorizaciones','#','url',1,1,1,0,0,'0000-00-00 00:00:00',0,7,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}',15,24,0,'*',0),(114,'mainmenu','Órdenes de Pedido','ordenes-de-pedido','','modulo-de-autorizaciones/ordenes-de-pedido','index.php?option=com_operacion&view=ordenespedido','component',1,113,2,10001,0,'0000-00-00 00:00:00',0,7,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',22,23,0,'*',0),(115,'mainmenu','Registro de Órdenes','ordenes-ingreso-de-material','','ordenes-ingreso-de-material','index.php?option=com_operacion&view=ordenespedido&layout=edit','component',1,1,1,10001,0,'0000-00-00 00:00:00',0,7,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',13,14,0,'*',0),(116,'mainmenu','Formulario Web de Solicitud','formulario-web-de-solicitud','','modulo-de-autorizaciones/formulario-web-de-solicitud','index.php?option=com_operacion&view=ordenesweb','component',1,113,2,10001,0,'0000-00-00 00:00:00',0,7,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',16,17,0,'*',0),(117,'mainmenu','Autorizaciones','autorizaciones','','modulo-de-autorizaciones/autorizaciones','#','url',-2,113,2,0,0,'0000-00-00 00:00:00',0,2,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}',18,19,0,'*',0),(118,'mainmenu','Novedades','novedades','','modulo-de-autorizaciones/novedades','#','url',-2,113,2,0,0,'0000-00-00 00:00:00',0,2,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}',20,21,0,'*',0),(119,'mainmenu','Control de Ingresos/Salida','control-de-ingresos','','control-de-ingresos','index.php?option=com_operacion&view=operacion&layout=edit','component',1,1,1,10001,0,'0000-00-00 00:00:00',0,9,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',25,26,0,'*',0),(120,'mainmenu','Control de Salida','control-de-salida','','control-de-salida','#','url',-2,1,1,0,0,'0000-00-00 00:00:00',0,2,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}',79,80,0,'*',0),(121,'mainmenu','Modulo Comercial','modulo-comercial','','modulo-comercial','#','url',1,1,1,0,0,'0000-00-00 00:00:00',0,7,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}',81,86,0,'*',0),(122,'mainmenu','Facturas','ordenes-de-pedido','','modulo-comercial/ordenes-de-pedido','index.php?option=com_operacion&view=facturacion','component',1,121,2,10001,0,'0000-00-00 00:00:00',0,7,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',82,83,0,'*',0),(123,'mainmenu','Conductores','conductores','','administrador-clientes/conductores','index.php?option=com_administracion&view=conductores','component',1,109,2,10000,0,'0000-00-00 00:00:00',0,7,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',48,49,0,'*',0),(124,'invisible','Solicitud de ordenes por web','solicitud-de-ordenes-por-web','','solicitud-de-ordenes-por-web','index.php?option=com_operacion&view=ordenespedido&layout=edit','component',1,1,1,10001,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',87,88,0,'*',0),(125,'mainmenu','Gestión de Usuarios','gestion-de-usuarios','','gestion-de-usuarios','index.php?option=com_users&view=useradmins','component',1,1,1,25,0,'0000-00-00 00:00:00',0,8,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',89,90,0,'*',0),(126,'mainmenu','Ordenes de Pedido','comercial-ordenes-pedido','','modulo-comercial/comercial-ordenes-pedido','index.php?option=com_operacion&view=facturacion','component',1,121,2,10001,0,'0000-00-00 00:00:00',0,7,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',84,85,0,'*',0),(127,'main','AcyMailing','acymailing','','acymailing','index.php?option=com_acymailing','component',0,1,1,10006,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-acymailing.png',0,'{}',91,106,0,'',1),(128,'main','Users','users','','acymailing/users','index.php?option=com_acymailing&ctrl=subscriber','component',0,127,2,10006,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-users.png',0,'{}',92,93,0,'',1),(129,'main','Lists','lists','','acymailing/lists','index.php?option=com_acymailing&ctrl=list','component',0,127,2,10006,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-acylist.png',0,'{}',94,95,0,'',1),(130,'main','Newsletters','newsletters','','acymailing/newsletters','index.php?option=com_acymailing&ctrl=newsletter','component',0,127,2,10006,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-newsletter.png',0,'{}',96,97,0,'',1),(131,'main','Templates','templates','','acymailing/templates','index.php?option=com_acymailing&ctrl=template','component',0,127,2,10006,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-acytemplate.png',0,'{}',98,99,0,'',1),(132,'main','Queue','queue','','acymailing/queue','index.php?option=com_acymailing&ctrl=queue','component',0,127,2,10006,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-process.png',0,'{}',100,101,0,'',1),(133,'main','Statistics','statistics','','acymailing/statistics','index.php?option=com_acymailing&ctrl=stats','component',0,127,2,10006,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-stats.png',0,'{}',102,103,0,'',1),(134,'main','Configuration','configuration','','acymailing/configuration','index.php?option=com_acymailing&ctrl=cpanel','component',0,127,2,10006,0,'0000-00-00 00:00:00',0,1,'../media/com_acymailing/images/icons/icon-16-acyconfig.png',0,'{}',104,105,0,'',1);
/*!40000 ALTER TABLE `qzq4u_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_menu_types`
--

DROP TABLE IF EXISTS `qzq4u_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_menu_types`
--

LOCK TABLES `qzq4u_menu_types` WRITE;
/*!40000 ALTER TABLE `qzq4u_menu_types` DISABLE KEYS */;
INSERT INTO `qzq4u_menu_types` VALUES (1,0,'mainmenu','Main Menu','The main menu for the site'),(2,55,'invisible','Invisible','Invisible');
/*!40000 ALTER TABLE `qzq4u_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_messages`
--

DROP TABLE IF EXISTS `qzq4u_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_messages`
--

LOCK TABLES `qzq4u_messages` WRITE;
/*!40000 ALTER TABLE `qzq4u_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_messages_cfg`
--

DROP TABLE IF EXISTS `qzq4u_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_messages_cfg`
--

LOCK TABLES `qzq4u_messages_cfg` WRITE;
/*!40000 ALTER TABLE `qzq4u_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_modules`
--

DROP TABLE IF EXISTS `qzq4u_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_modules`
--

LOCK TABLES `qzq4u_modules` WRITE;
/*!40000 ALTER TABLE `qzq4u_modules` DISABLE KEYS */;
INSERT INTO `qzq4u_modules` VALUES (1,39,'Main Menu','','',1,'position-8',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"System-none\"}',0,'*'),(2,40,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,41,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(4,42,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(8,43,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,44,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,45,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(12,46,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,47,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,48,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,49,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,50,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,51,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}',0,'*'),(79,52,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,53,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,0,'AcyMailing Module','','',0,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_acymailing',1,1,'',0,'*');
/*!40000 ALTER TABLE `qzq4u_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_modules_menu`
--

DROP TABLE IF EXISTS `qzq4u_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_modules_menu`
--

LOCK TABLES `qzq4u_modules_menu` WRITE;
/*!40000 ALTER TABLE `qzq4u_modules_menu` DISABLE KEYS */;
INSERT INTO `qzq4u_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(87,0);
/*!40000 ALTER TABLE `qzq4u_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_newsfeeds`
--

DROP TABLE IF EXISTS `qzq4u_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_newsfeeds`
--

LOCK TABLES `qzq4u_newsfeeds` WRITE;
/*!40000 ALTER TABLE `qzq4u_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_operacion_estado_factura`
--

DROP TABLE IF EXISTS `qzq4u_operacion_estado_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_operacion_estado_factura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `disabled` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_operacion_estado_factura`
--

LOCK TABLES `qzq4u_operacion_estado_factura` WRITE;
/*!40000 ALTER TABLE `qzq4u_operacion_estado_factura` DISABLE KEYS */;
INSERT INTO `qzq4u_operacion_estado_factura` VALUES (1,'Pendiete',0,NULL,NULL,NULL,NULL),(2,'Realizado',0,NULL,NULL,NULL,NULL),(3,'Por Cobrar',0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `qzq4u_operacion_estado_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_operacion_ordenes_estado`
--

DROP TABLE IF EXISTS `qzq4u_operacion_ordenes_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_operacion_ordenes_estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `disabled` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_operacion_ordenes_estado`
--

LOCK TABLES `qzq4u_operacion_ordenes_estado` WRITE;
/*!40000 ALTER TABLE `qzq4u_operacion_ordenes_estado` DISABLE KEYS */;
INSERT INTO `qzq4u_operacion_ordenes_estado` VALUES (1,'Pendiente por Autorizar',0,NULL,NULL,NULL,NULL),(2,'Autorizado',0,NULL,NULL,NULL,NULL),(3,'Inactiva',0,NULL,NULL,NULL,NULL),(4,'Novedad',0,NULL,NULL,NULL,NULL),(5,'Finalizada',0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `qzq4u_operacion_ordenes_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_operacion_ordenes_pedido`
--

DROP TABLE IF EXISTS `qzq4u_operacion_ordenes_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_operacion_ordenes_pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `principal` tinyint(1) DEFAULT '1' COMMENT 'Campo que indica si el registro principal',
  `id_parent` int(11) DEFAULT NULL,
  `tipo_orden` int(1) DEFAULT NULL,
  `id_cantera` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_vehiculo` int(11) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `id_material` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_estado` int(11) NOT NULL DEFAULT '1',
  `estado_factura` int(11) DEFAULT NULL,
  `craeted` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_operacion_ordenes_pedido`
--

LOCK TABLES `qzq4u_operacion_ordenes_pedido` WRITE;
/*!40000 ALTER TABLE `qzq4u_operacion_ordenes_pedido` DISABLE KEYS */;
INSERT INTO `qzq4u_operacion_ordenes_pedido` VALUES (1,1,0,1,1,1,1,'2016-08-21',1,200,2,3,NULL,NULL,'2016-10-20 17:48:00',204),(2,1,0,1,6,2,1,'2016-08-27',3,3500,4,2,NULL,205,'2016-10-26 17:27:00',205),(3,1,0,1,1,2,2,'2016-09-22',1,1000,2,3,NULL,0,'2016-09-24 17:57:00',205),(4,1,0,1,1,2,5,'2016-09-24',3,22,2,3,NULL,0,'2016-10-08 18:43:00',204),(5,1,0,1,6,2,1,'2016-10-30',3,3500,4,2,NULL,204,'2016-10-26 10:43:00',204),(6,0,5,1,6,2,5,'2016-10-31',1,12,1,1,NULL,204,NULL,NULL),(7,0,2,1,6,NULL,1,'2016-08-27',3,NULL,1,2,NULL,205,NULL,NULL),(8,1,NULL,1,2,2,1,'2016-10-10',1,12,1,1,NULL,205,NULL,NULL),(9,1,NULL,1,6,2,1,'2016-10-10',2,200,4,2,NULL,205,'2016-10-26 18:05:00',205),(10,1,NULL,1,6,1,1,'2016-01-11',3,1,4,3,NULL,205,'2016-10-26 18:07:00',205),(11,0,9,1,6,NULL,1,'2016-10-10',2,NULL,1,2,NULL,205,NULL,NULL),(12,0,10,1,6,NULL,2,'2016-01-10',3,0,1,3,NULL,205,NULL,NULL);
/*!40000 ALTER TABLE `qzq4u_operacion_ordenes_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_operacion_ordenes_web`
--

DROP TABLE IF EXISTS `qzq4u_operacion_ordenes_web`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_operacion_ordenes_web` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_orden` int(1) DEFAULT NULL,
  `id_cantera` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_vehiculo` int(11) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `id_material` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_estado` int(11) NOT NULL DEFAULT '1',
  `estado_factura` int(11) DEFAULT NULL,
  `craeted` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_operacion_ordenes_web`
--

LOCK TABLES `qzq4u_operacion_ordenes_web` WRITE;
/*!40000 ALTER TABLE `qzq4u_operacion_ordenes_web` DISABLE KEYS */;
INSERT INTO `qzq4u_operacion_ordenes_web` VALUES (1,1,6,1,1,'2016-08-21',1,200,1,1,NULL,NULL,NULL,NULL),(2,1,6,2,1,'2016-08-27',3,3500,1,1,NULL,205,NULL,NULL),(3,1,6,2,2,'2016-09-22',1,1000,1,3,NULL,0,NULL,NULL),(4,1,6,2,3,'2016-09-24',1,1000,1,1,NULL,0,NULL,NULL),(5,1,6,1,1,'2016-09-24',3,3500,1,1,NULL,0,NULL,NULL),(12,1,3,1,3,'2016-10-28',3,2800,1,NULL,NULL,0,NULL,NULL),(7,1,6,1,5,'2016-10-26',3,23,1,1,NULL,0,NULL,NULL),(8,1,6,1,5,'2016-10-26',3,23,1,1,NULL,0,NULL,NULL),(9,1,6,1,5,'2016-10-26',3,23,1,1,NULL,0,NULL,NULL),(10,1,3,1,5,'2016-10-26',3,23,1,1,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `qzq4u_operacion_ordenes_web` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_overrider`
--

DROP TABLE IF EXISTS `qzq4u_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_overrider`
--

LOCK TABLES `qzq4u_overrider` WRITE;
/*!40000 ALTER TABLE `qzq4u_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_postinstall_messages`
--

DROP TABLE IF EXISTS `qzq4u_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_postinstall_messages`
--

LOCK TABLES `qzq4u_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `qzq4u_postinstall_messages` DISABLE KEYS */;
INSERT INTO `qzq4u_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),(3,700,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),(4,700,'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION','plg_system_updatenotification',1,'action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_condition','3.6.3',1);
/*!40000 ALTER TABLE `qzq4u_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_redirect_links`
--

DROP TABLE IF EXISTS `qzq4u_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_redirect_links`
--

LOCK TABLES `qzq4u_redirect_links` WRITE;
/*!40000 ALTER TABLE `qzq4u_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_schemas`
--

DROP TABLE IF EXISTS `qzq4u_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_schemas`
--

LOCK TABLES `qzq4u_schemas` WRITE;
/*!40000 ALTER TABLE `qzq4u_schemas` DISABLE KEYS */;
INSERT INTO `qzq4u_schemas` VALUES (700,'3.6.3-2016-08-16');
/*!40000 ALTER TABLE `qzq4u_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_session`
--

DROP TABLE IF EXISTS `qzq4u_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_session`
--

LOCK TABLES `qzq4u_session` WRITE;
/*!40000 ALTER TABLE `qzq4u_session` DISABLE KEYS */;
INSERT INTO `qzq4u_session` VALUES ('p322mi9gegj41pc0gjr87udds6',0,0,'1479171523','joomla|s:1036:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo2O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ3OTE3MTQ5MztzOjQ6Imxhc3QiO2k6MTQ3OTE3MTUxNDtzOjM6Im5vdyI7aToxNDc5MTcxNTIzO31zOjU6InRva2VuIjtzOjMyOiJZd1R2bFFrUnRPVnhIQVFtSFlWNDBOcUduRGYyWkxNVSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoyOntzOjU6InVzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImxvZ2luIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImZvcm0iO086ODoic3RkQ2xhc3MiOjI6e3M6NjoicmV0dXJuIjtzOjk6ImluZGV4LnBocCI7czo0OiJkYXRhIjthOjA6e319fX1zOjEzOiJjb21fb3BlcmFjaW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjEzOiJmYWN0dXJhY2lvbmVzIjtPOjg6InN0ZENsYXNzIjoxOntzOjg6Im9yZGVyY29sIjtOO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjE7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7czozOiIyMDQiO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',204,'concan');
/*!40000 ALTER TABLE `qzq4u_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_tags`
--

DROP TABLE IF EXISTS `qzq4u_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_tags`
--

LOCK TABLES `qzq4u_tags` WRITE;
/*!40000 ALTER TABLE `qzq4u_tags` DISABLE KEYS */;
INSERT INTO `qzq4u_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',42,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `qzq4u_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_template_styles`
--

DROP TABLE IF EXISTS `qzq4u_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_template_styles`
--

LOCK TABLES `qzq4u_template_styles` WRITE;
/*!40000 ALTER TABLE `qzq4u_template_styles` DISABLE KEYS */;
INSERT INTO `qzq4u_template_styles` VALUES (7,'protostar',0,'1','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}');
/*!40000 ALTER TABLE `qzq4u_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_ucm_base`
--

DROP TABLE IF EXISTS `qzq4u_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_ucm_base`
--

LOCK TABLES `qzq4u_ucm_base` WRITE;
/*!40000 ALTER TABLE `qzq4u_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_ucm_content`
--

DROP TABLE IF EXISTS `qzq4u_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_ucm_content`
--

LOCK TABLES `qzq4u_ucm_content` WRITE;
/*!40000 ALTER TABLE `qzq4u_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_ucm_history`
--

DROP TABLE IF EXISTS `qzq4u_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_ucm_history`
--

LOCK TABLES `qzq4u_ucm_history` WRITE;
/*!40000 ALTER TABLE `qzq4u_ucm_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_update_sites`
--

DROP TABLE IF EXISTS `qzq4u_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_update_sites`
--

LOCK TABLES `qzq4u_update_sites` WRITE;
/*!40000 ALTER TABLE `qzq4u_update_sites` DISABLE KEYS */;
INSERT INTO `qzq4u_update_sites` VALUES (1,'Joomla! Core','collection','https://update.joomla.org/core/test/list_test.xml',1,1479171495,''),(2,'Joomla! Extension Directory','collection','https://update.joomla.org/jed/list.xml',1,1479171495,''),(3,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_3.xml',1,0,''),(4,'Joomla! Update Component Update Site','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,0,''),(5,'AcyMailing','extension','http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml',1,0,'');
/*!40000 ALTER TABLE `qzq4u_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_update_sites_extensions`
--

DROP TABLE IF EXISTS `qzq4u_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_update_sites_extensions`
--

LOCK TABLES `qzq4u_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `qzq4u_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `qzq4u_update_sites_extensions` VALUES (1,700),(2,700),(3,802),(3,10005),(4,28),(5,10006);
/*!40000 ALTER TABLE `qzq4u_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_updates`
--

DROP TABLE IF EXISTS `qzq4u_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_updates`
--

LOCK TABLES `qzq4u_updates` WRITE;
/*!40000 ALTER TABLE `qzq4u_updates` DISABLE KEYS */;
INSERT INTO `qzq4u_updates` VALUES (1,1,700,'Joomla','','joomla','file','',0,'3.6.3-rc3','','https://update.joomla.org/core/teststs/extension_sts.xml','','');
/*!40000 ALTER TABLE `qzq4u_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_user_keys`
--

DROP TABLE IF EXISTS `qzq4u_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_user_keys`
--

LOCK TABLES `qzq4u_user_keys` WRITE;
/*!40000 ALTER TABLE `qzq4u_user_keys` DISABLE KEYS */;
INSERT INTO `qzq4u_user_keys` VALUES (3,'Pruebas','$2y$10$JDe7DFhoQgirX09i5ZxxIuDA2dxJ2Qib2ZlLms9mj6WSm0tq9aoYO','dQEKWpzPcaBQtVJT9Qii',0,'1482167392','joomla_remember_me_19dc55380fafa43db7f45d8b5916c1ae');
/*!40000 ALTER TABLE `qzq4u_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_user_notes`
--

DROP TABLE IF EXISTS `qzq4u_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_user_notes`
--

LOCK TABLES `qzq4u_user_notes` WRITE;
/*!40000 ALTER TABLE `qzq4u_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_user_profiles`
--

DROP TABLE IF EXISTS `qzq4u_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_user_profiles`
--

LOCK TABLES `qzq4u_user_profiles` WRITE;
/*!40000 ALTER TABLE `qzq4u_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `qzq4u_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_user_usergroup_map`
--

DROP TABLE IF EXISTS `qzq4u_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_user_usergroup_map`
--

LOCK TABLES `qzq4u_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `qzq4u_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `qzq4u_user_usergroup_map` VALUES (204,8),(204,10),(205,2),(205,11),(206,2),(206,11);
/*!40000 ALTER TABLE `qzq4u_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_usergroups`
--

DROP TABLE IF EXISTS `qzq4u_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_usergroups`
--

LOCK TABLES `qzq4u_usergroups` WRITE;
/*!40000 ALTER TABLE `qzq4u_usergroups` DISABLE KEYS */;
INSERT INTO `qzq4u_usergroups` VALUES (1,0,1,14,'Public'),(2,1,2,11,'Registered'),(8,1,12,13,'Super Users'),(10,11,6,7,'Administración'),(11,12,5,8,'Administrador Cantera'),(12,13,4,9,'Coordinadores Cantera'),(13,2,3,10,'Coordinador Carga');
/*!40000 ALTER TABLE `qzq4u_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_users`
--

DROP TABLE IF EXISTS `qzq4u_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `id_cantera` int(2) DEFAULT NULL,
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_users`
--

LOCK TABLES `qzq4u_users` WRITE;
/*!40000 ALTER TABLE `qzq4u_users` DISABLE KEYS */;
INSERT INTO `qzq4u_users` VALUES (204,'Super User','concan','the3gatos@gmail.com','$2y$10$RffBzpRPJv75tj6AkbTlBuyBEr1aj6TjO5RsbpCKWKSsLOLfN7unu',0,NULL,1,'2016-08-03 03:16:29','2016-11-15 00:58:25','0','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0),(205,'Pruebas','Pruebas','andres.cortesb@gmail.com','$2y$10$PM.7NFx8YGqbzG5GRvC0uuQL/JdIE3.2lIO9sGSq5eS4xf8QPHotC',0,6,0,'2016-08-05 11:43:43','2016-11-05 05:29:39','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0),(206,'diego ','diego','diego@the3grat.com','$2y$10$bqij0ruhRXYm.eeSG7NWZuD5o23OFRGO1046TaW5HjXhulVaOADvK',0,1,0,'2016-10-14 03:45:33','0000-00-00 00:00:00','','{}','0000-00-00 00:00:00',0,'','',0);
/*!40000 ALTER TABLE `qzq4u_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_utf8_conversion`
--

DROP TABLE IF EXISTS `qzq4u_utf8_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_utf8_conversion`
--

LOCK TABLES `qzq4u_utf8_conversion` WRITE;
/*!40000 ALTER TABLE `qzq4u_utf8_conversion` DISABLE KEYS */;
INSERT INTO `qzq4u_utf8_conversion` VALUES (2);
/*!40000 ALTER TABLE `qzq4u_utf8_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qzq4u_viewlevels`
--

DROP TABLE IF EXISTS `qzq4u_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qzq4u_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qzq4u_viewlevels`
--

LOCK TABLES `qzq4u_viewlevels` WRITE;
/*!40000 ALTER TABLE `qzq4u_viewlevels` DISABLE KEYS */;
INSERT INTO `qzq4u_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',2,'[2,8]'),(3,'Special',3,'[8]'),(6,'Super Users',4,'[8]'),(7,'Administrador Cantera',0,'[11]'),(8,'Administración',0,'[10]'),(9,'Control Cantera',0,'[11,12,13]');
/*!40000 ALTER TABLE `qzq4u_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-18 15:53:33
