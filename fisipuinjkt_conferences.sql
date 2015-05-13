-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 13, 2015 at 08:09 PM
-- Server version: 5.5.40
-- PHP Version: 5.4.38

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fisipuinjkt_conferences`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_captcha`
--

CREATE TABLE IF NOT EXISTS `tbl_captcha` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(11) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `word` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=326 ;

--
-- Dumping data for table `tbl_captcha`
--

INSERT INTO `tbl_captcha` (`id`, `time`, `ip_address`, `word`) VALUES
(325, 1431520436, '::1', 'suZxb'),
(324, 1431520427, '::1', 'NjJmk');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ci_sessions`
--

CREATE TABLE IF NOT EXISTS `tbl_ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ci_sessions`
--

INSERT INTO `tbl_ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('fe35b794102a5c1f3372e969eaf9edc1', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36', 1431508756, 'a:6:{s:9:"user_data";s:0:"";s:8:"curr_url";s:43:"admin-panel/conference/index/ajax_list_info";s:8:"prev_url";s:43:"admin-panel/conference/index/ajax_list_info";s:11:"module_list";s:735:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","setting{{slash}}/index":"Settings"},"Module":{"modulelist{{slash}}/index":"Module List"},"Conference":{"conference{{slash}}/index":"Conferences","speaker{{slash}}/index":"Speaker","information{{slash}}/index":"Informations","schedule{{slash}}/index":"Schedules","confgallery{{slash}}/index":"Gallery"},"Participant":{"participant{{slash}}/index":"Participant","attachment{{slash}}/index":"Attachment"},"Region":{"country{{slash}}/index":"Country","province{{slash}}/index":"Province","urbandistrict{{slash}}/index":"Urban District","suburban{{slash}}/index":"Sub Urban","district{{slash}}/index":"District"}}";s:20:"module_function_list";s:6937:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","setting{{slash}}/index":"Settings","dashboard{{slash}}/add":"Add New Dashboard","dashboard{{slash}}/view":"View Dashboard","dashboard{{slash}}/edit":"Edit Dashboard","dashboard{{slash}}/delete":"Delete Dashboard","dashboard{{slash}}/change":"Change Dashboard Status","user{{slash}}/add":"Add User","user{{slash}}/view":"View User","user{{slash}}/edit":"Edit User","user{{slash}}/delete":"Delete User","user{{slash}}/change":"Change User Status","user{{slash}}/image":"Change User Image","user{{slash}}/upload":"Upload User Image","usergroup{{slash}}/add":"Add User Group","usergroup{{slash}}/view":"View User Group","usergroup{{slash}}/edit":"Edit User Group","usergroup{{slash}}/delete":"Delete User Group","usergroup{{slash}}/change":"Change User Group Status","setting{{slash}}/add":"Add Setting","setting{{slash}}/view":"View Setting","setting{{slash}}/edit":"Edit Setting","setting{{slash}}/delete":"Delete Setting","setting{{slash}}/change":"Change Setting Status"},"Module":{"modulelist{{slash}}/edit":"Edit Module","modulelist{{slash}}/trash":"Delete User Permission"},"Conference":{"conference{{slash}}/index":"Conferences","speaker{{slash}}/index":"Speaker","information{{slash}}/index":"Informations","schedule{{slash}}/index":"Schedules","confgallery{{slash}}/index":"Gallery","conference{{slash}}/index{{slash}}/add":"Add Conference","conference{{slash}}/index{{slash}}/view":"View Conference","conference{{slash}}/index{{slash}}/edit":"Edit Conference","conference{{slash}}/index{{slash}}/delete":"Delete Conference","conference{{slash}}/index{{slash}}/change":"Change Conference Status","conference{{slash}}/index{{slash}}/export":"Export Conference","conference{{slash}}/index{{slash}}/print":"Print Conference","conference{{slash}}/gallery":"Conference Gallery","speaker{{slash}}/index{{slash}}/add":"Add Speaker","speaker{{slash}}/index{{slash}}/view":"View Speaker","speaker{{slash}}/index{{slash}}/edit":"Edit Speaker","speaker{{slash}}/index{{slash}}/delete":"Delete Speaker","speaker{{slash}}/index{{slash}}/change":"Change Speaker Status","speaker{{slash}}/index{{slash}}/export":"Export Speaker","speaker{{slash}}/index{{slash}}/print":"Print Speaker","information{{slash}}/index{{slash}}/add":"Add Information","information{{slash}}/index{{slash}}/view":"View Information","information{{slash}}/index{{slash}}/edit":"Edit Information","information{{slash}}/index{{slash}}/delete":"Delete Information","information{{slash}}/index{{slash}}/change":"Change Information","information{{slash}}/index{{slash}}/export":"Export Information","information{{slash}}/index{{slash}}/print":"Print Information","schedule{{slash}}/index{{slash}}/add":"Add Schedule","schedule{{slash}}/index{{slash}}/view":"View Schedule","schedule{{slash}}/index{{slash}}/edit":"Edit Schedule","schedule{{slash}}/index{{slash}}/delete":"Delete Schedule","schedule{{slash}}/set":"Set to Schedule","schedule{{slash}}/index{{slash}}/change":"Change Schedule","schedule{{slash}}/index{{slash}}/export":"Export Schedule","schedule{{slash}}/index{{slash}}/print":"Print Schedule","confgallery{{slash}}/index{{slash}}/add":"Add Gallery","confgallery{{slash}}/index{{slash}}/view":"View Gallery","confgallery{{slash}}/index{{slash}}/edit":"Edit Gallery","confgallery{{slash}}/index{{slash}}/delete":"Delete Gallery","confgallery{{slash}}/index{{slash}}/change":"Change Gallery","confgallery{{slash}}/index{{slash}}/export":"Export Gallery","confgallery{{slash}}/index{{slash}}/print":"Print Gallery"},"Participant":{"participant{{slash}}/index":"Participant","attachment{{slash}}/index":"Attachment","participant{{slash}}/index{{slash}}/add":"Add Participant","participant{{slash}}/index{{slash}}/view":"View Participant","participant{{slash}}/index{{slash}}/edit":"Edit Participant","participant{{slash}}/index{{slash}}/delete":"Delete Participant","participant{{slash}}/index{{slash}}/change":"Change Participant Status","participant{{slash}}/index{{slash}}/export":"Export Participant","participant{{slash}}/index{{slash}}/print":"Print Participant","attachment{{slash}}/index{{slash}}/add":"Add Attachment","attachment{{slash}}/index{{slash}}/view":"View Attachment","attachment{{slash}}/index{{slash}}/edit":"Edit Attachment","attachment{{slash}}/index{{slash}}/delete":"Delete Attachment","attachment{{slash}}/index{{slash}}/change":"Change Attachment Status","attachment{{slash}}/index{{slash}}/export":"Export Attachment","attachment{{slash}}/index{{slash}}/print":"Print Attachment"},"Region":{"country{{slash}}/index":"Country","province{{slash}}/index":"Province","urbandistrict{{slash}}/index":"Urban District","suburban{{slash}}/index":"Sub Urban","district{{slash}}/index":"District","country{{slash}}/index{{slash}}/add":"Add Country","country{{slash}}/index{{slash}}/view":"View Country","country{{slash}}/index{{slash}}/edit":"Edit Country","country{{slash}}/index{{slash}}/delete":"Delete Country","country{{slash}}/index{{slash}}/change":"Change Country Status","country{{slash}}/index{{slash}}/export":"Export Country","country{{slash}}/index{{slash}}/print":"Print Country","province{{slash}}/index{{slash}}/add":"Add Province","province{{slash}}/index{{slash}}/view":"View Province","province{{slash}}/index{{slash}}/edit":"Edit Province","province{{slash}}/index{{slash}}/delete":"Delete Province","province{{slash}}/index{{slash}}/change":"Change Province Status","province{{slash}}/index{{slash}}/export":"Export Province","province{{slash}}/index{{slash}}/print":"Print Province","urbandistrict{{slash}}/index{{slash}}/add":"Add Urban District","urbandistrict{{slash}}/index{{slash}}/view":"View Urban District","urbandistrict{{slash}}/index{{slash}}/edit":"Edit Urban District","urbandistrict{{slash}}/index{{slash}}/delete":"Delete Urban District","urbandistrict{{slash}}/index{{slash}}/change":"Change Urban District Status","urbandistrict{{slash}}/index{{slash}}/export":"Export Urban District","urbandistrict{{slash}}/index{{slash}}/print":"Print Urban District","suburban{{slash}}/index{{slash}}/add":"Add Sub Urban","suburban{{slash}}/index{{slash}}/view":"View Sub Urban","suburban{{slash}}/index{{slash}}/edit":"Edit Sub Urban","suburban{{slash}}/index{{slash}}/delete":"Delete Sub Urban","suburban{{slash}}/index{{slash}}/change":"Change Sub Urban Status","suburban{{slash}}/index{{slash}}/export":"Export Sub Urban","suburban{{slash}}/index{{slash}}/print":"Print Sub Urban","district{{slash}}/index{{slash}}/add":"Add District","district{{slash}}/index{{slash}}/view":"View District","district{{slash}}/index{{slash}}/edit":"Edit District","district{{slash}}/index{{slash}}/delete":"Delete District","district{{slash}}/index{{slash}}/change":"Change District Status","district{{slash}}/index{{slash}}/export":"Export District","district{{slash}}/index{{slash}}/print":"Print District"}}";s:12:"user_session";O:8:"stdClass":8:{s:2:"id";s:1:"1";s:8:"username";s:5:"admin";s:5:"email";s:15:"admin@admin.com";s:8:"group_id";s:1:"1";s:6:"status";s:1:"1";s:10:"last_login";s:10:"1431465936";s:9:"logged_in";b:1;s:4:"name";s:1:" ";}}'),
('8aed046f85af5423b81cf8041994a583', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36', 1431520237, 'a:1:{s:9:"user_data";s:0:"";}'),
('579dfbe1a1fdd60268beb26207343637', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:15.0) Gecko/20100101 Firefox/15.0.1', 1431520266, 'a:2:{s:9:"user_data";s:0:"";s:17:"flash:old:message";s:79:"Please check your Email : <b>dyarfi20@gmail.com</b> for the Account Activation!";}'),
('69e333ea6cba66d0cc7226b48a5516c7', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:15.0) Gecko/20100101 Firefox/15.0.1', 1431507481, 'a:6:{s:9:"user_data";s:0:"";s:8:"curr_url";s:43:"admin-panel/conference/index/ajax_list_info";s:8:"prev_url";s:43:"admin-panel/conference/index/ajax_list_info";s:11:"module_list";s:735:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","setting{{slash}}/index":"Settings"},"Module":{"modulelist{{slash}}/index":"Module List"},"Conference":{"conference{{slash}}/index":"Conferences","speaker{{slash}}/index":"Speaker","information{{slash}}/index":"Informations","schedule{{slash}}/index":"Schedules","confgallery{{slash}}/index":"Gallery"},"Participant":{"participant{{slash}}/index":"Participant","attachment{{slash}}/index":"Attachment"},"Region":{"country{{slash}}/index":"Country","province{{slash}}/index":"Province","urbandistrict{{slash}}/index":"Urban District","suburban{{slash}}/index":"Sub Urban","district{{slash}}/index":"District"}}";s:20:"module_function_list";s:6937:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","setting{{slash}}/index":"Settings","dashboard{{slash}}/add":"Add New Dashboard","dashboard{{slash}}/view":"View Dashboard","dashboard{{slash}}/edit":"Edit Dashboard","dashboard{{slash}}/delete":"Delete Dashboard","dashboard{{slash}}/change":"Change Dashboard Status","user{{slash}}/add":"Add User","user{{slash}}/view":"View User","user{{slash}}/edit":"Edit User","user{{slash}}/delete":"Delete User","user{{slash}}/change":"Change User Status","user{{slash}}/image":"Change User Image","user{{slash}}/upload":"Upload User Image","usergroup{{slash}}/add":"Add User Group","usergroup{{slash}}/view":"View User Group","usergroup{{slash}}/edit":"Edit User Group","usergroup{{slash}}/delete":"Delete User Group","usergroup{{slash}}/change":"Change User Group Status","setting{{slash}}/add":"Add Setting","setting{{slash}}/view":"View Setting","setting{{slash}}/edit":"Edit Setting","setting{{slash}}/delete":"Delete Setting","setting{{slash}}/change":"Change Setting Status"},"Module":{"modulelist{{slash}}/edit":"Edit Module","modulelist{{slash}}/trash":"Delete User Permission"},"Conference":{"conference{{slash}}/index":"Conferences","speaker{{slash}}/index":"Speaker","information{{slash}}/index":"Informations","schedule{{slash}}/index":"Schedules","confgallery{{slash}}/index":"Gallery","conference{{slash}}/index{{slash}}/add":"Add Conference","conference{{slash}}/index{{slash}}/view":"View Conference","conference{{slash}}/index{{slash}}/edit":"Edit Conference","conference{{slash}}/index{{slash}}/delete":"Delete Conference","conference{{slash}}/index{{slash}}/change":"Change Conference Status","conference{{slash}}/index{{slash}}/export":"Export Conference","conference{{slash}}/index{{slash}}/print":"Print Conference","conference{{slash}}/gallery":"Conference Gallery","speaker{{slash}}/index{{slash}}/add":"Add Speaker","speaker{{slash}}/index{{slash}}/view":"View Speaker","speaker{{slash}}/index{{slash}}/edit":"Edit Speaker","speaker{{slash}}/index{{slash}}/delete":"Delete Speaker","speaker{{slash}}/index{{slash}}/change":"Change Speaker Status","speaker{{slash}}/index{{slash}}/export":"Export Speaker","speaker{{slash}}/index{{slash}}/print":"Print Speaker","information{{slash}}/index{{slash}}/add":"Add Information","information{{slash}}/index{{slash}}/view":"View Information","information{{slash}}/index{{slash}}/edit":"Edit Information","information{{slash}}/index{{slash}}/delete":"Delete Information","information{{slash}}/index{{slash}}/change":"Change Information","information{{slash}}/index{{slash}}/export":"Export Information","information{{slash}}/index{{slash}}/print":"Print Information","schedule{{slash}}/index{{slash}}/add":"Add Schedule","schedule{{slash}}/index{{slash}}/view":"View Schedule","schedule{{slash}}/index{{slash}}/edit":"Edit Schedule","schedule{{slash}}/index{{slash}}/delete":"Delete Schedule","schedule{{slash}}/set":"Set to Schedule","schedule{{slash}}/index{{slash}}/change":"Change Schedule","schedule{{slash}}/index{{slash}}/export":"Export Schedule","schedule{{slash}}/index{{slash}}/print":"Print Schedule","confgallery{{slash}}/index{{slash}}/add":"Add Gallery","confgallery{{slash}}/index{{slash}}/view":"View Gallery","confgallery{{slash}}/index{{slash}}/edit":"Edit Gallery","confgallery{{slash}}/index{{slash}}/delete":"Delete Gallery","confgallery{{slash}}/index{{slash}}/change":"Change Gallery","confgallery{{slash}}/index{{slash}}/export":"Export Gallery","confgallery{{slash}}/index{{slash}}/print":"Print Gallery"},"Participant":{"participant{{slash}}/index":"Participant","attachment{{slash}}/index":"Attachment","participant{{slash}}/index{{slash}}/add":"Add Participant","participant{{slash}}/index{{slash}}/view":"View Participant","participant{{slash}}/index{{slash}}/edit":"Edit Participant","participant{{slash}}/index{{slash}}/delete":"Delete Participant","participant{{slash}}/index{{slash}}/change":"Change Participant Status","participant{{slash}}/index{{slash}}/export":"Export Participant","participant{{slash}}/index{{slash}}/print":"Print Participant","attachment{{slash}}/index{{slash}}/add":"Add Attachment","attachment{{slash}}/index{{slash}}/view":"View Attachment","attachment{{slash}}/index{{slash}}/edit":"Edit Attachment","attachment{{slash}}/index{{slash}}/delete":"Delete Attachment","attachment{{slash}}/index{{slash}}/change":"Change Attachment Status","attachment{{slash}}/index{{slash}}/export":"Export Attachment","attachment{{slash}}/index{{slash}}/print":"Print Attachment"},"Region":{"country{{slash}}/index":"Country","province{{slash}}/index":"Province","urbandistrict{{slash}}/index":"Urban District","suburban{{slash}}/index":"Sub Urban","district{{slash}}/index":"District","country{{slash}}/index{{slash}}/add":"Add Country","country{{slash}}/index{{slash}}/view":"View Country","country{{slash}}/index{{slash}}/edit":"Edit Country","country{{slash}}/index{{slash}}/delete":"Delete Country","country{{slash}}/index{{slash}}/change":"Change Country Status","country{{slash}}/index{{slash}}/export":"Export Country","country{{slash}}/index{{slash}}/print":"Print Country","province{{slash}}/index{{slash}}/add":"Add Province","province{{slash}}/index{{slash}}/view":"View Province","province{{slash}}/index{{slash}}/edit":"Edit Province","province{{slash}}/index{{slash}}/delete":"Delete Province","province{{slash}}/index{{slash}}/change":"Change Province Status","province{{slash}}/index{{slash}}/export":"Export Province","province{{slash}}/index{{slash}}/print":"Print Province","urbandistrict{{slash}}/index{{slash}}/add":"Add Urban District","urbandistrict{{slash}}/index{{slash}}/view":"View Urban District","urbandistrict{{slash}}/index{{slash}}/edit":"Edit Urban District","urbandistrict{{slash}}/index{{slash}}/delete":"Delete Urban District","urbandistrict{{slash}}/index{{slash}}/change":"Change Urban District Status","urbandistrict{{slash}}/index{{slash}}/export":"Export Urban District","urbandistrict{{slash}}/index{{slash}}/print":"Print Urban District","suburban{{slash}}/index{{slash}}/add":"Add Sub Urban","suburban{{slash}}/index{{slash}}/view":"View Sub Urban","suburban{{slash}}/index{{slash}}/edit":"Edit Sub Urban","suburban{{slash}}/index{{slash}}/delete":"Delete Sub Urban","suburban{{slash}}/index{{slash}}/change":"Change Sub Urban Status","suburban{{slash}}/index{{slash}}/export":"Export Sub Urban","suburban{{slash}}/index{{slash}}/print":"Print Sub Urban","district{{slash}}/index{{slash}}/add":"Add District","district{{slash}}/index{{slash}}/view":"View District","district{{slash}}/index{{slash}}/edit":"Edit District","district{{slash}}/index{{slash}}/delete":"Delete District","district{{slash}}/index{{slash}}/change":"Change District Status","district{{slash}}/index{{slash}}/export":"Export District","district{{slash}}/index{{slash}}/print":"Print District"}}";s:12:"user_session";O:8:"stdClass":8:{s:2:"id";s:1:"1";s:8:"username";s:5:"admin";s:5:"email";s:15:"admin@admin.com";s:8:"group_id";s:1:"1";s:6:"status";s:1:"1";s:10:"last_login";s:10:"1431465936";s:9:"logged_in";b:1;s:4:"name";s:1:" ";}}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_conferences`
--

CREATE TABLE IF NOT EXISTS `tbl_conferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `subject` varchar(128) NOT NULL,
  `synopsis` text,
  `description` text,
  `open_date` char(32) NOT NULL,
  `close_date` char(32) NOT NULL,
  `is_fee` tinyint(1) NOT NULL,
  `is_submit` tinyint(1) NOT NULL,
  `is_speaker` tinyint(1) NOT NULL,
  `is_invitation` tinyint(1) NOT NULL,
  `registration_fee` varchar(256) NOT NULL,
  `cover_photo` varchar(256) NOT NULL,
  `is_located` tinyint(1) NOT NULL,
  `is_related` tinyint(1) NOT NULL,
  `messages` text,
  `location` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('publish','draft','unpublish') DEFAULT 'publish',
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_conferences`
--

INSERT INTO `tbl_conferences` (`id`, `type`, `name`, `subject`, `synopsis`, `description`, `open_date`, `close_date`, `is_fee`, `is_submit`, `is_speaker`, `is_invitation`, `registration_fee`, `cover_photo`, `is_located`, `is_related`, `messages`, `location`, `user_id`, `status`, `added`, `modified`) VALUES
(1, 1, 'Call For Papers International Conference 2015', 'Call For Papers International Conference On Explaining Religious Radicalism And Political Violence: Toward Nation-State Building', '<p style="text-align: center;">\n	Faculty of Social and Political Sciences, Syarif Hidayatullah State Islamic University Jakarta, Indonesia<br />\n	Tuesday-Wednesday, 8-9 September 2015</p>\n', '<p>\n	<span style="font-size:20px;">Background</span></p>\n<p>\n	David Wright-Neville said that there are violent attacks around the world claiming to be acting on behalf of various Jews, Christian, Hindu or Muslim causes to raise question that religion in general, or some religion in particular, are &ldquo;prone to fomenting violence&rdquo; (Wright-Neville 2010: 409). Very few of those violent radicals who claim to be operating in the name of religion have been pious for the majority of their lives. Opposed to popular belief, that most terrorist are radicalized by their psychological burdens, frustration, hate or anger and act violence prior to becoming religious. Wright-Neville claimed that biographical surveys of member of violent Christian, Jewish, Islamist and Hindu groups suggest that fundamentalist interpretations of religion appeal mostly to people who are already radicalized, because they present &ldquo;a pseudo-ethical justification for a preexisting urge to act out violently against those who are perceived to have acted unjustly against the individual concerned and his or her &lsquo;in-group&rsquo;&rdquo;(Wright-Neville 2010: 409).<br />\n	<br />\n	Political violence associated to religions also occurred in Christian history. Catholics and Protestants in the history of Ireland fought violently. They operated religious militias to protect their own community. Some of them worked radical violently by kidnapping, bombing and attacking other religious groups. Among the movements formed were Young Ireland, the Fenian Military, and the Irish Revolutionary Brotherhood (IRA) which are Catholic. They attacked violently British police and military targets in Ireland. They also attacked Irish Unionist (Protestants) in the North of Ireland (White 2006). In Indonesia after the New Order, religious conflicts, terrorist attacks and radicalism have challenged nation-state identity. Some of them involved in political violence climed to belong global movement networks establishing caliphate centralized in the Middle East, but influential in Southeast Asia and other regions.<br />\n	<br />\n	Due to the significance of the issues of political violence associated to religions in history and developed seriously after the Cold War which threaten the ideals of nations and people to found a peaceful relations among people of various ethnicity and religions, Faculty of Social and Political Sciences Syarif Hidayatullah State Islamic University Jakarta, Indonesia invited scholars, academics, researchers and NGO members to join International Conference entitled &ldquo;Explaining Religious Radicalism and Political Violence: Towards Nation-State Building&rdquo; held on 8-9 September 2015<br />\n	<br />\n	&nbsp;</p>\n', '2015-05-10', '2015-05-31', 0, 1, 0, 1, '125000', '8dd8d-03.jpg', 1, 1, '<p>\n	Registrations for presenters and participants are free of charge. All presenters and participants will get a certificate, conference kits and other facilities during the conference.</p>\n', NULL, 0, 'publish', 0, 0),
(2, 1, 'Conference International 2015', 'Conference International Of Information System', '<p>\n	Test</p>\n', '<p>\n	Test</p>\n', '2015-05-11', '2015-05-31', 0, 0, 0, 0, '', '107db-04a.jpg', 0, 0, '<p>\n	Conference International 2015</p>\n', NULL, 0, 'unpublish', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_conference_images`
--

CREATE TABLE IF NOT EXISTS `tbl_conference_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `conference_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_name` text,
  `priority` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `conference_id` (`conference_id`,`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `tbl_conference_images`
--

INSERT INTO `tbl_conference_images` (`id`, `conference_id`, `name`, `title`, `file_name`, `priority`, `count`, `status`, `added`, `modified`) VALUES
(19, 2, NULL, NULL, 'e1376-Lenny-Kravitz-Live-Concert--2-.jpg', NULL, NULL, 1, NULL, NULL),
(20, 2, NULL, NULL, 'f3b64-Lenny-Kravitz-Live-Concert--3-.jpg', NULL, NULL, 1, NULL, NULL),
(21, 2, NULL, NULL, '0b323-Lenny-Kravitz-Live-Concert--4-.jpg', NULL, NULL, 1, NULL, NULL),
(22, 2, NULL, 'asdasdasdas asdasdasd asdasdasd', '1ac6b-Lenny-Kravitz-Live-Concert--5-.jpg', NULL, NULL, 1, NULL, NULL),
(23, 2, NULL, NULL, '2c9b7-Lenny-Kravitz-Live-Concert--6-.jpg', NULL, NULL, 1, NULL, NULL),
(24, 2, NULL, NULL, '3c4ea-Lenny-Kravitz-Live-Concert--7-.jpg', NULL, NULL, 1, NULL, NULL),
(25, 2, NULL, NULL, '4db1a-Lenny-Kravitz-Live-Concert--8-.jpg', NULL, NULL, 1, NULL, NULL),
(26, 2, NULL, NULL, '5e2f3-Lenny-Kravitz-Live-Concert--9-.jpg', NULL, NULL, 1, NULL, NULL),
(27, 2, NULL, NULL, 'a1433-Spleen-Den-Atelier--1-.jpg', NULL, NULL, 1, NULL, NULL),
(28, 2, NULL, NULL, 'abacc-Spleen-Den-Atelier--2-.jpg', NULL, NULL, 1, NULL, NULL),
(29, 2, NULL, NULL, 'b7ec4-Spleen-Den-Atelier--3-.jpg', NULL, NULL, 1, NULL, NULL),
(30, 2, NULL, NULL, 'c2a95-Spleen-Den-Atelier--4-.jpg', NULL, NULL, 1, NULL, NULL),
(31, 2, NULL, NULL, 'd6946-Woodpigeon-Bota-Live-Tour-Gig-Concert-01.jpg', NULL, NULL, 1, NULL, NULL),
(32, 2, NULL, NULL, 'e45e9-Woodpigeon-Bota-Live-Tour-Gig-Concert-04.jpg', NULL, NULL, 1, NULL, NULL),
(33, 2, NULL, NULL, 'f06ea-Woodpigeon-Bota-Live-Tour-Gig-Concert-05.png', NULL, NULL, 1, NULL, NULL),
(34, 2, NULL, NULL, '12f32-Woodpigeon-Bota-Live-Tour-Gig-Concert-06.jpg', NULL, NULL, 1, NULL, NULL),
(35, 2, NULL, NULL, '2f51c-Woodpigeon-Bota-Live-Tour-Gig-Concert-08.png', NULL, NULL, 1, NULL, NULL),
(36, 2, NULL, NULL, '4009a-Woodpigeon-Bota-Live-Tour-Gig-Concert-10.jpg', NULL, NULL, 1, NULL, NULL),
(37, 2, NULL, NULL, '6371c-2840655839_e1714cf1cc.jpg', NULL, NULL, 1, NULL, NULL),
(38, 2, NULL, NULL, '6a6c9-2070313692_3b9f753846_o.jpg', NULL, NULL, 1, NULL, NULL),
(39, 2, NULL, NULL, '79f34-2888135984_26e23d795f.jpg', NULL, NULL, 1, NULL, NULL),
(40, 2, NULL, NULL, '90c0f-3148137223_b135031f2c_o.jpg', NULL, NULL, 1, NULL, NULL),
(41, 2, NULL, NULL, 'a2a35-3350282225_cdaa3b8355.jpg', NULL, NULL, 1, NULL, NULL),
(42, 2, NULL, NULL, 'bc1b6-3351031896_7bd26a34d5.jpg', NULL, NULL, 1, NULL, NULL),
(43, 2, NULL, NULL, 'd1931-3351032814_4411d3960d.jpg', NULL, NULL, 1, NULL, NULL),
(44, 2, NULL, NULL, 'edaaa-3351035522_1f08f9b0c9.jpg', NULL, NULL, 1, NULL, NULL),
(45, 2, NULL, NULL, '15e87-2872126879_29b4fb7dc4.jpg', NULL, NULL, 1, NULL, NULL),
(46, 2, NULL, NULL, '1d664-3483995761_e5598c99c2.jpg', NULL, NULL, 1, NULL, NULL),
(47, 2, NULL, NULL, '3650a-3515198637_6bd30166e7.jpg', NULL, NULL, 1, NULL, NULL),
(48, 2, NULL, NULL, '43002-3483999817_31dbf20eb9.jpg', NULL, NULL, 1, NULL, NULL),
(49, 2, NULL, NULL, '51257-3515202085_113a633499.jpg', NULL, NULL, 1, NULL, NULL),
(50, 2, NULL, NULL, '68d79-3515219923_d8b37b2eae.jpg', NULL, NULL, 1, NULL, NULL),
(51, 2, NULL, NULL, '82066-3515223995_bbe707050e.jpg', NULL, NULL, 1, NULL, NULL),
(52, 2, NULL, NULL, '9c0f3-3515234577_29e9522f88.jpg', NULL, NULL, 1, NULL, NULL),
(53, 2, NULL, NULL, 'b360b-3515239123_7556203777.jpg', NULL, NULL, 1, NULL, NULL),
(54, 2, NULL, NULL, 'd127f-3515248683_a8922ac698.jpg', NULL, NULL, 1, NULL, NULL),
(55, 2, NULL, NULL, 'e174a-3515264067_03ee34e703.jpg', NULL, NULL, 1, NULL, NULL),
(56, 2, NULL, NULL, '1e84a-3515274443_4743842c5f.jpg', NULL, NULL, 1, NULL, NULL),
(57, 2, NULL, NULL, '2f32a-2925502066_4818309243_o.jpg', NULL, NULL, 1, NULL, NULL),
(58, 2, NULL, NULL, '39ee4-3516003716_3841d8d7b9.jpg', NULL, NULL, 1, NULL, NULL),
(59, 2, NULL, NULL, '574e1-3516020200_5cd3ac1e96.jpg', NULL, NULL, 1, NULL, NULL),
(60, 2, NULL, NULL, '5e833-3516040984_b93d8be3b5.jpg', NULL, NULL, 1, NULL, NULL),
(61, 2, NULL, NULL, 'cdb69-FG011.JPG', NULL, NULL, 1, NULL, NULL),
(62, 2, NULL, NULL, '3dc8b-FG012.JPG', NULL, NULL, 1, NULL, NULL),
(63, 2, NULL, NULL, 'add1d-FG014.JPG', NULL, NULL, 1, NULL, NULL),
(64, 2, NULL, NULL, '2e14e-FG013.JPG', NULL, NULL, 1, NULL, NULL),
(65, 2, NULL, NULL, 'a419a-FG015.JPG', NULL, NULL, 1, NULL, NULL),
(66, 2, NULL, NULL, '27fb1-FG016.JPG', NULL, NULL, 1, NULL, NULL),
(67, 2, NULL, NULL, 'a3566-FG017.JPG', NULL, NULL, 1, NULL, NULL),
(68, 2, NULL, NULL, '3d113-FG018.JPG', NULL, NULL, 1, NULL, NULL),
(69, 2, NULL, NULL, 'b1ee8-FG019.JPG', NULL, NULL, 1, NULL, NULL),
(70, 2, NULL, NULL, '30479-FG020.JPG', NULL, NULL, 1, NULL, NULL),
(71, 2, NULL, NULL, 'a6751-FG021.JPG', NULL, NULL, 1, NULL, NULL),
(72, 2, NULL, NULL, '02393-FG197.JPG', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_conference_speakers`
--

CREATE TABLE IF NOT EXISTS `tbl_conference_speakers` (
  `speaker_id` int(11) NOT NULL,
  `conference_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_conference_speakers`
--

INSERT INTO `tbl_conference_speakers` (`speaker_id`, `conference_id`, `priority`) VALUES
(2, 1, 0),
(1, 1, 2),
(3, 1, 1),
(2, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configurations`
--

CREATE TABLE IF NOT EXISTS `tbl_configurations` (
  `parameter` varchar(150) NOT NULL DEFAULT '',
  `value` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`parameter`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_configurations`
--

INSERT INTO `tbl_configurations` (`parameter`, `value`) VALUES
('environment', '0'),
('install', '0'),
('maintenance', '0'),
('theme', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE IF NOT EXISTS `tbl_countries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(3) DEFAULT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_code` (`country_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=243 ;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_code`, `country_name`, `added`, `modified`) VALUES
(1, 'US', 'United States', 0, 0),
(2, 'CA', 'Canada', 0, 0),
(3, 'AF', 'Afghanistan', 0, 0),
(4, 'AL', 'Albania', 0, 0),
(5, 'DZ', 'Algeria', 0, 0),
(6, 'DS', 'American Samoa', 0, 0),
(7, 'AD', 'Andorra', 0, 0),
(8, 'AO', 'Angola', 0, 0),
(9, 'AI', 'Anguilla', 0, 0),
(10, 'AQ', 'Antarctica', 0, 0),
(11, 'AG', 'Antigua and/or Barbuda', 0, 0),
(12, 'AR', 'Argentina', 0, 0),
(13, 'AM', 'Armenia', 0, 0),
(14, 'AW', 'Aruba', 0, 0),
(15, 'AU', 'Australia', 0, 0),
(16, 'AT', 'Austria', 0, 0),
(17, 'AZ', 'Azerbaijan', 0, 0),
(18, 'BS', 'Bahamas', 0, 0),
(19, 'BH', 'Bahrain', 0, 0),
(20, 'BD', 'Bangladesh', 0, 0),
(21, 'BB', 'Barbados', 0, 0),
(22, 'BY', 'Belarus', 0, 0),
(23, 'BE', 'Belgium', 0, 0),
(24, 'BZ', 'Belize', 0, 0),
(25, 'BJ', 'Benin', 0, 0),
(26, 'BM', 'Bermuda', 0, 0),
(27, 'BT', 'Bhutan', 0, 0),
(28, 'BO', 'Bolivia', 0, 0),
(29, 'BA', 'Bosnia and Herzegovina', 0, 0),
(30, 'BW', 'Botswana', 0, 0),
(31, 'BV', 'Bouvet Island', 0, 0),
(32, 'BR', 'Brazil', 0, 0),
(33, 'IO', 'British lndian Ocean Territory', 0, 0),
(34, 'BN', 'Brunei Darussalam', 0, 0),
(35, 'BG', 'Bulgaria', 0, 0),
(36, 'BF', 'Burkina Faso', 0, 0),
(37, 'BI', 'Burundi', 0, 0),
(38, 'KH', 'Cambodia', 0, 0),
(39, 'CM', 'Cameroon', 0, 0),
(40, 'CV', 'Cape Verde', 0, 0),
(41, 'KY', 'Cayman Islands', 0, 0),
(42, 'CF', 'Central African Republic', 0, 0),
(43, 'TD', 'Chad', 0, 0),
(44, 'CL', 'Chile', 0, 0),
(45, 'CN', 'China', 0, 0),
(46, 'CX', 'Christmas Island', 0, 0),
(47, 'CC', 'Cocos (Keeling) Islands', 0, 0),
(48, 'CO', 'Colombia', 0, 0),
(49, 'KM', 'Comoros', 0, 0),
(50, 'CG', 'Congo', 0, 0),
(51, 'CK', 'Cook Islands', 0, 0),
(52, 'CR', 'Costa Rica', 0, 0),
(53, 'HR', 'Croatia (Hrvatska)', 0, 0),
(54, 'CU', 'Cuba', 0, 0),
(55, 'CY', 'Cyprus', 0, 0),
(56, 'CZ', 'Czech Republic', 0, 0),
(57, 'DK', 'Denmark', 0, 0),
(58, 'DJ', 'Djibouti', 0, 0),
(59, 'DM', 'Dominica', 0, 0),
(60, 'DO', 'Dominican Republic', 0, 0),
(61, 'TP', 'East Timor', 0, 0),
(62, 'EC', 'Ecuador', 0, 0),
(63, 'EG', 'Egypt', 0, 0),
(64, 'SV', 'El Salvador', 0, 0),
(65, 'GQ', 'Equatorial Guinea', 0, 0),
(66, 'ER', 'Eritrea', 0, 0),
(67, 'EE', 'Estonia', 0, 0),
(68, 'ET', 'Ethiopia', 0, 0),
(69, 'FK', 'Falkland Islands (Malvinas)', 0, 0),
(70, 'FO', 'Faroe Islands', 0, 0),
(71, 'FJ', 'Fiji', 0, 0),
(72, 'FI', 'Finland', 0, 0),
(73, 'FR', 'France', 0, 0),
(74, 'FX', 'France, Metropolitan', 0, 0),
(75, 'GF', 'French Guiana', 0, 0),
(76, 'PF', 'French Polynesia', 0, 0),
(77, 'TF', 'French Southern Territories', 0, 0),
(78, 'GA', 'Gabon', 0, 0),
(79, 'GM', 'Gambia', 0, 0),
(80, 'GE', 'Georgia', 0, 0),
(81, 'DE', 'Germany', 0, 0),
(82, 'GH', 'Ghana', 0, 0),
(83, 'GI', 'Gibraltar', 0, 0),
(84, 'GR', 'Greece', 0, 0),
(85, 'GL', 'Greenland', 0, 0),
(86, 'GD', 'Grenada', 0, 0),
(87, 'GP', 'Guadeloupe', 0, 0),
(88, 'GU', 'Guam', 0, 0),
(89, 'GT', 'Guatemala', 0, 0),
(90, 'GN', 'Guinea', 0, 0),
(91, 'GW', 'Guinea-Bissau', 0, 0),
(92, 'GY', 'Guyana', 0, 0),
(93, 'HT', 'Haiti', 0, 0),
(94, 'HM', 'Heard and Mc Donald Islands', 0, 0),
(95, 'HN', 'Honduras', 0, 0),
(96, 'HK', 'Hong Kong', 0, 0),
(97, 'HU', 'Hungary', 0, 0),
(98, 'IS', 'Iceland', 0, 0),
(99, 'IN', 'India', 0, 0),
(100, 'ID', 'Indonesia', 0, 0),
(101, 'IR', 'Iran (Islamic Republic of)', 0, 0),
(102, 'IQ', 'Iraq', 0, 0),
(103, 'IE', 'Ireland', 0, 0),
(104, 'IL', 'Israel', 0, 0),
(105, 'IT', 'Italy', 0, 0),
(106, 'CI', 'Ivory Coast', 0, 0),
(107, 'JM', 'Jamaica', 0, 0),
(108, 'JP', 'Japan', 0, 0),
(109, 'JO', 'Jordan', 0, 0),
(110, 'KZ', 'Kazakhstan', 0, 0),
(111, 'KE', 'Kenya', 0, 0),
(112, 'KI', 'Kiribati', 0, 0),
(113, 'KP', 'Korea, Democratic People''s Republic of', 0, 0),
(114, 'KR', 'Korea, Republic of', 0, 0),
(115, 'XK', 'Kosovo', 0, 0),
(116, 'KW', 'Kuwait', 0, 0),
(117, 'KG', 'Kyrgyzstan', 0, 0),
(118, 'LA', 'Lao People''s Democratic Republic', 0, 0),
(119, 'LV', 'Latvia', 0, 0),
(120, 'LB', 'Lebanon', 0, 0),
(121, 'LS', 'Lesotho', 0, 0),
(122, 'LR', 'Liberia', 0, 0),
(123, 'LY', 'Libyan Arab Jamahiriya', 0, 0),
(124, 'LI', 'Liechtenstein', 0, 0),
(125, 'LT', 'Lithuania', 0, 0),
(126, 'LU', 'Luxembourg', 0, 0),
(127, 'MO', 'Macau', 0, 0),
(128, 'MK', 'Macedonia', 0, 0),
(129, 'MG', 'Madagascar', 0, 0),
(130, 'MW', 'Malawi', 0, 0),
(131, 'MY', 'Malaysia', 0, 0),
(132, 'MV', 'Maldives', 0, 0),
(133, 'ML', 'Mali', 0, 0),
(134, 'MT', 'Malta', 0, 0),
(135, 'MH', 'Marshall Islands', 0, 0),
(136, 'MQ', 'Martinique', 0, 0),
(137, 'MR', 'Mauritania', 0, 0),
(138, 'MU', 'Mauritius', 0, 0),
(139, 'TY', 'Mayotte', 0, 0),
(140, 'MX', 'Mexico', 0, 0),
(141, 'FM', 'Micronesia, Federated States of', 0, 0),
(142, 'MD', 'Moldova, Republic of', 0, 0),
(143, 'MC', 'Monaco', 0, 0),
(144, 'MN', 'Mongolia', 0, 0),
(145, 'ME', 'Montenegro', 0, 0),
(146, 'MS', 'Montserrat', 0, 0),
(147, 'MA', 'Morocco', 0, 0),
(148, 'MZ', 'Mozambique', 0, 0),
(149, 'MM', 'Myanmar', 0, 0),
(150, 'NA', 'Namibia', 0, 0),
(151, 'NR', 'Nauru', 0, 0),
(152, 'NP', 'Nepal', 0, 0),
(153, 'NL', 'Netherlands', 0, 0),
(154, 'AN', 'Netherlands Antilles', 0, 0),
(155, 'NC', 'New Caledonia', 0, 0),
(156, 'NZ', 'New Zealand', 0, 0),
(157, 'NI', 'Nicaragua', 0, 0),
(158, 'NE', 'Niger', 0, 0),
(159, 'NG', 'Nigeria', 0, 0),
(160, 'NU', 'Niue', 0, 0),
(161, 'NF', 'Norfork Island', 0, 0),
(162, 'MP', 'Northern Mariana Islands', 0, 0),
(163, 'NO', 'Norway', 0, 0),
(164, 'OM', 'Oman', 0, 0),
(165, 'PK', 'Pakistan', 0, 0),
(166, 'PW', 'Palau', 0, 0),
(167, 'PA', 'Panama', 0, 0),
(168, 'PG', 'Papua New Guinea', 0, 0),
(169, 'PY', 'Paraguay', 0, 0),
(170, 'PE', 'Peru', 0, 0),
(171, 'PH', 'Philippines', 0, 0),
(172, 'PN', 'Pitcairn', 0, 0),
(173, 'PL', 'Poland', 0, 0),
(174, 'PT', 'Portugal', 0, 0),
(175, 'PR', 'Puerto Rico', 0, 0),
(176, 'QA', 'Qatar', 0, 0),
(177, 'RE', 'Reunion', 0, 0),
(178, 'RO', 'Romania', 0, 0),
(179, 'RU', 'Russian Federation', 0, 0),
(180, 'RW', 'Rwanda', 0, 0),
(181, 'KN', 'Saint Kitts and Nevis', 0, 0),
(182, 'LC', 'Saint Lucia', 0, 0),
(183, 'VC', 'Saint Vincent and the Grenadines', 0, 0),
(184, 'WS', 'Samoa', 0, 0),
(185, 'SM', 'San Marino', 0, 0),
(186, 'ST', 'Sao Tome and Principe', 0, 0),
(187, 'SA', 'Saudi Arabia', 0, 0),
(188, 'SN', 'Senegal', 0, 0),
(189, 'RS', 'Serbia', 0, 0),
(190, 'SC', 'Seychelles', 0, 0),
(191, 'SL', 'Sierra Leone', 0, 0),
(192, 'SG', 'Singapore', 0, 0),
(193, 'SK', 'Slovakia', 0, 0),
(194, 'SI', 'Slovenia', 0, 0),
(195, 'SB', 'Solomon Islands', 0, 0),
(196, 'SO', 'Somalia', 0, 0),
(197, 'ZA', 'South Africa', 0, 0),
(198, 'GS', 'South Georgia South Sandwich Islands', 0, 0),
(199, 'ES', 'Spain', 0, 0),
(200, 'LK', 'Sri Lanka', 0, 0),
(201, 'SH', 'St. Helena', 0, 0),
(202, 'PM', 'St. Pierre and Miquelon', 0, 0),
(203, 'SD', 'Sudan', 0, 0),
(204, 'SR', 'Suriname', 0, 0),
(205, 'SJ', 'Svalbarn and Jan Mayen Islands', 0, 0),
(206, 'SZ', 'Swaziland', 0, 0),
(207, 'SE', 'Sweden', 0, 0),
(208, 'CH', 'Switzerland', 0, 0),
(209, 'SY', 'Syrian Arab Republic', 0, 0),
(210, 'TW', 'Taiwan', 0, 0),
(211, 'TJ', 'Tajikistan', 0, 0),
(212, 'TZ', 'Tanzania, United Republic of', 0, 0),
(213, 'TH', 'Thailand', 0, 0),
(214, 'TG', 'Togo', 0, 0),
(215, 'TK', 'Tokelau', 0, 0),
(216, 'TO', 'Tonga', 0, 0),
(217, 'TT', 'Trinidad and Tobago', 0, 0),
(218, 'TN', 'Tunisia', 0, 0),
(219, 'TR', 'Turkey', 0, 0),
(220, 'TM', 'Turkmenistan', 0, 0),
(221, 'TC', 'Turks and Caicos Islands', 0, 0),
(222, 'TV', 'Tuvalu', 0, 0),
(223, 'UG', 'Uganda', 0, 0),
(224, 'UA', 'Ukraine', 0, 0),
(225, 'AE', 'United Arab Emirates', 0, 0),
(226, 'GB', 'United Kingdom', 0, 0),
(227, 'UM', 'United States minor outlying islands', 0, 0),
(228, 'UY', 'Uruguay', 0, 0),
(229, 'UZ', 'Uzbekistan', 0, 0),
(230, 'VU', 'Vanuatu', 0, 0),
(231, 'VA', 'Vatican City State', 0, 0),
(232, 'VE', 'Venezuela', 0, 0),
(233, 'VN', 'Vietnam', 0, 0),
(234, 'VG', 'Virgin Islands (British)', 0, 0),
(235, 'VI', 'Virgin Islands (U.S.)', 0, 0),
(236, 'WF', 'Wallis and Futuna Islands', 0, 0),
(237, 'EH', 'Western Sahara', 0, 0),
(238, 'YE', 'Yemen', 0, 0),
(239, 'YU', 'Yugoslavia', 0, 0),
(240, 'ZR', 'Zaire', 0, 0),
(241, 'ZM', 'Zambia', 0, 0),
(242, 'ZW', 'Zimbabwe', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_districts`
--

CREATE TABLE IF NOT EXISTS `tbl_districts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sub_urban_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_permissions`
--

CREATE TABLE IF NOT EXISTS `tbl_group_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `value` smallint(1) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=497 ;

--
-- Dumping data for table `tbl_group_permissions`
--

INSERT INTO `tbl_group_permissions` (`id`, `permission_id`, `group_id`, `value`, `added`, `modified`) VALUES
(1, 1, 1, 1, 1431452696, 0),
(2, 2, 1, 1, 1431452696, 0),
(3, 3, 1, 1, 1431452696, 0),
(4, 4, 1, 1, 1431452696, 0),
(5, 27, 1, 1, 1431452696, 0),
(6, 28, 1, 1, 1431452696, 0),
(7, 29, 1, 1, 1431452696, 0),
(8, 30, 1, 1, 1431452696, 0),
(9, 31, 1, 1, 1431452696, 0),
(10, 69, 1, 1, 1431452696, 0),
(11, 70, 1, 1, 1431452696, 0),
(12, 85, 1, 1, 1431452696, 0),
(13, 86, 1, 1, 1431452696, 0),
(14, 87, 1, 1, 1431452696, 0),
(15, 88, 1, 1, 1431452696, 0),
(16, 89, 1, 1, 1431452696, 0),
(17, 5, 1, 1, 1431452696, 0),
(18, 6, 1, 1, 1431452696, 0),
(19, 7, 1, 1, 1431452696, 0),
(20, 8, 1, 1, 1431452696, 0),
(21, 9, 1, 1, 1431452696, 0),
(22, 10, 1, 1, 1431452696, 0),
(23, 11, 1, 1, 1431452696, 0),
(24, 12, 1, 1, 1431452696, 0),
(25, 13, 1, 1, 1431452696, 0),
(26, 14, 1, 1, 1431452696, 0),
(27, 15, 1, 1, 1431452696, 0),
(28, 16, 1, 1, 1431452696, 0),
(29, 17, 1, 1, 1431452696, 0),
(30, 18, 1, 1, 1431452696, 0),
(31, 19, 1, 1, 1431452696, 0),
(32, 20, 1, 1, 1431452696, 0),
(33, 21, 1, 1, 1431452696, 0),
(34, 22, 1, 1, 1431452696, 0),
(35, 23, 1, 1, 1431452696, 0),
(36, 24, 1, 1, 1431452696, 0),
(37, 25, 1, 1, 1431452696, 0),
(38, 26, 1, 1, 1431452696, 0),
(39, 32, 1, 1, 1431452696, 0),
(40, 33, 1, 1, 1431452696, 0),
(41, 34, 1, 1, 1431452696, 0),
(42, 35, 1, 1, 1431452696, 0),
(43, 36, 1, 1, 1431452696, 0),
(44, 37, 1, 1, 1431452696, 0),
(45, 38, 1, 1, 1431452696, 0),
(46, 39, 1, 1, 1431452696, 0),
(47, 40, 1, 1, 1431452696, 0),
(48, 41, 1, 1, 1431452696, 0),
(49, 42, 1, 1, 1431452696, 0),
(50, 43, 1, 1, 1431452696, 0),
(51, 44, 1, 1, 1431452696, 0),
(52, 45, 1, 1, 1431452696, 0),
(53, 46, 1, 1, 1431452696, 0),
(54, 47, 1, 1, 1431452696, 0),
(55, 48, 1, 1, 1431452696, 0),
(56, 49, 1, 1, 1431452696, 0),
(57, 50, 1, 1, 1431452696, 0),
(58, 51, 1, 1, 1431452696, 0),
(59, 52, 1, 1, 1431452696, 0),
(60, 53, 1, 1, 1431452696, 0),
(61, 54, 1, 1, 1431452696, 0),
(62, 55, 1, 1, 1431452696, 0),
(63, 56, 1, 1, 1431452696, 0),
(64, 57, 1, 1, 1431452696, 0),
(65, 58, 1, 1, 1431452696, 0),
(66, 59, 1, 1, 1431452696, 0),
(67, 60, 1, 1, 1431452696, 0),
(68, 61, 1, 1, 1431452696, 0),
(69, 62, 1, 1, 1431452696, 0),
(70, 63, 1, 1, 1431452696, 0),
(71, 64, 1, 1, 1431452696, 0),
(72, 65, 1, 1, 1431452696, 0),
(73, 66, 1, 1, 1431452696, 0),
(74, 67, 1, 1, 1431452696, 0),
(75, 68, 1, 1, 1431452696, 0),
(76, 71, 1, 1, 1431452696, 0),
(77, 72, 1, 1, 1431452696, 0),
(78, 73, 1, 1, 1431452696, 0),
(79, 74, 1, 1, 1431452696, 0),
(80, 75, 1, 1, 1431452696, 0),
(81, 76, 1, 1, 1431452696, 0),
(82, 77, 1, 1, 1431452696, 0),
(83, 78, 1, 1, 1431452696, 0),
(84, 79, 1, 1, 1431452696, 0),
(85, 80, 1, 1, 1431452696, 0),
(86, 81, 1, 1, 1431452696, 0),
(87, 82, 1, 1, 1431452696, 0),
(88, 83, 1, 1, 1431452696, 0),
(89, 84, 1, 1, 1431452696, 0),
(90, 90, 1, 1, 1431452696, 0),
(91, 91, 1, 1, 1431452696, 0),
(92, 92, 1, 1, 1431452696, 0),
(93, 93, 1, 1, 1431452696, 0),
(94, 94, 1, 1, 1431452696, 0),
(95, 95, 1, 1, 1431452696, 0),
(96, 96, 1, 1, 1431452696, 0),
(97, 97, 1, 1, 1431452696, 0),
(98, 98, 1, 1, 1431452696, 0),
(99, 99, 1, 1, 1431452696, 0),
(100, 100, 1, 1, 1431452696, 0),
(101, 101, 1, 1, 1431452696, 0),
(102, 102, 1, 1, 1431452696, 0),
(103, 103, 1, 1, 1431452696, 0),
(104, 104, 1, 1, 1431452696, 0),
(105, 105, 1, 1, 1431452696, 0),
(106, 106, 1, 1, 1431452696, 0),
(107, 107, 1, 1, 1431452696, 0),
(108, 108, 1, 1, 1431452696, 0),
(109, 109, 1, 1, 1431452696, 0),
(110, 110, 1, 1, 1431452696, 0),
(111, 111, 1, 1, 1431452696, 0),
(112, 112, 1, 1, 1431452696, 0),
(113, 113, 1, 1, 1431452696, 0),
(114, 114, 1, 1, 1431452696, 0),
(115, 115, 1, 1, 1431452696, 0),
(116, 116, 1, 1, 1431452696, 0),
(117, 117, 1, 1, 1431452696, 0),
(118, 118, 1, 1, 1431452696, 0),
(119, 119, 1, 1, 1431452696, 0),
(120, 120, 1, 1, 1431452696, 0),
(121, 121, 1, 1, 1431452696, 0),
(122, 122, 1, 1, 1431452696, 0),
(123, 123, 1, 1, 1431452696, 0),
(124, 124, 1, 1, 1431452696, 0),
(125, 1, 2, 1, 1431452696, 0),
(126, 2, 2, 1, 1431452696, 0),
(127, 3, 2, 1, 1431452696, 0),
(128, 4, 2, 1, 1431452696, 0),
(129, 27, 2, 1, 1431452696, 0),
(130, 28, 2, 1, 1431452696, 0),
(131, 29, 2, 1, 1431452696, 0),
(132, 30, 2, 1, 1431452696, 0),
(133, 31, 2, 1, 1431452696, 0),
(134, 69, 2, 1, 1431452696, 0),
(135, 70, 2, 1, 1431452696, 0),
(136, 85, 2, 1, 1431452696, 0),
(137, 86, 2, 1, 1431452696, 0),
(138, 87, 2, 1, 1431452696, 0),
(139, 88, 2, 1, 1431452696, 0),
(140, 89, 2, 1, 1431452696, 0),
(141, 5, 2, 1, 1431452696, 0),
(142, 6, 2, 1, 1431452696, 0),
(143, 7, 2, 1, 1431452696, 0),
(144, 8, 2, 1, 1431452696, 0),
(145, 9, 2, 1, 1431452696, 0),
(146, 10, 2, 1, 1431452696, 0),
(147, 11, 2, 1, 1431452696, 0),
(148, 12, 2, 1, 1431452696, 0),
(149, 13, 2, 1, 1431452696, 0),
(150, 14, 2, 1, 1431452696, 0),
(151, 15, 2, 1, 1431452696, 0),
(152, 16, 2, 1, 1431452696, 0),
(153, 17, 2, 1, 1431452696, 0),
(154, 18, 2, 1, 1431452696, 0),
(155, 19, 2, 1, 1431452696, 0),
(156, 20, 2, 1, 1431452696, 0),
(157, 21, 2, 1, 1431452696, 0),
(158, 22, 2, 1, 1431452696, 0),
(159, 23, 2, 1, 1431452696, 0),
(160, 24, 2, 1, 1431452696, 0),
(161, 25, 2, 1, 1431452696, 0),
(162, 26, 2, 1, 1431452696, 0),
(163, 32, 2, 1, 1431452696, 0),
(164, 33, 2, 1, 1431452696, 0),
(165, 34, 2, 1, 1431452696, 0),
(166, 35, 2, 1, 1431452696, 0),
(167, 36, 2, 1, 1431452696, 0),
(168, 37, 2, 1, 1431452696, 0),
(169, 38, 2, 1, 1431452696, 0),
(170, 39, 2, 1, 1431452696, 0),
(171, 40, 2, 1, 1431452696, 0),
(172, 41, 2, 1, 1431452696, 0),
(173, 42, 2, 1, 1431452696, 0),
(174, 43, 2, 1, 1431452696, 0),
(175, 44, 2, 1, 1431452696, 0),
(176, 45, 2, 1, 1431452696, 0),
(177, 46, 2, 1, 1431452696, 0),
(178, 47, 2, 1, 1431452696, 0),
(179, 48, 2, 1, 1431452696, 0),
(180, 49, 2, 1, 1431452696, 0),
(181, 50, 2, 1, 1431452696, 0),
(182, 51, 2, 1, 1431452696, 0),
(183, 52, 2, 1, 1431452696, 0),
(184, 53, 2, 1, 1431452696, 0),
(185, 54, 2, 1, 1431452696, 0),
(186, 55, 2, 1, 1431452696, 0),
(187, 56, 2, 1, 1431452696, 0),
(188, 57, 2, 1, 1431452696, 0),
(189, 58, 2, 1, 1431452696, 0),
(190, 59, 2, 1, 1431452696, 0),
(191, 60, 2, 1, 1431452696, 0),
(192, 61, 2, 1, 1431452696, 0),
(193, 62, 2, 1, 1431452696, 0),
(194, 63, 2, 1, 1431452696, 0),
(195, 64, 2, 1, 1431452696, 0),
(196, 65, 2, 1, 1431452696, 0),
(197, 66, 2, 1, 1431452696, 0),
(198, 67, 2, 1, 1431452696, 0),
(199, 68, 2, 1, 1431452696, 0),
(200, 71, 2, 1, 1431452696, 0),
(201, 72, 2, 1, 1431452696, 0),
(202, 73, 2, 1, 1431452696, 0),
(203, 74, 2, 1, 1431452696, 0),
(204, 75, 2, 1, 1431452696, 0),
(205, 76, 2, 1, 1431452696, 0),
(206, 77, 2, 1, 1431452696, 0),
(207, 78, 2, 1, 1431452696, 0),
(208, 79, 2, 1, 1431452696, 0),
(209, 80, 2, 1, 1431452696, 0),
(210, 81, 2, 1, 1431452696, 0),
(211, 82, 2, 1, 1431452696, 0),
(212, 83, 2, 1, 1431452696, 0),
(213, 84, 2, 1, 1431452696, 0),
(214, 90, 2, 1, 1431452696, 0),
(215, 91, 2, 1, 1431452696, 0),
(216, 92, 2, 1, 1431452696, 0),
(217, 93, 2, 1, 1431452696, 0),
(218, 94, 2, 1, 1431452696, 0),
(219, 95, 2, 1, 1431452696, 0),
(220, 96, 2, 1, 1431452696, 0),
(221, 97, 2, 1, 1431452696, 0),
(222, 98, 2, 1, 1431452696, 0),
(223, 99, 2, 1, 1431452696, 0),
(224, 100, 2, 1, 1431452696, 0),
(225, 101, 2, 1, 1431452696, 0),
(226, 102, 2, 1, 1431452696, 0),
(227, 103, 2, 1, 1431452696, 0),
(228, 104, 2, 1, 1431452696, 0),
(229, 105, 2, 1, 1431452696, 0),
(230, 106, 2, 1, 1431452696, 0),
(231, 107, 2, 1, 1431452696, 0),
(232, 108, 2, 1, 1431452696, 0),
(233, 109, 2, 1, 1431452696, 0),
(234, 110, 2, 1, 1431452696, 0),
(235, 111, 2, 1, 1431452696, 0),
(236, 112, 2, 1, 1431452696, 0),
(237, 113, 2, 1, 1431452696, 0),
(238, 114, 2, 1, 1431452696, 0),
(239, 115, 2, 1, 1431452696, 0),
(240, 116, 2, 1, 1431452696, 0),
(241, 117, 2, 1, 1431452696, 0),
(242, 118, 2, 1, 1431452696, 0),
(243, 119, 2, 1, 1431452696, 0),
(244, 120, 2, 1, 1431452696, 0),
(245, 121, 2, 1, 1431452696, 0),
(246, 122, 2, 1, 1431452696, 0),
(247, 123, 2, 1, 1431452696, 0),
(248, 124, 2, 1, 1431452696, 0),
(249, 1, 99, 0, 1431452696, 0),
(250, 2, 99, 0, 1431452696, 0),
(251, 3, 99, 0, 1431452696, 0),
(252, 4, 99, 0, 1431452696, 0),
(253, 27, 99, 0, 1431452696, 0),
(254, 28, 99, 0, 1431452696, 0),
(255, 29, 99, 0, 1431452696, 0),
(256, 30, 99, 0, 1431452696, 0),
(257, 31, 99, 0, 1431452696, 0),
(258, 69, 99, 0, 1431452696, 0),
(259, 70, 99, 0, 1431452696, 0),
(260, 85, 99, 0, 1431452696, 0),
(261, 86, 99, 0, 1431452696, 0),
(262, 87, 99, 0, 1431452696, 0),
(263, 88, 99, 0, 1431452696, 0),
(264, 89, 99, 0, 1431452696, 0),
(265, 5, 99, 0, 1431452696, 0),
(266, 6, 99, 0, 1431452696, 0),
(267, 7, 99, 0, 1431452696, 0),
(268, 8, 99, 0, 1431452696, 0),
(269, 9, 99, 0, 1431452696, 0),
(270, 10, 99, 0, 1431452696, 0),
(271, 11, 99, 0, 1431452696, 0),
(272, 12, 99, 0, 1431452696, 0),
(273, 13, 99, 0, 1431452696, 0),
(274, 14, 99, 0, 1431452696, 0),
(275, 15, 99, 0, 1431452696, 0),
(276, 16, 99, 0, 1431452696, 0),
(277, 17, 99, 0, 1431452696, 0),
(278, 18, 99, 0, 1431452696, 0),
(279, 19, 99, 0, 1431452696, 0),
(280, 20, 99, 0, 1431452696, 0),
(281, 21, 99, 0, 1431452696, 0),
(282, 22, 99, 0, 1431452696, 0),
(283, 23, 99, 0, 1431452696, 0),
(284, 24, 99, 0, 1431452696, 0),
(285, 25, 99, 0, 1431452696, 0),
(286, 26, 99, 0, 1431452696, 0),
(287, 32, 99, 0, 1431452696, 0),
(288, 33, 99, 0, 1431452696, 0),
(289, 34, 99, 0, 1431452696, 0),
(290, 35, 99, 0, 1431452696, 0),
(291, 36, 99, 0, 1431452696, 0),
(292, 37, 99, 0, 1431452696, 0),
(293, 38, 99, 0, 1431452696, 0),
(294, 39, 99, 0, 1431452696, 0),
(295, 40, 99, 0, 1431452696, 0),
(296, 41, 99, 0, 1431452696, 0),
(297, 42, 99, 0, 1431452696, 0),
(298, 43, 99, 0, 1431452696, 0),
(299, 44, 99, 0, 1431452696, 0),
(300, 45, 99, 0, 1431452696, 0),
(301, 46, 99, 0, 1431452696, 0),
(302, 47, 99, 0, 1431452696, 0),
(303, 48, 99, 0, 1431452696, 0),
(304, 49, 99, 0, 1431452696, 0),
(305, 50, 99, 0, 1431452696, 0),
(306, 51, 99, 0, 1431452696, 0),
(307, 52, 99, 0, 1431452696, 0),
(308, 53, 99, 0, 1431452696, 0),
(309, 54, 99, 0, 1431452696, 0),
(310, 55, 99, 0, 1431452696, 0),
(311, 56, 99, 0, 1431452696, 0),
(312, 57, 99, 0, 1431452696, 0),
(313, 58, 99, 0, 1431452696, 0),
(314, 59, 99, 0, 1431452696, 0),
(315, 60, 99, 0, 1431452696, 0),
(316, 61, 99, 0, 1431452696, 0),
(317, 62, 99, 0, 1431452696, 0),
(318, 63, 99, 0, 1431452696, 0),
(319, 64, 99, 0, 1431452696, 0),
(320, 65, 99, 0, 1431452696, 0),
(321, 66, 99, 0, 1431452696, 0),
(322, 67, 99, 0, 1431452696, 0),
(323, 68, 99, 0, 1431452696, 0),
(324, 71, 99, 0, 1431452696, 0),
(325, 72, 99, 0, 1431452696, 0),
(326, 73, 99, 0, 1431452696, 0),
(327, 74, 99, 0, 1431452696, 0),
(328, 75, 99, 0, 1431452696, 0),
(329, 76, 99, 0, 1431452696, 0),
(330, 77, 99, 0, 1431452696, 0),
(331, 78, 99, 0, 1431452696, 0),
(332, 79, 99, 0, 1431452696, 0),
(333, 80, 99, 0, 1431452696, 0),
(334, 81, 99, 0, 1431452696, 0),
(335, 82, 99, 0, 1431452696, 0),
(336, 83, 99, 0, 1431452696, 0),
(337, 84, 99, 0, 1431452696, 0),
(338, 90, 99, 0, 1431452696, 0),
(339, 91, 99, 0, 1431452696, 0),
(340, 92, 99, 0, 1431452696, 0),
(341, 93, 99, 0, 1431452696, 0),
(342, 94, 99, 0, 1431452696, 0),
(343, 95, 99, 0, 1431452696, 0),
(344, 96, 99, 0, 1431452696, 0),
(345, 97, 99, 0, 1431452696, 0),
(346, 98, 99, 0, 1431452696, 0),
(347, 99, 99, 0, 1431452696, 0),
(348, 100, 99, 0, 1431452696, 0),
(349, 101, 99, 0, 1431452696, 0),
(350, 102, 99, 0, 1431452696, 0),
(351, 103, 99, 0, 1431452696, 0),
(352, 104, 99, 0, 1431452696, 0),
(353, 105, 99, 0, 1431452696, 0),
(354, 106, 99, 0, 1431452696, 0),
(355, 107, 99, 0, 1431452696, 0),
(356, 108, 99, 0, 1431452696, 0),
(357, 109, 99, 0, 1431452696, 0),
(358, 110, 99, 0, 1431452696, 0),
(359, 111, 99, 0, 1431452696, 0),
(360, 112, 99, 0, 1431452696, 0),
(361, 113, 99, 0, 1431452696, 0),
(362, 114, 99, 0, 1431452696, 0),
(363, 115, 99, 0, 1431452696, 0),
(364, 116, 99, 0, 1431452696, 0),
(365, 117, 99, 0, 1431452696, 0),
(366, 118, 99, 0, 1431452696, 0),
(367, 119, 99, 0, 1431452696, 0),
(368, 120, 99, 0, 1431452696, 0),
(369, 121, 99, 0, 1431452696, 0),
(370, 122, 99, 0, 1431452696, 0),
(371, 123, 99, 0, 1431452696, 0),
(372, 124, 99, 0, 1431452696, 0),
(373, 1, 100, 0, 1431452696, 0),
(374, 2, 100, 0, 1431452696, 0),
(375, 3, 100, 0, 1431452696, 0),
(376, 4, 100, 0, 1431452696, 0),
(377, 27, 100, 0, 1431452696, 0),
(378, 28, 100, 0, 1431452696, 0),
(379, 29, 100, 0, 1431452696, 0),
(380, 30, 100, 0, 1431452696, 0),
(381, 31, 100, 0, 1431452696, 0),
(382, 69, 100, 0, 1431452696, 0),
(383, 70, 100, 0, 1431452696, 0),
(384, 85, 100, 0, 1431452696, 0),
(385, 86, 100, 0, 1431452696, 0),
(386, 87, 100, 0, 1431452696, 0),
(387, 88, 100, 0, 1431452696, 0),
(388, 89, 100, 0, 1431452696, 0),
(389, 5, 100, 0, 1431452696, 0),
(390, 6, 100, 0, 1431452696, 0),
(391, 7, 100, 0, 1431452696, 0),
(392, 8, 100, 0, 1431452696, 0),
(393, 9, 100, 0, 1431452696, 0),
(394, 10, 100, 0, 1431452696, 0),
(395, 11, 100, 0, 1431452696, 0),
(396, 12, 100, 0, 1431452696, 0),
(397, 13, 100, 0, 1431452696, 0),
(398, 14, 100, 0, 1431452696, 0),
(399, 15, 100, 0, 1431452696, 0),
(400, 16, 100, 0, 1431452696, 0),
(401, 17, 100, 0, 1431452696, 0),
(402, 18, 100, 0, 1431452696, 0),
(403, 19, 100, 0, 1431452696, 0),
(404, 20, 100, 0, 1431452696, 0),
(405, 21, 100, 0, 1431452696, 0),
(406, 22, 100, 0, 1431452696, 0),
(407, 23, 100, 0, 1431452696, 0),
(408, 24, 100, 0, 1431452696, 0),
(409, 25, 100, 0, 1431452696, 0),
(410, 26, 100, 0, 1431452696, 0),
(411, 32, 100, 0, 1431452696, 0),
(412, 33, 100, 0, 1431452696, 0),
(413, 34, 100, 0, 1431452696, 0),
(414, 35, 100, 0, 1431452696, 0),
(415, 36, 100, 0, 1431452696, 0),
(416, 37, 100, 0, 1431452696, 0),
(417, 38, 100, 0, 1431452696, 0),
(418, 39, 100, 0, 1431452696, 0),
(419, 40, 100, 0, 1431452696, 0),
(420, 41, 100, 0, 1431452696, 0),
(421, 42, 100, 0, 1431452696, 0),
(422, 43, 100, 0, 1431452696, 0),
(423, 44, 100, 0, 1431452696, 0),
(424, 45, 100, 0, 1431452696, 0),
(425, 46, 100, 0, 1431452696, 0),
(426, 47, 100, 0, 1431452696, 0),
(427, 48, 100, 0, 1431452696, 0),
(428, 49, 100, 0, 1431452696, 0),
(429, 50, 100, 0, 1431452696, 0),
(430, 51, 100, 0, 1431452696, 0),
(431, 52, 100, 0, 1431452696, 0),
(432, 53, 100, 0, 1431452696, 0),
(433, 54, 100, 0, 1431452696, 0),
(434, 55, 100, 0, 1431452696, 0),
(435, 56, 100, 0, 1431452696, 0),
(436, 57, 100, 0, 1431452696, 0),
(437, 58, 100, 0, 1431452696, 0),
(438, 59, 100, 0, 1431452696, 0),
(439, 60, 100, 0, 1431452696, 0),
(440, 61, 100, 0, 1431452696, 0),
(441, 62, 100, 0, 1431452696, 0),
(442, 63, 100, 0, 1431452696, 0),
(443, 64, 100, 0, 1431452696, 0),
(444, 65, 100, 0, 1431452696, 0),
(445, 66, 100, 0, 1431452696, 0),
(446, 67, 100, 0, 1431452696, 0),
(447, 68, 100, 0, 1431452696, 0),
(448, 71, 100, 0, 1431452696, 0),
(449, 72, 100, 0, 1431452696, 0),
(450, 73, 100, 0, 1431452696, 0),
(451, 74, 100, 0, 1431452696, 0),
(452, 75, 100, 0, 1431452696, 0),
(453, 76, 100, 0, 1431452696, 0),
(454, 77, 100, 0, 1431452696, 0),
(455, 78, 100, 0, 1431452696, 0),
(456, 79, 100, 0, 1431452696, 0),
(457, 80, 100, 0, 1431452696, 0),
(458, 81, 100, 0, 1431452696, 0),
(459, 82, 100, 0, 1431452696, 0),
(460, 83, 100, 0, 1431452696, 0),
(461, 84, 100, 0, 1431452696, 0),
(462, 90, 100, 0, 1431452696, 0),
(463, 91, 100, 0, 1431452696, 0),
(464, 92, 100, 0, 1431452696, 0),
(465, 93, 100, 0, 1431452696, 0),
(466, 94, 100, 0, 1431452696, 0),
(467, 95, 100, 0, 1431452696, 0),
(468, 96, 100, 0, 1431452696, 0),
(469, 97, 100, 0, 1431452696, 0),
(470, 98, 100, 0, 1431452696, 0),
(471, 99, 100, 0, 1431452696, 0),
(472, 100, 100, 0, 1431452696, 0),
(473, 101, 100, 0, 1431452696, 0),
(474, 102, 100, 0, 1431452696, 0),
(475, 103, 100, 0, 1431452696, 0),
(476, 104, 100, 0, 1431452696, 0),
(477, 105, 100, 0, 1431452696, 0),
(478, 106, 100, 0, 1431452696, 0),
(479, 107, 100, 0, 1431452696, 0),
(480, 108, 100, 0, 1431452696, 0),
(481, 109, 100, 0, 1431452696, 0),
(482, 110, 100, 0, 1431452696, 0),
(483, 111, 100, 0, 1431452696, 0),
(484, 112, 100, 0, 1431452696, 0),
(485, 113, 100, 0, 1431452696, 0),
(486, 114, 100, 0, 1431452696, 0),
(487, 115, 100, 0, 1431452696, 0),
(488, 116, 100, 0, 1431452696, 0),
(489, 117, 100, 0, 1431452696, 0),
(490, 118, 100, 0, 1431452696, 0),
(491, 119, 100, 0, 1431452696, 0),
(492, 120, 100, 0, 1431452696, 0),
(493, 121, 100, 0, 1431452696, 0),
(494, 122, 100, 0, 1431452696, 0),
(495, 123, 100, 0, 1431452696, 0),
(496, 124, 100, 0, 1431452696, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_informations`
--

CREATE TABLE IF NOT EXISTS `tbl_informations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `conference_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text,
  `ext_link1` varchar(324) DEFAULT NULL,
  `ext_link2` varchar(324) DEFAULT NULL,
  `cover` varchar(324) NOT NULL,
  `allow_comment` tinyint(1) NOT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `added` int(11) unsigned DEFAULT NULL,
  `modified` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_informations`
--

INSERT INTO `tbl_informations` (`id`, `conference_id`, `name`, `subject`, `description`, `ext_link1`, `ext_link2`, `cover`, `allow_comment`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 1, 'call-for-papers', 'Call For Papers', '<p>\n	The conference committee is pleased to announce the Call for Papers for the International Conference on &ldquo;Explaining Religious Radicalism and Political Violence: &nbsp;Towards Nation-State Building.&rdquo; The Conference will be held 8-9 September 2015 at Faculty of Social and Political Sciences, Syarif Hidayahtullah State Islamic University (UIN) Jakarta, Indonesia.</p>\n', NULL, NULL, 'cbb22-build-vbmn.jpg', 1, NULL, NULL, 1, NULL, NULL),
(2, 1, 'information-two', 'Information Two', '<p>\n	It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<br />\n	<br />\n	There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.&nbsp;&nbsp; &nbsp;<br />\n	<br />\n	&nbsp;</p>\n', NULL, NULL, 'ebf41-spleen-den-atelier-(4).jpg', 0, NULL, NULL, 1, NULL, NULL),
(3, 1, 'information-three', 'Information Three', '<p>\n	Lorem Ipsum is simply dummy text of the <strong>printing</strong> and <strong>typesetting</strong> industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\n	<br />\n	<strong>Lorem Ipsum is simply dummy text</strong> of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\n	<br />\n	&nbsp;</p>\n', NULL, NULL, '6749f-ace_hat_wallpaper_800x600_wallpaperhere.jpg', 1, NULL, NULL, 1, NULL, NULL),
(4, 1, 'information-four', 'Information Four', '<p>\n	Information Four</p>\n', NULL, NULL, '62bcf-04.jpg', 0, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_model_lists`
--

CREATE TABLE IF NOT EXISTS `tbl_model_lists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `tbl_model_lists`
--

INSERT INTO `tbl_model_lists` (`id`, `module_id`, `model`) VALUES
(1, 1, 'admin/Users'),
(2, 1, 'admin/UserProfiles'),
(3, 1, 'admin/UserHistories'),
(4, 1, 'admin/ModulePermissions'),
(5, 1, 'admin/UserGroupPermissions'),
(6, 1, 'admin/Settings'),
(7, 1, 'admin/Sessions'),
(8, 6, 'conference/Conferences'),
(9, 6, 'conference/Speakers'),
(10, 6, 'conference/Informations'),
(11, 6, 'conference/Schedules'),
(12, 6, 'conference/Gallery'),
(13, 12, 'participant/Participants'),
(14, 12, 'participant/Attachments'),
(15, 15, 'region/Countries'),
(16, 15, 'region/Provinces'),
(17, 15, 'region/SubUrbans'),
(18, 15, 'region/UrbanDistricts'),
(19, 15, 'region/Districts');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_lists`
--

CREATE TABLE IF NOT EXISTS `tbl_module_lists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_link` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tbl_module_lists`
--

INSERT INTO `tbl_module_lists` (`id`, `parent_id`, `module_name`, `module_link`, `order`) VALUES
(1, 0, 'admin', '#', 0),
(2, 1, 'Dashboard Panel', 'dashboard/index', 0),
(3, 1, 'Users', 'user/index', 1),
(4, 1, 'User Groups', 'usergroup/index', 2),
(5, 1, 'Settings', 'setting/index', 3),
(6, 0, 'conference', '#', 1),
(7, 6, 'Conferences', 'conference/index', 0),
(8, 6, 'Speaker', 'speaker/index', 1),
(9, 6, 'Informations', 'information/index', 2),
(10, 6, 'Schedules', 'schedule/index', 3),
(11, 6, 'Gallery', 'confgallery/index', 4),
(12, 0, 'participant', '#', 2),
(13, 12, 'Participant', 'participant/index', 0),
(14, 12, 'Attachment', 'attachment/index', 1),
(15, 0, 'region', '#', 3),
(16, 15, 'Country', 'country/index', 0),
(17, 15, 'Province', 'province/index', 1),
(18, 15, 'Urban District', 'urbandistrict/index', 2),
(19, 15, 'Sub Urban', 'suburban/index', 3),
(20, 15, 'District', 'district/index', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_permissions`
--

CREATE TABLE IF NOT EXISTS `tbl_module_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_link` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=125 ;

--
-- Dumping data for table `tbl_module_permissions`
--

INSERT INTO `tbl_module_permissions` (`id`, `module_id`, `module_name`, `module_link`, `order`) VALUES
(1, 1, 'Dashboard Panel', 'dashboard/index', 0),
(2, 1, 'Users', 'user/index', 1),
(3, 1, 'User Groups', 'usergroup/index', 2),
(4, 1, 'Settings', 'setting/index', 3),
(5, 1, 'Add New Dashboard', 'dashboard/add', 4),
(6, 1, 'View Dashboard', 'dashboard/view', 5),
(7, 1, 'Edit Dashboard', 'dashboard/edit', 6),
(8, 1, 'Delete Dashboard', 'dashboard/delete', 7),
(9, 1, 'Change Dashboard Status', 'dashboard/change', 8),
(10, 1, 'Add User', 'user/add', 9),
(11, 1, 'View User', 'user/view', 10),
(12, 1, 'Edit User', 'user/edit', 11),
(13, 1, 'Delete User', 'user/delete', 12),
(14, 1, 'Change User Status', 'user/change', 13),
(15, 1, 'Change User Image', 'user/image', 14),
(16, 1, 'Upload User Image', 'user/upload', 15),
(17, 1, 'Add User Group', 'usergroup/add', 16),
(18, 1, 'View User Group', 'usergroup/view', 17),
(19, 1, 'Edit User Group', 'usergroup/edit', 18),
(20, 1, 'Delete User Group', 'usergroup/delete', 19),
(21, 1, 'Change User Group Status', 'usergroup/change', 20),
(22, 1, 'Add Setting', 'setting/add', 21),
(23, 1, 'View Setting', 'setting/view', 22),
(24, 1, 'Edit Setting', 'setting/edit', 23),
(25, 1, 'Delete Setting', 'setting/delete', 24),
(26, 1, 'Change Setting Status', 'setting/change', 25),
(27, 6, 'Conferences', 'conference/index', 0),
(28, 6, 'Speaker', 'speaker/index', 1),
(29, 6, 'Informations', 'information/index', 2),
(30, 6, 'Schedules', 'schedule/index', 3),
(31, 6, 'Gallery', 'confgallery/index', 4),
(32, 6, 'Add Conference', 'conference/index/add', 5),
(33, 6, 'View Conference', 'conference/index/view', 6),
(34, 6, 'Edit Conference', 'conference/index/edit', 7),
(35, 6, 'Delete Conference', 'conference/index/delete', 8),
(36, 6, 'Change Conference Status', 'conference/index/change', 9),
(37, 6, 'Export Conference', 'conference/index/export', 10),
(38, 6, 'Print Conference', 'conference/index/print', 11),
(39, 6, 'Conference Gallery', 'conference/gallery', 12),
(40, 6, 'Add Speaker', 'speaker/index/add', 13),
(41, 6, 'View Speaker', 'speaker/index/view', 14),
(42, 6, 'Edit Speaker', 'speaker/index/edit', 15),
(43, 6, 'Delete Speaker', 'speaker/index/delete', 16),
(44, 6, 'Change Speaker Status', 'speaker/index/change', 17),
(45, 6, 'Export Speaker', 'speaker/index/export', 18),
(46, 6, 'Print Speaker', 'speaker/index/print', 19),
(47, 6, 'Add Information', 'information/index/add', 20),
(48, 6, 'View Information', 'information/index/view', 21),
(49, 6, 'Edit Information', 'information/index/edit', 22),
(50, 6, 'Delete Information', 'information/index/delete', 23),
(51, 6, 'Change Information', 'information/index/change', 24),
(52, 6, 'Export Information', 'information/index/export', 25),
(53, 6, 'Print Information', 'information/index/print', 26),
(54, 6, 'Add Schedule', 'schedule/index/add', 27),
(55, 6, 'View Schedule', 'schedule/index/view', 28),
(56, 6, 'Edit Schedule', 'schedule/index/edit', 29),
(57, 6, 'Delete Schedule', 'schedule/index/delete', 30),
(58, 6, 'Set to Schedule', 'schedule/set', 31),
(59, 6, 'Change Schedule', 'schedule/index/change', 32),
(60, 6, 'Export Schedule', 'schedule/index/export', 33),
(61, 6, 'Print Schedule', 'schedule/index/print', 34),
(62, 6, 'Add Gallery', 'confgallery/index/add', 35),
(63, 6, 'View Gallery', 'confgallery/index/view', 36),
(64, 6, 'Edit Gallery', 'confgallery/index/edit', 37),
(65, 6, 'Delete Gallery', 'confgallery/index/delete', 38),
(66, 6, 'Change Gallery', 'confgallery/index/change', 39),
(67, 6, 'Export Gallery', 'confgallery/index/export', 40),
(68, 6, 'Print Gallery', 'confgallery/index/print', 41),
(69, 12, 'Participant', 'participant/index', 0),
(70, 12, 'Attachment', 'attachment/index', 1),
(71, 12, 'Add Participant', 'participant/index/add', 2),
(72, 12, 'View Participant', 'participant/index/view', 3),
(73, 12, 'Edit Participant', 'participant/index/edit', 4),
(74, 12, 'Delete Participant', 'participant/index/delete', 5),
(75, 12, 'Change Participant Status', 'participant/index/change', 6),
(76, 12, 'Export Participant', 'participant/index/export', 7),
(77, 12, 'Print Participant', 'participant/index/print', 8),
(78, 12, 'Add Attachment', 'attachment/index/add', 9),
(79, 12, 'View Attachment', 'attachment/index/view', 10),
(80, 12, 'Edit Attachment', 'attachment/index/edit', 11),
(81, 12, 'Delete Attachment', 'attachment/index/delete', 12),
(82, 12, 'Change Attachment Status', 'attachment/index/change', 13),
(83, 12, 'Export Attachment', 'attachment/index/export', 14),
(84, 12, 'Print Attachment', 'attachment/index/print', 15),
(85, 15, 'Country', 'country/index', 0),
(86, 15, 'Province', 'province/index', 1),
(87, 15, 'Urban District', 'urbandistrict/index', 2),
(88, 15, 'Sub Urban', 'suburban/index', 3),
(89, 15, 'District', 'district/index', 4),
(90, 15, 'Add Country', 'country/index/add', 5),
(91, 15, 'View Country', 'country/index/view', 6),
(92, 15, 'Edit Country', 'country/index/edit', 7),
(93, 15, 'Delete Country', 'country/index/delete', 8),
(94, 15, 'Change Country Status', 'country/index/change', 9),
(95, 15, 'Export Country', 'country/index/export', 10),
(96, 15, 'Print Country', 'country/index/print', 11),
(97, 15, 'Add Province', 'province/index/add', 12),
(98, 15, 'View Province', 'province/index/view', 13),
(99, 15, 'Edit Province', 'province/index/edit', 14),
(100, 15, 'Delete Province', 'province/index/delete', 15),
(101, 15, 'Change Province Status', 'province/index/change', 16),
(102, 15, 'Export Province', 'province/index/export', 17),
(103, 15, 'Print Province', 'province/index/print', 18),
(104, 15, 'Add Urban District', 'urbandistrict/index/add', 19),
(105, 15, 'View Urban District', 'urbandistrict/index/view', 20),
(106, 15, 'Edit Urban District', 'urbandistrict/index/edit', 21),
(107, 15, 'Delete Urban District', 'urbandistrict/index/delete', 22),
(108, 15, 'Change Urban District Status', 'urbandistrict/index/change', 23),
(109, 15, 'Export Urban District', 'urbandistrict/index/export', 24),
(110, 15, 'Print Urban District', 'urbandistrict/index/print', 25),
(111, 15, 'Add Sub Urban', 'suburban/index/add', 26),
(112, 15, 'View Sub Urban', 'suburban/index/view', 27),
(113, 15, 'Edit Sub Urban', 'suburban/index/edit', 28),
(114, 15, 'Delete Sub Urban', 'suburban/index/delete', 29),
(115, 15, 'Change Sub Urban Status', 'suburban/index/change', 30),
(116, 15, 'Export Sub Urban', 'suburban/index/export', 31),
(117, 15, 'Print Sub Urban', 'suburban/index/print', 32),
(118, 15, 'Add District', 'district/index/add', 33),
(119, 15, 'View District', 'district/index/view', 34),
(120, 15, 'Edit District', 'district/index/edit', 35),
(121, 15, 'Delete District', 'district/index/delete', 36),
(122, 15, 'Change District Status', 'district/index/change', 37),
(123, 15, 'Export District', 'district/index/export', 38),
(124, 15, 'Print District', 'district/index/print', 39);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_participants`
--

CREATE TABLE IF NOT EXISTS `tbl_participants` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_number` varchar(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(12) DEFAULT NULL,
  `age` tinyint(2) DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `research_area` varchar(255) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `fb_id` varchar(255) DEFAULT NULL,
  `fb_pic_url` varchar(512) DEFAULT NULL,
  `file_name` varchar(512) DEFAULT NULL,
  `verify` varchar(8) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `logged_in` tinyint(1) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL,
  `session_id` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `part_id` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_participants`
--

INSERT INTO `tbl_participants` (`id`, `id_number`, `name`, `gender`, `age`, `nationality_id`, `research_area`, `address`, `email`, `password`, `phone_number`, `twitter`, `fb_id`, `fb_pic_url`, `file_name`, `verify`, `completed`, `logged_in`, `last_login`, `session_id`, `status`, `join_date`) VALUES
(4, NULL, 'Defrian Yarfi', '1', NULL, NULL, NULL, NULL, 'dyarfi20@gmail.com', NULL, '081807244697', NULL, NULL, NULL, NULL, 'suZxb', NULL, 0, 0, '', 0, '2015-05-13 12:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_participant_attachments`
--

CREATE TABLE IF NOT EXISTS `tbl_participant_attachments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `participant_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_name` text,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `part_id` (`participant_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_participant_conferences`
--

CREATE TABLE IF NOT EXISTS `tbl_participant_conferences` (
  `participant_id` int(11) NOT NULL,
  `conference_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_participant_conferences`
--

INSERT INTO `tbl_participant_conferences` (`participant_id`, `conference_id`, `priority`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_participant_conference_completed`
--

CREATE TABLE IF NOT EXISTS `tbl_participant_conference_completed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `participant_id` int(11) NOT NULL,
  `conference_id` int(11) NOT NULL,
  `date_completed` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_participant_conference_completed`
--

INSERT INTO `tbl_participant_conference_completed` (`id`, `participant_id`, `conference_id`, `date_completed`, `status`, `added`, `modified`) VALUES
(1, 1, 1, 6756363, 0, 0, 0),
(2, 2, 2, 5858585, 1, 0, 0),
(3, 3, 3, 5858585, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinces`
--

CREATE TABLE IF NOT EXISTS `tbl_provinces` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedules`
--

CREATE TABLE IF NOT EXISTS `tbl_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conference_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT '1',
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_schedules`
--

INSERT INTO `tbl_schedules` (`id`, `conference_id`, `name`, `subject`, `description`, `is_system`, `status`, `added`, `modified`) VALUES
(12, 1, 'human-resources', 'Lorem Ipsum', '<p>\n	Lorem Ipsum Dolor Sit Amet Lorem Ipsum Lorem Ipsum Dolor Sit Amet Lorem Ipsum Lorem Ipsum Dolor Sit Amet Lorem Ipsum Lorem Ipsum Dolor Sit Amet Lorem Ipsum Lorem Ipsum Dolor Sit Amet Lorem Ipsum Lorem Ipsum Dolor Sit Amet Lorem Ipsum Lorem Ipsum Dolor Sit Amet Lorem Ipsum Lorem Ipsum Dolor Sit Amet Lorem Ipsum Lorem Ipsum Dolor Sit Amet Lorem Ipsum</p>\n', 1, 'publish', 1431073406, 0),
(13, 1, 'creative', 'Creative', '<p>\n	Lorem Ipsum Dolor Sit Amet</p>\n', 1, 'publish', 1431073406, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE IF NOT EXISTS `tbl_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parameter` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT '1',
  `input_type` enum('input','textarea','radio','dropdown','timezones') DEFAULT NULL,
  `input_size` enum('large','medium','small') DEFAULT NULL,
  `show_editor` enum('0','1') DEFAULT NULL,
  `is_numeric` enum('0','1') DEFAULT NULL,
  `help_text` varchar(512) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`parameter`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `parameter`, `alias`, `value`, `is_system`, `input_type`, `input_size`, `show_editor`, `is_numeric`, `help_text`, `status`, `added`, `modified`) VALUES
(1, 'email_marketing', 'Email Marketing', 'marketing@', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(2, 'email_administrator', 'Email Administrator', 'administrator@', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, 1336122482),
(3, 'email_hrd', 'Email HRD', 'hrd@', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(4, 'email_info', 'Email Info', 'info@', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(5, 'email_template', 'Email Template', '&dash;', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(6, 'maintenance_template', 'Maintenance Mode Template', '<h2>The site is off for <span><h1>MAINTENANCE</h1></span></h2>', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(7, 'contactus_address', 'Contact Address', '&dash;', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(8, 'contactus_gmap', 'GMaps Location', 'http://maps.google.com/maps?q=-6.217668,106.812992&num=1&t=m&z=18', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(9, 'no_phone', 'Number Phone', '(021) 522.3715', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(10, 'no_fax', 'Number Fax', '(021) 522.3718', 1, NULL, NULL, NULL, NULL, NULL, 1, 1334835773, NULL),
(11, 'title_default', 'Website Title Default', 'We build on solid foundation, effective, construction and visual appeal', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(12, 'title_name', 'Company Title Name', 'PT. Default (Web Agency in Jakarta)', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(13, 'site_logo', 'Site Logo', 'logo.png', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(14, 'language', 'Default Site Language', 'en', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(15, 'counter', 'Site Counter', '123', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(16, 'copyright', 'Copyright', '© 2012 COMPANY NAME COPYRIGHT. All Rights Reserved.', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(17, 'site_name', 'Site Name', ' Default <br/> PT. Default (Web Agency in Jakarta).', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(18, 'site_quote', 'Quote', 'We provide solution for your Websites', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(19, 'site_description', 'Website Description', 'We provide solution for your Company Website ', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(20, 'socmed_facebook', 'Facebook', 'http://facebook.com', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(21, 'socmed_twitter', 'Twitter', 'http://twitter.com', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(22, 'socmed_gplus', 'Google Plus', 'http://plus.google.com', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(23, 'socmed_linkedin', 'LinkedIn', 'http://linkedin.com', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(24, 'socmed_pinterest', 'Pinterest', 'http://pinterest.com', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(25, 'registered_mark', 'Registered', 'We provide solution for your Websites', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(26, 'google_analytics', 'Analytics', 'Code Snippet', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568),
(27, 'ext_link', 'Ext Link', 'http://www.apb-career.net', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1336118568);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_speakers`
--

CREATE TABLE IF NOT EXISTS `tbl_speakers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `nationality_id` int(11) NOT NULL,
  `research_area` varchar(255) NOT NULL,
  `biography` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `added` int(11) unsigned DEFAULT NULL,
  `modified` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_speakers`
--

INSERT INTO `tbl_speakers` (`id`, `name`, `subject`, `nationality_id`, `research_area`, `biography`, `photo`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 'dr-lorem-ipsum', 'Dr. Lorem Ipsum', 0, '', '<p>\n	<span style="color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11.9040002822876px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 17.8560009002686px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">The most general term to indicate a meeting for discussion - most commonly adopted by associations and organizations for their regular meetings. It is usually associated with the most traditional type of presentation, that is, papers followed by questions.</span></p>\n', 'd1708-skulls.jpg', 1, NULL, 1, NULL, NULL),
(2, 'dr.-consecteteur', 'Dr. Consecteteur', 0, '', '<p>\n	<span style="color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11.9040002822876px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 17.8560009002686px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">The roundness of the table clearly symbolizes the equality of all participants. Each of them will have the same right to take the floor. Roundtables commonly bring together academics who usually are invited as key-note speakers. Discussion nevertheless plays the leading role in this kind of meeting.</span></p>\n', '823eb-04b.jpg', 1, NULL, 1, NULL, NULL),
(3, NULL, 'Dr. Lorem Ipsum Dolor Sit Amet', 0, '', '<p>\n	<span style="color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11.9040002822876px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 17.8560009002686px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">Taken from the language of manufacturing, the term workshop indicates a brief intensive educational program for a small group of people that focuses on techniques and skills in a particular field. In academia, it is adopted to describe meetings reserved for small groups of specialists who come together for concerted activities or discussion.</span></p>\n', '43d20-03a.jpg', 1, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_urbans`
--

CREATE TABLE IF NOT EXISTS `tbl_sub_urbans` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `urban_district_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_urban_districts`
--

CREATE TABLE IF NOT EXISTS `tbl_urban_districts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `province_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `username` varchar(160) NOT NULL,
  `group_id` int(11) unsigned NOT NULL,
  `is_system` tinyint(3) NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL,
  `logged_in` int(1) unsigned NOT NULL,
  `session_id` varchar(40) NOT NULL,
  `status` int(1) unsigned NOT NULL,
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`,`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `email`, `password`, `username`, `group_id`, `is_system`, `last_login`, `logged_in`, `session_id`, `status`, `added`, `modified`) VALUES
(1, 'admin@admin.com', 'dd94709528bb1c83d08f3088d4043f4742891f4f', 'admin', 1, 1, 1431465936, 1, 'ff24a81bfec3a83c8ad9674fdb277070', 1, 1431073404, 0),
(2, 'administrator', '12506e739378348ec662bb015bfd2288362dcc1c', 'Administrator', 2, 1, 0, 1431073404, '', 1, 1431073404, 0),
(3, 'user@testing.com', '12506e739378348ec662bb015bfd2288362dcc1c', 'User', 99, 0, 0, 1431073404, '', 1, 1431073404, 0),
(4, 'employee@employee.com', '12506e739378348ec662bb015bfd2288362dcc1c', 'Employee Staff', 100, 0, 0, 1431073404, '', 1, 1431073404, 0),
(5, 'admin@admin.com', 'dd94709528bb1c83d08f3088d4043f4742891f4f', 'admin', 1, 1, 0, 1431073405, '', 1, 1431073405, 0),
(6, 'administrator', '12506e739378348ec662bb015bfd2288362dcc1c', 'Administrator', 2, 1, 0, 1431073405, '', 1, 1431073405, 0),
(7, 'user@testing.com', '12506e739378348ec662bb015bfd2288362dcc1c', 'User', 99, 0, 0, 1431073405, '', 1, 1431073405, 0),
(8, 'employee@employee.com', '12506e739378348ec662bb015bfd2288362dcc1c', 'Employee Staff', 100, 0, 0, 1431073405, '', 1, 1431073405, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_groups`
--

CREATE TABLE IF NOT EXISTS `tbl_user_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `backend_access` tinyint(1) DEFAULT NULL,
  `full_backend_access` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `tbl_user_groups`
--

INSERT INTO `tbl_user_groups` (`id`, `name`, `backend_access`, `full_backend_access`, `status`, `is_system`, `added`, `modified`) VALUES
(1, 'Super Administrator', 1, 1, 1, 1, 1431073404, 0),
(2, 'Administrator', 1, 0, 1, 1, 1431073404, 0),
(99, 'User', 0, 0, 1, 1, 1431073404, 0),
(100, 'Employee', 0, 0, 1, 1, 1431073404, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_histories`
--

CREATE TABLE IF NOT EXISTS `tbl_user_histories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(24) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `controller` varchar(160) NOT NULL,
  `action` char(20) DEFAULT NULL,
  `time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`module`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_user_histories`
--

INSERT INTO `tbl_user_histories` (`id`, `module`, `user_id`, `controller`, `action`, `time`) VALUES
(1, 'user', 1, 'history', 'index', 1431073405),
(2, 'user', 1, 'history', 'index', 1431073405);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_profiles`
--

CREATE TABLE IF NOT EXISTS `tbl_user_profiles` (
  `user_id` int(11) unsigned NOT NULL,
  `gender` enum('male','female') NOT NULL DEFAULT 'male',
  `about` text,
  `first_name` varchar(64) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  `division` varchar(64) DEFAULT NULL,
  `country` varchar(64) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `address` text,
  `postal_code` varchar(8) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `mobile_phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `file_type` varchar(64) DEFAULT NULL,
  `file_name` varchar(48) DEFAULT NULL,
  `status` int(1) unsigned NOT NULL,
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  KEY `user_id` (`user_id`,`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_profiles`
--

INSERT INTO `tbl_user_profiles` (`user_id`, `gender`, `about`, `first_name`, `last_name`, `division`, `country`, `state`, `city`, `address`, `postal_code`, `birthday`, `phone`, `mobile_phone`, `fax`, `website`, `file_type`, `file_name`, `status`, `added`, `modified`) VALUES
(1, 'male', 'Superadmin of this Website', '', '', 'Web Programmer', 'DKI Jakarta', 'Jakarta', 'Jl. Gading Putih 1 F2 No. 4', '14240', '', '2010-09-06', '1234', '', '0', '-', 'image/jpeg', '78d57b4b5a0c6048b75bb0c9d91a8392.jpg', 1, 1283760138, 1283831030),
(2, 'male', 'Administrator of this Website', '', '', 'Web Designer', 'DKI Jakarta', 'Jakarta', 'Jl. Gading Putih 1 F2 No. 4', '14240', '', '2010-09-06', '1234', '', '0', '-', 'image/jpeg', '78d57b4b5a0c6048b75bb0c9d91a8392.jpg', 1, 1283760138, 1283831030),
(3, 'male', 'User of this Website', '', '', 'Jakarta', '', '', 'Jl. Pulomas Barat 1 No. 31', '', '', '0000-00-00', '1234', '', '', '', 'image/jpeg', 'a8a484572c007e1e17648ae2c7ad629c.jpg', 1, 1285152397, 0),
(4, 'male', '', '', 'Jakarta', '', '', '', 'Jl. Pulomas Barat 1 No. 31', '', '', '0000-00-00', '081807244697', '', '', '', 'image/jpeg', 'eb068fc7204f01f8cd25375b42fc6953.jpg', 1, 1285152397, 1326110970),
(5, 'male', '', '', 'mimipopo', '', '', '', 'Jl. Pulomas Barat 1 No. 31', '', '', '0000-00-00', '081807244697', '', '', '', 'image/jpeg', 'eb068fc7204f01f8cd25375b42fc6953.jpg', 1, 1285152397, 1326110970),
(111, 'male', '', 'Web Developer', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', 1, 1333442128, 1333442192),
(110, 'male', '', 'Web Developer', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', 1, 1333441986, 1333442058);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
