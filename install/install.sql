--- WireDatabaseBackup {"time":"2015-01-20 22:50:49","user":"","dbName":"bluevr","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(128) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`) VALUES('27', '<h3>The page you were looking for is not found.</h3><p>Please use our top or bottom navigation to find the page.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1', '<p>ProcessWire is a free php5 content management system and framework (Open source CMS/CMF). Specialy build to save your time and the work you would do. ProcessWire gives simpler and stronger control over your pages, fields, templates and markup at any scale. </p>\n\n<h2>It is Faster, Stronger, Simple, Powerful and Fun</h2>\n\n<p>Managing a site in ProcessWire is shockingly easy and fun compared to what you may be used to. Please visit more about <a href=\"http://processwire.com\" target=\"_blank\">processwire</a> from the official website.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1011', '<h2>Keep in touch with us</h2><p class=\"medium\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ultrices urna ut rutrum scelerisque. Nullam libero erat, rhoncus tempus purus eu, ornare fermentum quam. Cras tincidunt rhoncus suscipit. In velit orci, suscipit quis purus eget, venenatis elementum leo. Vivamus accumsan nisl vel risus fermentum vestibulum. Fusce gravida condimentum libero, viverra cursus felis fermentum nec. Nullam eu purus vel dolor lacinia hendrerit et et ante. Mauris convallis quam id odio iaculis porta. Vestibulum vitae laoreet sem, nec tincidunt felis. Praesent nisi mauris, dictum quis orci vitae, rutrum consequat sem. Curabitur sem augue, mattis a mi congue, convallis pellentesque sapien.</p><h3 class=\"medium\">Main office</h3><address><strong>WebCreate.lk</strong>, <br /> No 90, Park street, <br /> Weera Avenue, <br /> Pannipitiya, 10230, <br />Sri Lanka</address><address></address><address></address><address></address><h4>Say Hello to us or leave a message</h4>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1013', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non nulla eu dolor placerat lacinia. Donec accumsan neque vel enim mattis, ac posuere sapien aliquam.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1014', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non nulla eu dolor placerat lacinia. Donec accumsan neque vel enim mattis, ac posuere sapien aliquam.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1015', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non nulla eu dolor placerat lacinia. Donec accumsan neque vel enim mattis, ac posuere sapien aliquam. </p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1019', '<p>Subjects to ecstatic children he. Could ye leave up as built match. Dejection agreeable attention set suspected led offending. Admitting an performed supposing by</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1022', '<p>Detract yet delight written farther his general. If in so bred at dare rose lose good. Feel and make two real miss use easy. Celebrated delightful an especially increasing instrument am.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1034', '<h3>BlueVR site profile (theme) designed as full width layout. </h3>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1035', '<p>We use latest technologies and frameworks to develop handcraft websites.</p>\n\n<h3>Features that we used</h3>\n\n<ul><li>Build with bootstrap 3.x</li>\n	<li>Full Responsive design</li>\n	<li>Easy to maintain and customize </li>\n	<li>Used less for css flexibility</li>\n	<li>Perfect theme for business and personal use.</li>\n	<li>Supports IE 10+ and other browsers.</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1007', '<h2>Company Introduction</h2>\n\n<p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent dapibus mauris sed urna ultricies lacinia. Sed quis varius lectus. In vel commodo orci. Nulla quis accumsan lectus. In a dui nunc. Cras iaculis suscipit lacus ornare cursus. Mauris tellus nulla, iaculis vel consectetur eu, auctor et sem. Etiam pulvinar pellentesque massa, id scelerisque nibh dictum sit amet. Sed rhoncus, dui sit amet suscipit blandit, mi eros tincidunt diam, ut venenatis dui neque et lorem. In fermentum dui in tincidunt feugiat.</p>\n\n<h3>History</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent dapibus mauris sed urna ultricies lacinia. Sed quis varius lectus. In vel commodo orci. Nulla quis accumsan lectus. In a dui nunc. Cras iaculis suscipit lacus ornare cursus. Mauris tellus nulla, iaculis vel consectetur eu, auctor et sem. Etiam pulvinar pellentesque massa, id scelerisque nibh dictum sit amet. Sed rhoncus, dui sit amet suscipit blandit, mi eros tincidunt diam, ut venenatis dui neque et lorem. In fermentum dui in tincidunt feugiat.</p>\n\n<h4>Our speciality</h4>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent dapibus mauris sed urna ultricies lacinia. Sed quis varius lectus. In vel commodo orci. Nulla quis accumsan lectus. </p>\n\n<ul><li>In a dui nunc</li>\n	<li>Cras iaculis suscipit lacus ornare cursus</li>\n	<li>Mauris tellus nulla, iaculis vel consectetur eu, auctor et sem</li>\n	<li>Etiam pulvinar pellentesque massa, id scelerisque nibh dictum sit amet</li>\n	<li>Sed rhoncus, dui sit amet suscipit blandit, mi eros tincidunt diam, ut venenatis dui neque et lorem.</li>\n</ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1030', '<p class=\"medium\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id ullamcorper augue, in vestibulum ligula. Fusce velit velit, volutpat in nulla ac, vestibulum semper enim. Proin id nibh scelerisque, ultricies augue id, lobortis sapien. </p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1029', '<p>http://vimeo.com/55169240</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1038', '<h2>Overview of BlueVR</h2><p class=\"lead\">BlueVR is extremly powerful and resposive theme (site profile) which is build for <a href=\"http://processwire.com\">processwire</a> CMS/CMF. Simple full-width layout enables more impression and fancy look as well. One of great feature of using ProcessWire is the scalability while having the simplicity.</p><p class=\"lead\">BlueVR site profile comes with page block add-on feature which will help you to use reusable blocks over your pages. Unlimited pages, links, page blocks would get the advantage of clean and flexibility of the site and the code, Apart from compatitive features the site profile it self has contact form feature as well.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1046', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id ullamcorper augue, in vestibulum ligula. Fusce velit velit, volutpat in nulla ac, vestibulum semper enim. Proin id nibh scelerisque, ultricies augue id, lobortis sapien. Aliquam quis ultricies ipsum. Donec dapibus vehicula elementum. </p><p>Nulla id justo ac tellus consequat dapibus eu vitae sem. Cras a ipsum lorem. Mauris vitae mauris quis dolor laoreet sodales. Aliquam a lacus vestibulum, ultricies turpis ut, pharetra enim. Praesent placerat eget ligula eu auctor. Cras accumsan, felis lacinia ultrices semper, risus lorem cursus ligula, non cursus turpis eros et ante. Duis bibendum nibh sed tellus faucibus sagittis.</p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1039', '<h2>Introduction</h2><p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent dapibus mauris sed urna ultricies lacinia. Sed quis varius lectus. In vel commodo orci. Nulla quis accumsan lectus. In a dui nunc. Cras iaculis suscipit lacus ornare cursus. Mauris tellus nulla, iaculis vel consectetur eu, auctor et sem. Etiam pulvinar pellentesque massa, id scelerisque nibh dictum sit amet.</p><h3>Our service would be special</h3><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent dapibus mauris sed urna ultricies lacinia. Sed quis varius lectus. In vel commodo orci. Nulla quis accumsan lectus.</p><ul><li>In a dui nunc</li><li>Cras iaculis suscipit lacus ornare cursus</li><li>Mauris tellus nulla, iaculis vel consectetur eu, auctor et sem</li><li>Etiam pulvinar pellentesque massa, id scelerisque nibh dictum sit amet</li><li>Sed rhoncus, dui sit amet suscipit blandit, mi eros tincidunt diam, ut venenatis dui neque et lorem.</li></ul>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1056', '<h2 class=\"lead\">Feeling love with our design?</h2><p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent dapibus mauris sed urna ultricies lacinia. </p><p class=\"lead\">Sed quis varius lectus. In vel commodo orci</p><p class=\"lead\"><a class=\"btn btn-default btn-lg\" href=\"/contact-us/\">Contact us <em class=\"fa fa-fw fa-angle-right\"></em></a></p>');
INSERT INTO `field_body` (`pages_id`, `data`) VALUES('1047', '<ul><li>HTML5 &amp; CSS3 + ({less})</li><li>Build with bootstrap 3.1</li><li>SEO Friendly</li><li>Clean &amp; modern design</li><li>Responsive markup</li><li>Contact form and google map locations with multiple google markers</li><li>Testimonials using bxSlider</li></ul>');

DROP TABLE IF EXISTS `field_button_config`;
CREATE TABLE `field_button_config` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_button_config_end`;
CREATE TABLE `field_button_config_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_contact_form_company`;
CREATE TABLE `field_contact_form_company` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_contact_form_email`;
CREATE TABLE `field_contact_form_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_contact_form_message`;
CREATE TABLE `field_contact_form_message` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_contact_form_name`;
CREATE TABLE `field_contact_form_name` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_contact_form_telephone`;
CREATE TABLE `field_contact_form_telephone` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_contents`;
CREATE TABLE `field_contents` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_contents_end`;
CREATE TABLE `field_contents_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_global_site_setttings`;
CREATE TABLE `field_global_site_setttings` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_global_site_setttings_end`;
CREATE TABLE `field_global_site_setttings_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1', 'BLUEVR - Build with ProcessWire CMS/CMF');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1007', 'All about us');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1029', 'Responsive vimeo/youtube video');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1038', 'Features on BlueVR');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1011', 'Keep in touch with us');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1039', 'What we serve to our clients');
INSERT INTO `field_headline` (`pages_id`, `data`) VALUES('1056', 'Contact us banner');

DROP TABLE IF EXISTS `field_hero_unit`;
CREATE TABLE `field_hero_unit` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_hero_unit` (`pages_id`, `data`, `sort`) VALUES('1', '1060', '0');

DROP TABLE IF EXISTS `field_hero_unit_text`;
CREATE TABLE `field_hero_unit_text` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_hero_unit_text` (`pages_id`, `data`) VALUES('1060', '<h1>BlueVR theme (site profile) with ProcessWire CMS</h1><h2>Handcrafted, Responsive, Simple and Powerful</h2>');

DROP TABLE IF EXISTS `field_image`;
CREATE TABLE `field_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1060', 'sky-2000x.jpg', '0', 'sky', '2014-06-11 04:05:06', '2014-06-11 04:04:35');
INSERT INTO `field_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1035', 'macbook_pro_vector_by_black_werewolf-d48pz1u.jpg', '0', '', '2014-05-06 11:04:32', '2014-05-06 11:04:32');
INSERT INTO `field_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1046', 'blue-vr-mobile.png', '0', '', '2014-06-11 02:45:34', '2014-06-11 02:45:34');
INSERT INTO `field_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1056', 'lakmalis-hand-on-sun-2000x837.jpg', '0', '', '2014-05-02 22:00:52', '2014-05-02 22:00:52');
INSERT INTO `field_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1034', 'banner_900x260.jpg', '0', 'Blue-vr overview', '2014-06-11 00:23:21', '2014-06-11 00:23:12');
INSERT INTO `field_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1', 'logo.png', '0', 'Blue-VR Logo', '2014-06-11 00:53:04', '2014-06-11 00:52:53');
INSERT INTO `field_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1047', 'macbook_pro_vector_by_black_werewolf-d48pz1u.jpg', '0', 'site preview', '2014-06-11 01:12:30', '2014-06-11 01:12:11');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES('1038', 'home-page-image-mobile-bordered.jpg', '0', '', '2014-06-11 02:40:30', '2014-06-11 02:40:30');

DROP TABLE IF EXISTS `field_label_text`;
CREATE TABLE `field_label_text` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_label_text` (`pages_id`, `data`) VALUES('1060', 'See full spec');
INSERT INTO `field_label_text` (`pages_id`, `data`) VALUES('1013', 'fa-clock-o');
INSERT INTO `field_label_text` (`pages_id`, `data`) VALUES('1014', 'fa-pagelines');
INSERT INTO `field_label_text` (`pages_id`, `data`) VALUES('1015', 'fa-plane');
INSERT INTO `field_label_text` (`pages_id`, `data`) VALUES('1019', 'Founder & CEO LOPO PLC');
INSERT INTO `field_label_text` (`pages_id`, `data`) VALUES('1022', 'Media manager Aido inc.');
INSERT INTO `field_label_text` (`pages_id`, `data`) VALUES('1011', 'Find us on google');

DROP TABLE IF EXISTS `field_label_value`;
CREATE TABLE `field_label_value` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_label_value` (`pages_id`, `data`) VALUES('1019', 'Viyan Garajith');
INSERT INTO `field_label_value` (`pages_id`, `data`) VALUES('1022', 'Ferio demak');
INSERT INTO `field_label_value` (`pages_id`, `data`) VALUES('1060', 'fa-arrow-right');

DROP TABLE IF EXISTS `field_link`;
CREATE TABLE `field_link` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_link` (`pages_id`, `data`, `sort`) VALUES('1060', '1038', '0');

DROP TABLE IF EXISTS `field_links`;
CREATE TABLE `field_links` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_links` (`pages_id`, `data`, `sort`) VALUES('1016', '1007', '0');
INSERT INTO `field_links` (`pages_id`, `data`, `sort`) VALUES('1016', '1011', '3');
INSERT INTO `field_links` (`pages_id`, `data`, `sort`) VALUES('1016', '1038', '1');
INSERT INTO `field_links` (`pages_id`, `data`, `sort`) VALUES('1016', '1039', '2');

DROP TABLE IF EXISTS `field_map`;
CREATE TABLE `field_map` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  `lat` float(10,6) NOT NULL DEFAULT '0.000000',
  `lng` float(10,6) NOT NULL DEFAULT '0.000000',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `zoom` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `latlng` (`lat`,`lng`),
  KEY `zoom` (`zoom`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_map` (`pages_id`, `data`, `lat`, `lng`, `status`, `zoom`) VALUES('1051', 'Pannipitiya Sri lanka', '6.850000', '79.949997', '5', '12');
INSERT INTO `field_map` (`pages_id`, `data`, `lat`, `lng`, `status`, `zoom`) VALUES('1057', '', '0.000000', '0.000000', '0', '0');
INSERT INTO `field_map` (`pages_id`, `data`, `lat`, `lng`, `status`, `zoom`) VALUES('1053', 'Pannipitiya Station', '6.847183', '79.948914', '5', '14');
INSERT INTO `field_map` (`pages_id`, `data`, `lat`, `lng`, `status`, `zoom`) VALUES('1054', '', '0.000000', '0.000000', '0', '0');
INSERT INTO `field_map` (`pages_id`, `data`, `lat`, `lng`, `status`, `zoom`) VALUES('1055', '', '0.000000', '0.000000', '0', '0');

DROP TABLE IF EXISTS `field_maps`;
CREATE TABLE `field_maps` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_maps` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1011', '1051,1053', '2', '1050');

DROP TABLE IF EXISTS `field_on_page_blocks`;
CREATE TABLE `field_on_page_blocks` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_on_page_blocks` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1', '1034,1035', '2', '1033');
INSERT INTO `field_on_page_blocks` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1038', '1047,1046', '2', '1040');
INSERT INTO `field_on_page_blocks` (`pages_id`, `data`, `count`, `parent_id`) VALUES('27', '', '0', '1044');
INSERT INTO `field_on_page_blocks` (`pages_id`, `data`, `count`, `parent_id`) VALUES('1007', '', '0', '1042');

DROP TABLE IF EXISTS `field_page_blocks`;
CREATE TABLE `field_page_blocks` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_page_blocks` (`pages_id`, `data`, `sort`) VALUES('1007', '1056', '0');
INSERT INTO `field_page_blocks` (`pages_id`, `data`, `sort`) VALUES('1039', '1056', '0');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1062', '172');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1063', '173');

DROP TABLE IF EXISTS `field_render_option`;
CREATE TABLE `field_render_option` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_render_option` (`pages_id`, `data`) VALUES('1034', '6');
INSERT INTO `field_render_option` (`pages_id`, `data`) VALUES('1035', '1');
INSERT INTO `field_render_option` (`pages_id`, `data`) VALUES('1047', '2');
INSERT INTO `field_render_option` (`pages_id`, `data`) VALUES('1046', '1');
INSERT INTO `field_render_option` (`pages_id`, `data`) VALUES('1056', '4');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_seo_meta_description`;
CREATE TABLE `field_seo_meta_description` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_seo_meta_description` (`pages_id`, `data`) VALUES('1', 'Blue-VR is a free processwire site profile dony by webcreate.lk');

DROP TABLE IF EXISTS `field_seo_title`;
CREATE TABLE `field_seo_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_seo_title` (`pages_id`, `data`) VALUES('1', 'Blue-VR | Processwire site profile');

DROP TABLE IF EXISTS `field_sidebars`;
CREATE TABLE `field_sidebars` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_sidebars` (`pages_id`, `data`, `sort`) VALUES('1039', '1029', '0');
INSERT INTO `field_sidebars` (`pages_id`, `data`, `sort`) VALUES('1011', '1030', '0');
INSERT INTO `field_sidebars` (`pages_id`, `data`, `sort`) VALUES('1039', '1030', '1');

DROP TABLE IF EXISTS `field_storage`;
CREATE TABLE `field_storage` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_storage_end`;
CREATE TABLE `field_storage_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1051', 'Pannipitiya, Sri Lanka');
INSERT INTO `field_summary` (`pages_id`, `data`) VALUES('1', '&copy; {year} Ryan Cramer Design, LLC. Crafted with love by Gayan Virajith');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`) VALUES('11', 'Templates');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('16', 'Fields');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('22', 'Setup');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('3', 'Pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('6', 'Add Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('8', 'Tree');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('9', 'Save Sort');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('10', 'Edit Page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('21', 'Modules');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('29', 'Users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('30', 'Roles');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('2', 'Admin');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('7', 'Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('27', '404 Page Not Found');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('302', 'Insert Link');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('23', 'Login');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('304', 'Profile');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('301', 'Empty Trash');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('300', 'Search');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('303', 'Insert Image');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('28', 'Access');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('31', 'Permissions');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('32', 'Edit pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('34', 'Delete pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('35', 'Move pages (change parent)');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('36', 'View pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('50', 'Sort child pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('51', 'Change templates on pages');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('52', 'Administer users');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('53', 'User can update profile/password');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('54', 'Lock or unlock a page');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1', 'Home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1009', 'Conversion: Hero units');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1007', 'About');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1008', 'Tools');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1011', 'Contact us');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1012', 'Conversion: Service/Feature set');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1013', 'Built with bootstrap');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1014', 'Processwire CMS');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1015', 'Stronger & Faster');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1016', 'Conversion: Bottom navigation');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1017', 'Conversion: Common page blocks');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1018', 'Conversion: References');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1019', 'ref-1');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1022', 'ref-2');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1060', 'Home page hero unit');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1028', 'Conversion: Sidebar blocks');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1029', 'Go Sri Lanka');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1030', 'About our self');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1031', 'Repeaters');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1032', 'on_page_blocks');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1033', 'home');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1034', 'Fullwidth layout / Responsive');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1035', 'Technology and features');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1038', 'Features');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1039', 'Services');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1040', 'features');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1042', 'about');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1044', 'http404');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1047', 'Overall features');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1046', 'Fully responsive design');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1049', 'maps');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1050', 'contact-us');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1056', 'Contact us banner');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1061', 'Use Page Lister');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1062', 'Find');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1063', 'Recent');
INSERT INTO `field_title` (`pages_id`, `data`) VALUES('1064', 'Can see recently edited pages');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'tools');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'conversion-hero-units');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'conversion-hero-unit');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'conversion-features');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'conversion-feature');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'bottom-navigation');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'conversion-page-blocks');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'conversion-page-block');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'client-references-index');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'client-reference');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('107', 'basic-page-two-columns');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('108', 'conversion-sidebar-blocks');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('109', 'conversion-sidebar-block');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('110', 'repeater_on_page_blocks');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('111', 'contact-form');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('112', 'repeater_maps');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('113', 'contact-index');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '78', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '127', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '101', '10', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '100', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '1', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '102', '7', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '78', '2', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '103', '16', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '98', '12', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '122', '5', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '101', '6', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '113', '4', '{\"description\":\"Label text of the button\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '118', '5', '{\"description\":\"Optional (Font awesome icon class name). eg: fa-angle-right. For more details please see http:\\/\\/fontawesome.io\\/\",\"label\":\"FontAwesome icon name\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '78', '2', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '124', '7', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '76', '2', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '113', '1', '{\"description\":\"Please input fontawesome css prefix\",\"label\":\"FontAwesome icon name\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '44', '4', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '76', '3', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '115', '1', '{\"description\":\"Please select some pages.\",\"label\":\"Bottom navigation links\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '97', '3', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '76', '2', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '76', '1', '{\"description\":\"eg: Client quotes \",\"label\":\"Reference text\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '97', '2', '{\"description\":\"Please upload an image with dimension of 100x100 in pixels.\",\"label\":\"Image (100x100)\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '113', '3', '{\"description\":\"eg: Founder of CBL inc\",\"label\":\"Source label\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '118', '4', '{\"description\":\"eg: John steven\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '76', '2', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '99', '13', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '101', '5', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '121', '9', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '120', '10', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '103', '11', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '44', '4', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '76', '3', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('108', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('109', '78', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '102', '6', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '98', '7', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('107', '99', '8', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '119', '3', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '97', '2', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '76', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('110', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '102', '11', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '98', '8', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '99', '9', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '120', '10', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '103', '11', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '100', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '120', '15', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '105', '9', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '128', '2', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '129', '3', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '130', '4', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('111', '131', '5', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '135', '1', '{\"description\":\"Description of your map location. eg: Name of the location\",\"label\":\"Map description\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '121', '10', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '103', '11', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '113', '4', '{\"description\":\"Sub title of the google map, which will be display above the map\",\"label\":\"Google map location title\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '136', '5', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '101', '6', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '102', '7', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '98', '8', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '99', '9', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '119', '4', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '108', '14', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '135', '8', '{\"collapsed\":1,\"description\":\"Copyright note to show on the bottom\",\"label\":\"Copyright-text\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '112', '6', '{\"description\":\"Page where to go when user clicks\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '100', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '1', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '78', '2', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('113', '76', '3', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '97', '7', '{\"label\":\"Site logo (155x40)\"}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '104', '6', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '122', '5', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '76', '4', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '44', '3', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '78', '2', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '100', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('112', '134', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '97', '1', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '109', '2', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '123', '3', '');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '137', '3', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeImage', 'image', '0', 'Image', '{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"defaultGrid\":0,\"adminThumbs\":1,\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeTextarea', 'seo_title', '0', 'SEO title', '{\"description\":\"Simply what you see in your browser title, when you view this page. Highly recommend field for SEO. Create unique title tags for each page. Each of your pages should ideally have a unique title tag, which helps Google know how the page is distinct from the others on your site. Note: If you leave this field empty it will take the default `title` of the page to generate browser title.\",\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeTextarea', 'seo_meta_description', '0', 'SEO meta description', '{\"description\":\"What you see in meta description under your HTML header. This is important for SEO. If you do not provide page based meta description, the system will display your common meta description that you have specified in `home` page.\",\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeFieldsetOpen', 'contents', '0', 'Content', '{\"columnWidth\":60}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeFieldsetClose', 'contents_END', '0', 'Content close', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeFieldsetOpen', 'storage', '0', 'Storage & settings', '{\"columnWidth\":40}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeFieldsetClose', 'storage_END', '0', 'Storage & settings close', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('44', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"entityEncode\":1,\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":2}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('76', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,forecolorpicker,forecolor,|,link,unlink,|,image,|,code,|,fullscreen,pagebreak,bramus_cssextras_classes\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix,print,preview,pagebreak,\",\"valid_elements\":\"@[id|class|style],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code,br,span,h1,hr,address\",\"contentType\":0,\"content_css\":\"\\/site\\/tinymce\\/content.css\",\"thirdparty\":\"bramus_cssextras: \\/site\\/tinymce\\/plugins\\/bramus_cssextras\",\"textformatters\":[\"TextformatterVideoEmbed\"],\"toolbar\":\"Format, Styles, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address;\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"stylesSet\":\"bodystyles:\\/site\\/modules\\/InputfieldCKEditor\\/body-field-styles.js\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('78', 'FieldtypeText', 'headline', '0', 'Headline', '{\"description\":\"Use this instead of the Title if a longer headline is needed than what you want to appear in navigation.\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeFieldsetOpen', 'global_site_setttings', '0', 'Global site settings', '{\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeFieldsetClose', 'global_site_setttings_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'global_site_setttings\'. It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypePage', 'hero_unit', '0', 'Hero unit', '{\"derefAsPage\":1,\"parent_id\":1009,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldPageListSelect\",\"description\":\"Hero unit is the very first block of the home page. It contains text + background image. You can add\\/edit hero units on Admin > Pages > Tools > Conversion: Hero units > new\\/edit\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeTextarea', 'hero_unit_text', '0', 'Hero unit description', '{\"inputfieldClass\":\"InputfieldTinyMCE\",\"contentType\":0,\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,forecolorpicker,forecolor,|,link,unlink,|,image,|,code,|,fullscreen,pagebreak,bramus_cssextras_classes\",\"theme_advanced_blockformats\":\"p,h1,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix,print,preview,pagebreak\",\"valid_elements\":\"@[id|class|style],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code,br,span,h1,hr\",\"content_css\":\"\\/site\\/tinymce\\/content.css\",\"thirdparty\":\"bramus_cssextras: \\/site\\/tinymce\\/plugins\\/bramus_cssextras\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('122', 'FieldtypeRepeater', 'on_page_blocks', '0', 'On page blocks', '{\"template_id\":56,\"parent_id\":1032,\"repeaterReadyItems\":1,\"repeaterFields\":[1,76,97,119],\"description\":\"On page blocks are multiple blocks (which is similar to `Common blocks`) which you can add only to current page. \"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('112', 'FieldtypePage', 'link', '0', 'Select page', '{\"derefAsPage\":1,\"parent_id\":1,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldPageListSelect\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('113', 'FieldtypeText', 'label_text', '0', 'Link label', '{\"size\":0,\"maxlength\":2048}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('124', 'FieldtypeFieldsetClose', 'button_config_END', '0', 'Close an open fieldset', '{\"description\":\"This field was added automatically to accompany fieldset \'button_config\'. It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('123', 'FieldtypeFieldsetOpen', 'button_config', '0', 'Button config', '{\"collapsed\":1,\"description\":\"Button config fields are useful when you need to show a button on a hero unit or page block. You can configure button label text, link and icon here.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('115', 'FieldtypePage', 'links', '0', 'Links', '{\"derefAsPage\":0,\"parent_id\":1,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldPageListSelectMultiple\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('118', 'FieldtypeText', 'label_value', '0', 'Label value', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('119', 'FieldtypeSelect', 'render_option', '0', 'Page block rendering option', '{\"description\":\"Choose how page block needs to be appeared on your web page. Please select an option.\",\"required\":1,\"select_options\":\"1:= Display body text first and followed by an image\\r\\n2:= Display an image first and followed by body text\\r\\n3:= Display body text only (aligned center)\\r\\n4:= Render image as background\\r\\n5:= Display body text only (aligned left)\\r\\n6:= Display body text and an image on second row (center)\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('120', 'FieldtypePage', 'page_blocks', '0', 'Common blocks', '{\"description\":\"Common page blocks are reusable page blocks. Which you can use for several pages. Please select one or more page blocks. You can add\\/edit page blocks under Home > Tools > Conversion: Page blocks\",\"derefAsPage\":0,\"parent_id\":1017,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldPageListSelectMultiple\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('121', 'FieldtypePage', 'sidebars', '0', 'Sidebar blocks', '{\"description\":\"Please add one or more sidebar items to your page. Sidebar items are reusable items. Feel free to add\\/edit sidebar items under Home > Tools > Conversion: Sidebar blocks\",\"derefAsPage\":0,\"parent_id\":1028,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldPageListSelectMultiple\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('127', 'FieldtypeText', 'contact_form_name', '0', 'Name', '{\"placeholder\":\"Your name\",\"stripTags\":1,\"maxlength\":200,\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('128', 'FieldtypeText', 'contact_form_company', '0', 'Company/Organization', '{\"placeholder\":\"Company\",\"stripTags\":1,\"maxlength\":150}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('129', 'FieldtypeText', 'contact_form_telephone', '0', 'Contact Number', '{\"placeholder\":\"(123) 456-7890\",\"stripTags\":1,\"maxlength\":20,\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('130', 'FieldtypeEmail', 'contact_form_email', '0', 'Email', '{\"placeholder\":\"name@domain.com\",\"required\":1,\"size\":0,\"maxlength\":254}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('131', 'FieldtypeTextarea', 'contact_form_message', '0', 'Your Question / Comment', '{\"textformatters\":[\"TextformatterEntities\"],\"stripTags\":1,\"maxlength\":250,\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('134', 'FieldtypeMapMarker', 'map', '0', 'Google map location', '{\"description\":\"Enter an address, place or location of any sort into the `Address` field.\\r\\n                Example:\\r\\n                - 125 E. Court Square, Decatur, GA 30030\\r\\n                - Atlanta, GA\\r\\n                - Disney World \",\"defaultType\":\"ROADMAP\",\"schemaVersion\":1,\"defaultAddr\":\"Castaway Cay\",\"defaultLat\":\"26.0936823\",\"defaultLng\":\"-77.5332796\",\"height\":300,\"defaultZoom\":14}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('135', 'FieldtypeTextarea', 'summary', '0', 'Summary', '{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"rows\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('136', 'FieldtypeRepeater', 'maps', '0', 'Map locations', '{\"description\":\"Please add one or more map markers\",\"repeaterReadyItems\":3,\"parent_id\":1049,\"template_id\":58,\"repeaterFields\":[134,135],\"collapsed\":5}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('137', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '3', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '1', '{\"showFields\":[]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\"]}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":9}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '2', '{\"colors\":\"classic\"}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'JqueryMagnific', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('152', 'FieldtypeSelect', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('157', 'TextformatterVideoEmbed', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('158', 'FieldtypeRepeater', '3', '{\"repeatersRootPageID\":1031}', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'InputfieldRepeater', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'FieldtypeMapMarker', '1', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'InputfieldMapMarker', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'ContactFormHelper', '3', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'FormTemplateProcessor', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'InputfieldSelector', '2', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'ProcessPageLister', '0', '', '0000-00-00 00:00:00');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'ProcessRecentPages', '1', '', '2015-01-20 19:30:12');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'InputfieldCKEditor', '0', '', '2015-01-20 19:33:20');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('175', 'MarkupHTMLPurifier', '0', '', '2015-01-20 19:33:20');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('176', 'AdminThemeReno', '2', '{\"colors\":\"blue\",\"avatar_field\":null,\"home\":\"fa-home\",\"signout\":\"fa-power-off\",\"page\":\"fa-file-text\",\"setup\":\"fa-wrench\",\"module\":\"fa-briefcase\",\"access\":\"fa-unlock\"}', '2015-01-20 19:46:03');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=1066 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1', '0', '1', 'home', '9', '2015-01-20 22:02:17', '41', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('2', '1', '2', 'processwire', '1035', '2015-01-20 19:30:05', '40', '0000-00-00 00:00:00', '2', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('3', '2', '2', 'page', '21', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('6', '3', '2', 'add', '1045', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('7', '1', '2', 'trash', '1039', '2011-08-14 22:04:52', '41', '2010-02-07 05:29:39', '2', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('8', '3', '2', 'list', '21', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('9', '3', '2', 'sort', '1047', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('10', '3', '2', 'edit', '1045', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('11', '22', '2', 'template', '21', '2011-03-29 21:37:06', '41', '2010-02-01 11:04:54', '2', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('16', '22', '2', 'field', '21', '2011-03-29 21:37:06', '41', '2010-02-01 12:44:07', '2', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('21', '2', '2', 'module', '21', '2011-03-29 21:37:06', '41', '2010-02-02 10:02:24', '2', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('22', '2', '2', 'setup', '21', '2011-03-29 21:37:06', '41', '2010-02-09 12:16:59', '2', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('23', '2', '2', 'login', '1035', '2011-05-03 23:38:10', '41', '2010-02-17 09:59:39', '2', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('27', '1', '29', 'http404', '1035', '2014-05-01 03:42:44', '41', '2010-06-03 06:53:03', '3', '11');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('28', '2', '2', 'access', '13', '2011-05-03 23:38:10', '41', '2011-03-19 19:14:20', '2', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('29', '28', '2', 'users', '29', '2011-04-05 00:39:08', '41', '2011-03-19 19:15:29', '2', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('30', '28', '2', 'roles', '29', '2011-04-05 00:38:39', '41', '2011-03-19 19:15:45', '2', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('31', '28', '2', 'permissions', '29', '2011-04-05 00:53:52', '41', '2011-03-19 19:16:00', '2', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('32', '31', '5', 'page-edit', '25', '2011-09-06 15:34:24', '41', '2011-03-19 19:17:03', '2', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('34', '31', '5', 'page-delete', '25', '2011-09-06 15:34:33', '41', '2011-03-19 19:17:23', '2', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('35', '31', '5', 'page-move', '25', '2011-09-06 15:34:48', '41', '2011-03-19 19:17:41', '2', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('36', '31', '5', 'page-view', '25', '2011-09-06 15:34:14', '41', '2011-03-19 19:17:57', '2', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('37', '30', '4', 'guest', '25', '2011-04-05 01:37:19', '41', '2011-03-19 19:18:41', '2', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('38', '30', '4', 'superuser', '25', '2011-08-17 14:34:39', '41', '2011-03-19 19:18:55', '2', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('41', '29', '3', 'admin', '1', '2015-01-20 19:30:05', '40', '2011-03-19 19:41:26', '2', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('40', '29', '3', 'guest', '25', '2011-08-17 14:26:09', '41', '2011-03-20 17:31:59', '2', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('50', '31', '5', 'page-sort', '25', '2011-09-06 15:34:58', '41', '2011-03-26 22:04:50', '41', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('51', '31', '5', 'page-template', '25', '2011-09-06 15:35:09', '41', '2011-03-26 22:25:31', '41', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('52', '31', '5', 'user-admin', '25', '2011-09-06 15:35:42', '41', '2011-03-30 00:06:47', '41', '10');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('53', '31', '5', 'profile-edit', '1', '2011-08-16 22:32:48', '41', '2011-04-26 00:02:22', '41', '13');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('54', '31', '5', 'page-lock', '1', '2011-08-15 17:48:12', '41', '2011-08-15 17:45:48', '41', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('300', '3', '2', 'search', '1045', '2011-03-29 21:37:06', '41', '2010-08-04 05:23:59', '2', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('301', '3', '2', 'trash', '1047', '2011-03-29 21:37:06', '41', '2010-09-28 05:39:30', '2', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('302', '3', '2', 'link', '1041', '2011-03-29 21:37:06', '41', '2010-10-01 05:03:56', '2', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('303', '3', '2', 'image', '1041', '2011-03-29 21:37:06', '41', '2010-10-13 03:56:48', '2', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('304', '2', '2', 'profile', '1025', '2011-05-03 23:38:10', '41', '2011-04-25 23:57:18', '41', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1007', '1', '29', 'about', '1', '2015-01-20 22:04:41', '41', '2014-04-20 09:40:49', '41', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1008', '1', '43', 'tools', '1025', '2014-04-20 10:28:00', '41', '2014-04-20 10:27:54', '41', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1009', '1008', '44', 'conversion-hero-units', '1', '2014-04-20 10:39:08', '41', '2014-04-20 10:39:08', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1011', '1', '59', 'contact-us', '1', '2014-06-11 01:19:52', '41', '2014-04-20 12:51:07', '41', '7');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1012', '1008', '46', 'conversion-feature-sets', '1', '2014-05-03 23:43:57', '41', '2014-04-20 13:55:59', '41', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1013', '1012', '47', 'take-nice-pictures', '1', '2014-05-01 09:16:00', '41', '2014-04-20 13:58:57', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1014', '1012', '47', 'spread-them-across', '1', '2014-05-01 09:16:22', '41', '2014-04-20 14:00:48', '41', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1015', '1012', '47', 'protect-nature', '1', '2014-05-01 09:17:05', '41', '2014-04-20 14:18:45', '41', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1016', '1008', '48', 'conversion-bottom-navigation', '1', '2014-06-11 00:50:27', '41', '2014-04-20 14:49:31', '41', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1017', '1008', '49', 'conversion-page-blocks', '1', '2014-05-04 01:46:17', '41', '2014-04-20 15:08:27', '41', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1018', '1008', '51', 'references', '1', '2014-05-04 02:32:50', '41', '2014-04-20 19:46:46', '41', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1019', '1018', '52', 'ref-1', '1', '2014-04-20 19:53:38', '41', '2014-04-20 19:52:18', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1022', '1018', '52', 'ref-2', '1', '2014-04-21 07:56:07', '41', '2014-04-21 07:55:00', '41', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1058', '1040', '56', '1402429350-2623-1', '3073', '2014-06-11 01:12:30', '41', '2014-06-11 01:12:30', '41', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1028', '1008', '54', 'conversion-sidebar-blocks', '1', '2014-04-27 10:59:25', '41', '2014-04-27 10:59:25', '41', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1029', '1028', '55', 'go-sri-lanka', '1', '2014-05-02 21:39:14', '41', '2014-04-27 11:00:40', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1030', '1028', '55', 'about-our-self', '1', '2014-06-11 00:55:32', '41', '2014-04-27 11:25:57', '41', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1031', '2', '2', 'repeaters', '1036', '2014-04-30 21:00:27', '41', '2014-04-30 21:00:27', '41', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1032', '1031', '2', 'for-field-122', '17', '2014-04-30 21:00:41', '41', '2014-04-30 21:00:41', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1033', '1032', '2', 'for-page-1', '17', '2014-04-30 21:03:32', '41', '2014-04-30 21:03:32', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1034', '1033', '56', '1398872012-7768-1', '1', '2015-01-20 22:02:17', '41', '2014-04-30 21:03:32', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1035', '1033', '56', '1398872012-811-2', '1', '2015-01-20 22:02:17', '41', '2014-04-30 21:03:32', '41', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1036', '1033', '56', '1398872012-8207-3', '3073', '2014-04-30 21:03:32', '41', '2014-04-30 21:03:32', '41', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1038', '1', '29', 'features', '1', '2014-06-11 02:40:40', '41', '2014-05-01 02:05:42', '41', '5');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1039', '1', '53', 'services', '1', '2014-05-02 22:07:39', '41', '2014-05-01 02:07:00', '41', '6');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1040', '1032', '2', 'for-page-1038', '17', '2014-05-01 03:34:34', '41', '2014-05-01 03:34:34', '41', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1060', '1009', '45', 'home-page-hero-unit', '1', '2014-06-11 04:19:50', '41', '2014-06-11 04:03:31', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1042', '1032', '2', 'for-page-1007', '17', '2014-05-01 03:37:41', '41', '2014-05-01 03:37:41', '41', '2');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1043', '1042', '56', '1398895661-3188-1', '3073', '2014-05-01 03:37:41', '41', '2014-05-01 03:37:41', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1044', '1032', '2', 'for-page-27', '17', '2014-05-01 03:42:28', '41', '2014-05-01 03:42:28', '41', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1045', '1044', '56', '1398895948-5511-1', '3073', '2014-05-01 03:42:28', '41', '2014-05-01 03:42:28', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1046', '1040', '56', '1398898415-062-1', '1', '2014-06-11 02:45:34', '41', '2014-05-01 04:23:35', '41', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1047', '1040', '56', '1398900452-027-1', '1', '2014-06-11 01:16:23', '41', '2014-05-01 04:57:32', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1049', '1031', '2', 'for-field-136', '17', '2014-05-01 10:34:34', '41', '2014-05-01 10:34:34', '41', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1050', '1049', '2', 'for-page-1011', '17', '2014-05-01 10:34:34', '41', '2014-05-01 10:34:34', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1051', '1050', '58', '1398920674-6264-1', '1', '2014-06-11 01:19:52', '41', '2014-05-01 10:34:34', '41', '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1057', '1050', '58', '1400606986-9437-1', '3073', '2014-05-20 22:59:46', '41', '2014-05-20 22:59:46', '41', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1053', '1050', '58', '1398920674-6408-3', '1', '2014-06-11 01:19:52', '41', '2014-05-01 10:34:34', '41', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1054', '1050', '58', '1398920785-6715-1', '3073', '2014-05-01 10:36:25', '41', '2014-05-01 10:36:25', '41', '3');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1055', '1050', '58', '1398921349-8278-1', '3073', '2014-05-01 10:45:49', '41', '2014-05-01 10:45:49', '41', '4');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1056', '1017', '50', 'contact-us-banner', '1', '2014-06-11 00:49:20', '41', '2014-05-02 21:49:53', '41', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1061', '31', '5', 'page-lister', '1', '2015-01-20 19:30:05', '40', '2015-01-20 19:30:05', '40', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1062', '3', '2', 'lister', '1', '2015-01-20 19:30:05', '40', '2015-01-20 19:30:05', '40', '8');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1063', '3', '2', 'recent-pages', '1', '2015-01-20 19:30:12', '40', '2015-01-20 19:30:12', '40', '9');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES('1064', '31', '5', 'page-edit-recent', '1', '2015-01-20 19:30:12', '40', '2015-01-20 19:30:12', '40', '10');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1009', '1', '2014-04-20 10:39:08');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '1', '2014-04-20 12:51:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1007', '1', '2014-04-20 09:40:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1008', '1', '2014-04-20 10:27:54');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1012', '1', '2014-04-20 13:55:59');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '1', '2014-04-20 13:58:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '1', '2014-04-20 14:00:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1015', '1', '2014-04-20 14:18:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '1', '2014-04-20 14:49:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1017', '1', '2014-04-20 15:08:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '1', '2014-04-20 19:46:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1019', '1', '2014-04-20 19:52:18');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1022', '1', '2014-04-21 07:55:00');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1060', '1', '2014-06-11 04:03:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '1', '2014-04-27 10:59:25');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1029', '1', '2014-04-27 11:00:40');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1030', '1', '2014-04-27 11:25:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1034', '2', '2014-04-30 21:03:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1035', '2', '2014-04-30 21:03:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1036', '2', '2014-04-30 21:03:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1038', '1', '2014-05-01 02:05:42');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1039', '1', '2014-05-01 02:07:00');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1058', '2', '2014-06-11 01:12:30');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1043', '2', '2014-05-01 03:37:41');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1045', '2', '2014-05-01 03:42:28');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1046', '2', '2014-05-01 04:23:35');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1047', '2', '2014-05-01 04:57:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1051', '2', '2014-05-01 10:34:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1057', '2', '2014-05-20 22:59:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1053', '2', '2014-05-01 10:34:34');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1054', '2', '2014-05-01 10:36:25');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1055', '2', '2014-05-01 10:45:49');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1056', '1', '2014-05-02 21:49:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1061', '2', '2015-01-20 19:30:05');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1064', '2', '2015-01-20 19:30:12');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('7', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1008', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1009', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1009', '1008');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1012', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1012', '1008');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1017', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1017', '1008');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1018', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1018', '1008');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1028', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1028', '1008');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1031', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1031', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1032', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1032', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1032', '1031');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1033', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1033', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1033', '1031');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1033', '1032');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1040', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1040', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1040', '1031');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1040', '1032');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1042', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1042', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1042', '1031');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1042', '1032');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1044', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1044', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1044', '1031');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1044', '1032');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1049', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1049', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1049', '1031');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1050', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1050', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1050', '1031');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1050', '1049');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"modified\":1421761897}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"pageLabelField\":\"icon-home title\",\"label\":\"Home page\",\"modified\":1421761897,\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"pageLabelField\":\"icon-file-text-o title\",\"label\":\"Basic page\",\"modified\":1421761897}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'tools', '97', '0', '0', '{\"noParents\":1,\"childTemplates\":[44,46,48,49,51,54],\"slashUrls\":1,\"pageLabelField\":\"icon-cogs title\",\"label\":\"Tools\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'conversion-hero-units', '98', '0', '0', '{\"noParents\":1,\"childTemplates\":[45],\"slashUrls\":1,\"pageLabelField\":\"icon-bars title\",\"label\":\"Hero units\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'conversion-hero-unit', '99', '0', '0', '{\"childTemplates\":[45],\"parentTemplates\":[44],\"slashUrls\":1,\"pageLabelField\":\"icon-picture-o title\",\"noShortcut\":1,\"label\":\"Hero unit\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'conversion-features', '100', '0', '0', '{\"noParents\":1,\"childTemplates\":[47],\"slashUrls\":1,\"pageLabelField\":\"icon-flag title\",\"label\":\"Feature\\/Service set\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'conversion-feature', '101', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[46],\"slashUrls\":1,\"pageLabelField\":\"icon-flag-o title\",\"noShortcut\":1,\"label\":\"Feature\\/Service item\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('57', 'contact-form', '111', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"label\":\"Contact form\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'bottom-navigation', '102', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageLabelField\":\"icon-hand-o-down title\",\"label\":\"Bottom navigation\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'conversion-page-blocks', '103', '0', '0', '{\"noParents\":1,\"childTemplates\":[50],\"slashUrls\":1,\"pageLabelField\":\"icon-th-large title\",\"label\":\"Common page blocks\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'conversion-page-block', '104', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[49],\"slashUrls\":1,\"pageLabelField\":\"icon-paperclip title\",\"noShortcut\":1,\"label\":\"Common page block\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'client-references-index', '105', '0', '0', '{\"noParents\":1,\"childTemplates\":[52],\"slashUrls\":1,\"pageLabelField\":\"icon-comments title\",\"label\":\"Client reference parent\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'client-reference', '106', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[51],\"slashUrls\":1,\"pageLabelField\":\"icon-comment title\",\"noShortcut\":1,\"label\":\"Client reference child\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('53', 'basic-page-two-columns', '107', '0', '0', '{\"slashUrls\":1,\"pageLabelField\":\"icon-columns title\",\"label\":\"Basic Page with Sidebar items\",\"modified\":1421761897}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('54', 'conversion-sidebar-blocks', '108', '0', '0', '{\"noParents\":1,\"childTemplates\":[55],\"slashUrls\":1,\"pageLabelField\":\"icon-indent title\",\"label\":\"Side Bar Index\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('55', 'conversion-sidebar-block', '109', '0', '0', '{\"noChildren\":1,\"parentTemplates\":[54],\"slashUrls\":1,\"pageLabelField\":\"icon-th-list title\",\"noShortcut\":1,\"label\":\"Sidebar item\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('56', 'repeater_on_page_blocks', '110', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('58', 'repeater_maps', '112', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('59', 'contact-index', '113', '0', '0', '{\"slashUrls\":1,\"altFilename\":\"contact\",\"pageLabelField\":\"icon-map-marker title\",\"label\":\"Contact us page\",\"modified\":1421761897}');

DROP TABLE IF EXISTS `textformatter_video_embed`;
CREATE TABLE `textformatter_video_embed` (
  `video_id` varchar(128) NOT NULL,
  `embed_code` varchar(1024) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `textformatter_video_embed` (`video_id`, `embed_code`, `created`) VALUES('18280328', '<iframe src=\"//player.vimeo.com/video/18280328\" width=\"640\" height=\"360\" frameborder=\"0\" title=\"UNDERCITY\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', '2014-04-27 09:28:54');
INSERT INTO `textformatter_video_embed` (`video_id`, `embed_code`, `created`) VALUES('55169240', '<iframe src=\"//player.vimeo.com/video/55169240\" width=\"640\" height=\"360\" frameborder=\"0\" title=\"We Go Sri Lanka 2012\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>', '2014-04-27 10:51:43');
INSERT INTO `textformatter_video_embed` (`video_id`, `embed_code`, `created`) VALUES('Wl4XiYadV_k', '<iframe width=\"640\" height=\"360\" src=\"http://www.youtube.com/embed/Wl4XiYadV_k?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>', '2014-04-27 09:26:17');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

--- /WireDatabaseBackup {"numTables":45,"numCreateTables":51,"numInserts":636,"numSeconds":0}