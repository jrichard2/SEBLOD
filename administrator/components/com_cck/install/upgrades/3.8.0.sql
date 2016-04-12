
ALTER TABLE `#__cck_core_sites` ADD `access` INT(10) UNSIGNED NOT NULL DEFAULT '1' AFTER `checked_out_time`;
ALTER TABLE `#__cck_core_sites` ADD `created_date` DATETIME NOT NULL AFTER `access`;
ALTER TABLE `#__cck_core_sites` ADD `created_user_id` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `created_date`;

UPDATE `#__cck_core_fields` SET `bool3` = '1' WHERE `type` = "jform_tag";
UPDATE `#__cck_core_fields` SET `selectlabel` = 'None', `options` = 'Auto=-1||Component=component||Raw=raw' WHERE `id` = 230;

UPDATE `#__cck_core_fields` SET `options` = 'Joomla=optgroup||Activation=activation||Block=block||Checkbox=selection||Checkbox Label For=selection_label||Featured=featured||Increment=increment||Reordering=sort||Status=state||SEBLOD=optgroup||Form=form||Hidden=form_hidden||Form Disabled=form_disabled' WHERE `id` = 271;
UPDATE `#__cck_core_fields` SET `options` = REPLACE( `options`, 'Task Cancel=cancel||', 'Task Cancel=cancel||Task Reset=reset||Task Reset and Search=reset2save||' ) WHERE `id` = 486;

INSERT IGNORE INTO `#__cck_core_fields` (`id`, `title`, `name`, `folder`, `type`, `description`, `published`, `label`, `selectlabel`, `display`, `required`, `validation`, `defaultvalue`, `options`, `options2`, `minlength`, `maxlength`, `size`, `cols`, `rows`, `ordering`, `sorting`, `divider`, `bool`, `location`, `extended`, `style`, `script`, `bool2`, `bool3`, `bool4`, `bool5`, `bool6`, `bool7`, `bool8`, `css`, `attributes`, `storage`, `storage_cck`, `storage_location`, `storage_table`, `storage_field`, `storage_field2`, `storage_params`, `storages`, `checked_out`, `checked_out_time`) VALUES
(542, 'Core List Display Alt', 'core_list_display_alt', 3, 'select_simple', '', 0, 'Display Alt', ' ', 3, '', '', '0', 'Yes=1||No=0', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'display_alt', '', '', '', 0, '0000-00-00 00:00:00');

INSERT INTO `#__cck_more_processings` (`id`, `title`, `name`, `folder`, `type`, `description`, `options`, `ordering`, `published`, `scriptfile`, `checked_out`, `checked_out_time`) VALUES
(1, 'Customize (Store)', 'customize', 3, 'onCckPostBeforeStore', '', '{"output":"","output_path":"tmp\\/","output_extension":"txt","output_filename_date":"","content_types":"seb_site","manager":{"email":"seb_site_manager_email","password":"seb_site_manager_password","username":"","name":"seb_site_manager_name","first_name":"seb_site_manager_first_name","last_name":"seb_site_manager_last_name","bridge":"0","force_password":"0","set_author":"1"},"type":"6"}', 0, 1, '/media/cck/processings/sites/customize/customize.php', 0, '0000-00-00 00:00:00'),
(2, 'Complete', 'complete', 3, 'onCckConstructionBeforeSave', '', '{"output":"","output_path":"tmp\\/","output_extension":"txt","output_filename_date":""}', 0, 1, '/media/cck/processings/sites/complete/complete.php', 0, '0000-00-00 00:00:00'),
(3, 'Customize (Import)', 'customize', 3, 'onCckPostBeforeImport', '', '{"output":"","output_path":"tmp\\/","output_extension":"txt","output_filename_date":"","content_types":"seb_site","manager":{"email":"seb_site_manager_email","password":"seb_site_manager_password","username":"","name":"seb_site_manager_name","first_name":"seb_site_manager_first_name","last_name":"seb_site_manager_last_name","bridge":"0","force_password":"0","set_author":"1"},"type":"6"}', 0, 1, '/media/cck/processings/sites/customize/customize.php', 0, '0000-00-00 00:00:00');

UPDATE `#__cck_core_fields` SET `options2` = '{"preparecontent":"","prepareform":"$class = (JCck::on()) ? ''icon-lock '' : ''''; $value = $field->defaultvalue;\\r\\nif ( $value == ''0'' ) {\\r\\n $c0 = ''checked=\\"checked\\"''; $c1 = ''''; $class .= ''unlinked'';\\r\\n} else {\\r\\n $c0 = ''''; $c1 = ''checked=\\"checked\\"''; $class .= ''linked'';\\r\\n}\\r\\n$desc = JText::_( ''COM_CCK_STORAGE_DESC_SHORT'' );\\r\\n$form = ''<input type=\\"radio\\" id=\\"''.$name.''0\\" name=\\"''.$name.''\\" value=\\"0\\" ''.$c0\\r\\n      . '' style=\\"display:none;\\" \\/>''\\r\\n      . ''<input type=\\"radio\\" id=\\"''.$name.''1\\" name=\\"''.$name.''\\" value=\\"1\\" ''.$c1\\r\\n      . '' style=\\"display:none;\\" \\/>''\\r\\n      . ''<a href=\\"javascript: void(0);\\" id=\\"''.$name.''\\" class=\\"switch qtip_cck\\" title=\\"''\\r\\n      . $desc.''\\">''\\r\\n      . ''<span class=\\"''.$name.'' ''.$class.''\\">''\\r\\n      . ''<\\/span>''\\r\\n      . ''<\\/a>'';","preparestore":""}' WHERE `id` = 106;

UPDATE `#__cck_core_fields` SET `attributes` = REPLACE( `attributes`, 'JCck.Dev.', 'JCck.DevHelper.' ) WHERE `id` IN (56,454);
UPDATE `#__cck_core_fields` SET `script` = REPLACE( `script`, 'JCck.Dev.', 'JCck.DevHelper.' ) WHERE `id` IN (38,39);

UPDATE `#__cck_core_fields` SET `options` = REPLACE( `options`, 'file-add', 'file-add||file-check||file-minus||file-plus' ) WHERE `id` = 289;

INSERT IGNORE INTO `#__cck_core_fields` (`id`, `title`, `name`, `folder`, `type`, `description`, `published`, `label`, `selectlabel`, `display`, `required`, `validation`, `defaultvalue`, `options`, `options2`, `minlength`, `maxlength`, `size`, `cols`, `rows`, `ordering`, `sorting`, `divider`, `bool`, `location`, `extended`, `style`, `script`, `bool2`, `bool3`, `bool4`, `bool5`, `bool6`, `bool7`, `bool8`, `css`, `attributes`, `storage`, `storage_cck`, `storage_location`, `storage_table`, `storage_field`, `storage_field2`, `storage_params`, `storages`, `checked_out`, `checked_out_time`) VALUES
(584, 'Icon File Plus', 'icon_file_plus', 3, 'icon', '', 1, 'Add', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'file-plus', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'icon_file_add', '', '', '', 0, '0000-00-00 00:00:00'),
(585, 'Icon File Check', 'icon_file_check', 3, 'icon', '', 1, 'Select', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'file-check', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'icon_file_check', '', '', '', 0, '0000-00-00 00:00:00'),
(586, 'Icon File Remove', 'icon_file_remove', 3, 'icon', '', 1, 'Remove', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'file-remove', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'icon_file_remove', '', '', '', 0, '0000-00-00 00:00:00'),
(587, 'Icon File Minus', 'icon_file_minus', 3, 'icon', '', 1, 'Remove', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, 'file-minus', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'icon_file_minus', '', '', '', 0, '0000-00-00 00:00:00'),
(588, 'Button Grp (Form) Div Start', 'button_grp_form_div_start', 3, 'div', '', 1, '', '', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'button_grp_form_div_start', '', '', '', 0, '0000-00-00 00:00:00'),
(589, 'Button Grp (Form) Div End', 'button_grp_form_div_end', 3, 'div', '', 1, '', '', 1, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 2, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'none', '', '', '', 'button_grp_form_div_end', '', '', '', 0, '0000-00-00 00:00:00');

UPDATE `#__extensions` SET `enabled` = '1' WHERE `folder` = 'cck_field' AND `element` IN ('button_free','search_generic','search_ordering');
UPDATE `#__extensions` SET `enabled` = '1' WHERE `folder` = 'cck_field_typo' AND `element` IN ('joomla_jgrid');

ALTER IGNORE TABLE `#__cck_store_item_users` ADD `company` VARCHAR( 255 ) NOT NULL AFTER `birthplace`;
ALTER IGNORE TABLE `#__cck_store_item_users` ADD `company_vat_id` VARCHAR( 255 ) NOT NULL AFTER  `company`;

INSERT IGNORE INTO `#__cck_core_fields` (`id`, `title`, `name`, `folder`, `type`, `description`, `published`, `label`, `selectlabel`, `display`, `required`, `validation`, `defaultvalue`, `options`, `options2`, `minlength`, `maxlength`, `size`, `cols`, `rows`, `ordering`, `sorting`, `divider`, `bool`, `location`, `extended`, `style`, `script`, `bool2`, `bool3`, `bool4`, `bool5`, `bool6`, `bool7`, `bool8`, `css`, `attributes`, `storage`, `storage_cck`, `storage_location`, `storage_table`, `storage_field`, `storage_field2`, `storage_params`, `storages`, `checked_out`, `checked_out_time`) VALUES
(543, 'User Company', 'user_company', 29, 'text', '', 1, 'Company', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'company', '', '', '', 0, '0000-00-00 00:00:00'),
(544, 'User Company VAT ID', 'user_company_vat_id', 29, 'text', '', 1, 'VAT ID', '', 3, '', '', '', '', '', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'standard', '', 'joomla_user', '#__cck_store_item_users', 'company_vat_id', '', '', '', 0, '0000-00-00 00:00:00');

ALTER TABLE `#__cck_core` CHANGE `id` `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `#__cck_core` CHANGE `pk` `pk` INT(10) UNSIGNED NOT NULL;
ALTER TABLE `#__cck_core` CHANGE `pkb` `pkb` INT(10) UNSIGNED NOT NULL;
ALTER TABLE `#__cck_core` CHANGE `parent_id` `parent_id` INT(10) UNSIGNED NOT NULL;
ALTER TABLE `#__cck_core_fields` CHANGE `id` `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `#__cck_core_search_field` CHANGE `fieldid` `fieldid` INT(10) UNSIGNED NOT NULL;
ALTER TABLE `#__cck_core_search_field` CHANGE `access` `access` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'search,list,item';
ALTER TABLE `#__cck_core_type_field` CHANGE `fieldid` `fieldid` INT(10) UNSIGNED NOT NULL;
ALTER TABLE `#__cck_core_type_field` CHANGE `access` `access` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'admin,site,intro,content';