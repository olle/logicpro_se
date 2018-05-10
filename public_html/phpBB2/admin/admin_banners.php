<?php

/****************************************************************
 * Script name: admin_banners.php
 *
 * The admin module for banner management, custom built for the
 * logicpro.se forum site.
 *
 * Author: olle@studiomediatech.com
 * Created: 2004-11-27
 ****************************************************************/
 
define('IN_PHPBB', 1);

if (!empty($setmodules)) {
	$filename = basename(__FILE__);
	$module['Banners']['Install'] = "$filename?action=install";	
	$module['Banners']['Stats'] = "$filename?action=stats";
	$module['Banners']['Manage_Banners'] = "$filename?action=banners";
	$module['Banners']['Manage_Clients'] = "$filename?action=clients"; 
	return;
}

// Load default header 
$phpbb_root_path = './../';
$phpbb_ads_path = $phpbb_root_path . 'ads/';
require($phpbb_root_path . 'extension.inc'); 
require('./pagestart.' . $phpEx); 

// Action setting
if (isset($HTTP_POST_VARS['action']) || isset($HTTP_GET_VARS['action'])) {
	$action = isset($HTTP_POST_VARS['action']) ? $HTTP_POST_VARS['action'] : $HTTP_GET_VARS['action'];
	$action = htmlspecialchars($action);
} else {
	$action = "";
}

/////////////////// HANDLE ACTIONS ////////////////////////////////////////////

switch ($action) {	
	case "install": /////////////////////////////////////////////////// INSTALL

		$sql = "CREATE TABLE " . ADS_CLIENT_TABLE .
			"(id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY(id),
			  name VARCHAR(80),
			  contact VARCHAR(80),
			  email VARCHAR(160),
			  phone VARCHAR(80),
			  mobile VARCHAR(80), 
			  info TEXT);";
		
		if (!($result = $db->sql_query($sql))) {
			message_die(GENERAL_ERROR, 'Error installing banner system', '', __LINE__, __FILE__, $sql);
		}
		
		$sql = "INSERT INTO " . ADS_CLIENT_TABLE . "
			VALUES(NULL, 'Logicpro.se', '', '', '', '', '');";

		if (!($result = $db->sql_query($sql))) {
			message_die(GENERAL_ERROR, 'Error installing banner system', '', __LINE__, __FILE__, $sql);
		}	
		
		$sql = "CREATE TABLE " . ADS_BANNER_TABLE . "
			(id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY(id),
			status ENUM('ok', 'expired'),
			title VARCHAR(80),
			url VARCHAR(160) NOT NULL,
			image_url VARCHAR(160) NOT NULL,
			alt_text TEXT,
			banner_group VARCHAR(80),
			client_id INT NOT NULL,
			width CHAR(5),
			height CHAR(5),
			expiration_date DATE,
			expiration_displays INT UNSIGNED,
			expiration_clicks INT UNSIGNED,
			displays_life BIGINT UNSIGNED NOT NULL,
			displays_day INT UNSIGNED NOT NULL,
			clicks_life BIGINT UNSIGNED NOT NULL,
			clicks_day INT UNSIGNED NOT NULL);";

		if (!($result = $db->sql_query($sql))) {
			message_die(GENERAL_ERROR, 'Error installing banner system', '', __LINE__, __FILE__, $sql);
		}
		
		$message = 'Bannersystem är installerat.<br><br> Klicka <a href="' . append_sid("admin_banners.php?action=banners&do=show") . '">här</a> för att komma till bannerhanteringen.';	
		message_die(GENERAL_MESSAGE, $message);		
		break;
		
	case "stats": //////////////////////////////////////////// STATUS & DEFAULT
	default:

		$sort = isset($HTTP_POST_VARS['sort']) ? $HTTP_POST_VARS['sort'] : $HTTP_GET_VARS['sort'];
		if (!$sort || $sort == '') {
			$sort = 'b.name';
		}
		
		$sql = "SELECT a.id, a.title, a.url, a.displays_life, a.displays_day, a.clicks_life, a.clicks_day, a.banner_group, a.expiration_date, a.expiration_clicks, a.expiration_displays, b.name
            FROM " . ADS_BANNER_TABLE . " as a, " 
            	   . ADS_CLIENT_TABLE . " as b
            WHERE (b.id = a.client_id AND a.status = 'ok')
            ORDER BY $sort;";
		
		if (!($result = $db->sql_query($sql))) {
			message_die(GENERAL_ERROR, 'Error getting banner information', '', __LINE__, __FILE__, $sql);
		}
		
		while ($ad = $db->sql_fetchrow($result)) {
			$template->assign_block_vars ('banner_list', array(
					'BANNER_ID' => $ad['id'],
					'BANNER' => $ad['title'],
					'CLIENT' => $ad['name'],
					'TOTAL_EXP' => $ad['displays_life'],
					'EXPIRATION_CLICKS' => $ad['expiration_clicks'] == '' ? 0 : $ad['expiration_clicks'],
					'TOTAL_CLICKS' => $ad['clicks_life'],
					'EXP_TODAY' => $ad['displays_day'],
					'EXPIRATION_DISPLAYS' => $ad['expiration_displays'] == '' ? 0 : $ad['expiration_displays'],
					'CLICKS_TODAY' => $ad['clicks_day'],
					'BANNER_GROUP' => $ad['banner_group'] == '' ? '[ingen]' : $ad['banner_group'],
					'EXPIRATION_DATE' => $ad['expiration_date'] == '0000-00-00' ? '[inget]' : create_date($board_config['default_dateformat'], strtotime($ad['expiration_date']), $board_config['board_timezone']))
				);
		}
		
		$template->assign_vars(array(
				'L_BANNER_SORT' => append_sid('admin_banners.php?action=stats&sort=a.title'),
				'L_CLIENT_SORT' => append_sid('admin_banners.php?action=stats&sort=b.name'),
				'L_GROUP_SORT' => append_sid('admin_banners.php?action=stats&sort=a.banner_group'),
				'L_EXPIRATION' => append_sid('admin_banners.php?action=stats&sort=a.expiration_date'),
				'L_DISPLAYS_SORT' => append_sid('admin_banners.php?action=stats&sort=a.displays_life'),
				'L_CLICKS_SORT' => append_sid('admin_banners.php?action=stats&sort=a.clicks_life'))
			);

		$template->set_filenames(array('stats' => 'admin/ads_stats.tpl'));			
		$template->pparse('stats');		
		break;
		
	case "banners": //////////////////////////////////////////// MANAGE BANNERS
	
		$do = isset($HTTP_POST_VARS['do']) ? $HTTP_POST_VARS['do'] : $HTTP_GET_VARS['do'];
		if (!$do || $do == '') {
			$do = 'show';
		}
		
		$s = isset($HTTP_POST_VARS['s']) ? $HTTP_POST_VARS['s'] : $HTTP_GET_VARS['s'];
		if (!$s || $s == '') {
			$s = 'no';
		}
		
		$sort = isset($HTTP_POST_VARS['sort']) ? $HTTP_POST_VARS['sort'] : $HTTP_GET_VARS['sort'];	
		if (!$sort || $sort == '') {
			$sort = 'b.name';
		}

		$id = isset($HTTP_POST_VARS['id']) ? $HTTP_POST_VARS['id'] : $HTTP_GET_VARS['id'];

		if ($do == 'show') { ///////////////////////////////////////////// SHOW

			$sql = "SELECT a.id, a.title, a.status, a.url, a.banner_group, a.image_url, a.alt_text, a.expiration_date, b.name
				FROM " . ADS_BANNER_TABLE . " as a, " . ADS_CLIENT_TABLE . " as b
				WHERE b.id = a.client_id
				ORDER BY $sort;";
				
			if (!($result = $db->sql_query($sql))) {
				message_die(GENERAL_ERROR, 'Error getting banner information', '', __LINE__, __FILE__, $sql);
			}
	
			while ($ad = $db->sql_fetchrow($result)) {
				
				if ($ad['alt_text'] != '') {
					$banner_image = '<div style="border: 1px solid #000000; background-color: #FFFFFF; margin-top: 2px; padding: 4px;">' . $ad['alt_text'] . '</div>';
				} else {
					$banner_image = '<a href="' . $ad['url'] . '" target="_new"><img src="' . $phpbb_root_path . $ad['image_url'] . '" border="0"></a>';
				}
								
				$banner_id = $ad['status'] == 'ok' ? $ad['id'] : '<span style="color: #FF0000">' . $ad['id'] . '</span>';						
											
				$template->assign_block_vars ('banner_list', array(
						'BANNER' => $ad['title'],
						'BANNER_IMAGE' => $banner_image,
						'BANNER_URL' => $ad['url'],
						'BANNER_ID' => $banner_id,
						'CLIENT' => $ad['name'],
						'BANNER_GROUP' => $ad['banner_group'] == '' ? '[ingen]' : $ad['banner_group'],
						'EXPIRATION_DATE' => $ad['expiration_date'] == '0000-00-00' ? '[inget]' : create_date($board_config['default_dateformat'], strtotime($ad['expiration_date']), $board_config['board_timezone']),
						'L_DELETE_BANNER' => append_sid('admin_banners.php?action=banners&do=del&id=' . $ad['id']),
						'L_EXPIRE_BANNER' => append_sid('admin_banners.php?action=banners&do=exp&id=' . $ad['id']),
						'L_UNEXPIRE_BANNER' => append_sid('admin_banners.php?action=banners&do=unexp&id=' . $ad['id']),
						'L_EDIT_BANNER' => append_sid('admin_banners.php?action=banners&do=edit&id=' . $ad['id']))
					);
					
				if ($s == 'yes') {
					$template->assign_block_vars('banner_list.switch_show_image', array());
				}
			}
				
			$template->assign_vars(array(
				'L_ADD_BANNER'	=> append_sid('admin_banners.php?action=banners&do=add'),
				'L_SHOW_IMAGES'	=> append_sid('admin_banners.php?action=banners&do=show&sort=' . $sort . '&s=yes'),
				'L_HIDE_IMAGES' => append_sid('admin_banners.php?action=banners&do=show&sort=' . $sort . '&s=no'),
				'L_BANNER_SORT' => append_sid('admin_banners.php?action=banners&do=show&sort=a.title&s=' . $s),
				'L_GROUP_SORT'	=> append_sid('admin_banners.php?action=banners&do=show&sort=a.banner_group&s=' . $s),
				'L_EXPIRATION'	=> append_sid('admin_banners.php?action=banners&do=show&sort=a.expiration_date&s=' . $s),
				'L_CLIENT_SORT'	=> append_sid('admin_banners.php?action=banners&do=show&sort=b.name&s=' . $s))
				);

			$template->set_filenames(array('banners' => 'admin/ads_banners.tpl'));
			$template->pparse('banners');
			
		} else if ($do == 'edit' || $do == 'add') { //////////////// ADD & EDIT

			if ($do == 'add') { /////////////////////////////////////////// ADD
				
				$sql = "INSERT INTO " . ADS_BANNER_TABLE . "  
					VALUES(NULL, 'ok', '', '', '', '', '', 1, '', '', '', NULL, NULL, 0, 0, 0, 0);";
				if (!($result = $db->sql_query($sql))) {
					message_die(GENERAL_ERROR, 'Error creating banner', '', __LINE__, __FILE__, $sql);
				}
				
				$sql = "SELECT MAX(id) AS id
					FROM " . ADS_BANNER_TABLE;
				if (!($result = $db->sql_query($sql))) {
					message_die(GENERAL_ERROR, 'Error fetching banner id', '', __LINE__, __FILE__, $sql);
				}
				if (!($banner = $db->sql_fetchrow($result))) {
					message_die(GENERAL_ERROR, 'Unable to find banner data', '', __LINE__, __FILE__, $sql);
				}				
				$id = $banner['id'];
			}				
			
			////////////////////////////////////////////////////////////// EDIT
				
			$sql = "SELECT id, title, url, image_url, alt_text, client_id, banner_group, width, height,
				expiration_date, expiration_displays, expiration_clicks
				FROM " . ADS_BANNER_TABLE . "
				WHERE id = $id";

			if (!($result = $db->sql_query($sql))) {
				message_die(GENERAL_ERROR, 'Error getting banner data', '', __LINE__, __FILE__, $sql);
			}

			if (!($banner = $db->sql_fetchrow($result))) {
				message_die(GENERAL_ERROR, 'Unable to find banner data', '', __LINE__, __FILE__, $sql);
			} else {				
				$template->assign_vars(array(
						'ID' => $banner['id'],
						'TITLE' => $banner['title'],
						'URL' => $banner['url'],
						'IMAGE_URL' => $banner['image_url'],
						'ALT_TEXT' => $banner['alt_text'],
						'BANNER_GROUP' => $banner['banner_group'],
						'WIDTH' => $banner['width'],
						'HEIGHT' => $banner['height'],
						'EXPIRATION_DATE' => $banner['expiration_date'],
						'EXPIRATION_DISPLAYS' => $banner['expiration_displays'],
						'EXPIRATION_CLICKS' => $banner['expiration_clicks'])
					);
			}				
			
			$sql = "SELECT id, name
				FROM " . ADS_CLIENT_TABLE . "
				ORDER BY name;";
				
			if (!($result = $db->sql_query($sql))) {
				message_die(GENERAL_ERROR, 'Error getting client list', '', __LINE__, __FILE__, $sql);
			}
	
			$client_select = '<select name="client_id">';
			
			while ($client = $db->sql_fetchrow($result)) {
				if ($banner['client_id'] == $client['id']) {
					$client_select .= '<option value="' . $client['id'] . '" selected>' . $client['name'] . '</option>';		
				} else {
					$client_select .= '<option value="' . $client['id'] . '">' . $client['name'] . '</option>';
				}
			}
			
			$file_list = '<span style="font-family: Courier; font-size: 11px;">';
			$dir = @opendir(phpbb_realpath($phpbb_ads_path));
			while ($file = @readdir($dir)) {
				if ($file != '.' && $file != '..' && $file != '.DS_Store') {
					$file_list .= $file . '<br>';
				}
			}
			@closedir($dir);			
			
			$template->assign_vars(array(
					'FILE_LIST' => $file_list,
					'CLIENT_ID' => $client_select,
					'L_FORM_ACTION' => append_sid('admin_banners.php?action=banners&do=save'))
				);

			$template->set_filenames(array('edit_banner' => 'admin/ads_edit_banner.tpl'));
			$template->pparse('edit_banner');
				
		} else if ($do == 'del') { ///////////////////////////////////// DELETE
	
			$sql = "DELETE FROM " . ADS_BANNER_TABLE . " WHERE id = $id";
			
			if (!($result = $db->sql_query($sql))) {
				
				message_die(GENERAL_ERROR, 'Error removing banner', '', __LINE__, __FILE__, $sql);
				
			} else {
				
				$message = 'Bannern är raderad.<br><br> Klicka <a href="' . append_sid("admin_banners.php?action=banners&do=show") . '">här</a> för att komma tillbaka till bannerhanteringen.';	
				message_die(GENERAL_MESSAGE, $message);
				
			}
			
		} else if ($do == 'exp') { ///////////////////////////////////// EXPIRE

			$sql = "UPDATE " . ADS_BANNER_TABLE . "
				SET status = 'expired'
				WHERE id = $id";
				
			if (!($result = $db->sql_query($sql))) {
				
				message_die(GENERAL_ERROR, 'Error expiring banner', '', __LINE__, __FILE__, $sql);
				
			} else {
				
				$message = 'Bannern är avaktiverad.<br><br> Klicka <a href="' . append_sid("admin_banners.php?action=banners&do=show") . '">här</a> för att komma tillbaka till bannerhanteringen.';	
				message_die(GENERAL_MESSAGE, $message);
				
			}
			
		} else if ($do == 'unexp') { //////////////////////////////// UN-EXPIRE

			$sql = "UPDATE " . ADS_BANNER_TABLE . "
				SET status = 'ok', displays_life = 0, displays_day = 0, clicks_life = 0, clicks_day = 0
				WHERE id = $id";
				
			if (!($result = $db->sql_query($sql))) {
				
				message_die(GENERAL_ERROR, 'Error un-expiring banner', '', __LINE__, __FILE__, $sql);
				
			} else {
				
				$message = 'Bannern är återaktiverad.<br><br> Klicka <a href="' . append_sid("admin_banners.php?action=banners&do=show") . '">här</a> för att komma tillbaka till bannerhanteringen.';	
				message_die(GENERAL_MESSAGE, $message);
				
			}
			
		} else if ($do == 'save') { ///////////////////////////////// SAVE DATA

			// Save posted file if any
			if ($HTTP_POST_FILES['file_data']['name'] != '') {
				
				$dest_dir = phpbb_realpath($phpbb_ads_path) . '/';
 				$file = $HTTP_POST_FILES['file_data'];

				if (!isset($file['type'])) {
 					$file['type'] = '';
				}
				
 				if (!isset($file['size'])) {
 					$file['size'] = '';
 				}
 				
 				if (!isset($file['tmp_name'])) {
 					$file['tmp_name'] = '';
 				}

				$file['name'] = preg_replace('/[^a-zA-Z0-9\.\$\%\'\`\-\@\{\}\~\!\#\(\)\&\_\^]/', '', str_replace(array(' ','%20'), array('_', '_'), $file['name']));
				
				$i = 0;
				//if the filename already exists, append _copy_x (with extension)
 				if (strpos($file['name'], '.') != false) {
					$bits = explode('.', $file['name']);
					$ext  = array_pop($bits);
 
 					while (file_exists($dest_dir . implode('.', $bits) . ($i ? '_copy_' . $i : '') . '.' . $ext)) {
 						++$i;
 						$file['name'] = implode('.', $bits) . ($i ? '_copy_' . $i : '') . '.' . $ext;
 					}
 
 				//if the filename already exists, append _copy_x (no extension)
 				} else {
 					while (file_exists($destDir.$file['name'].($i ?'_copy_'.$i:''))) {
 						++$i;
 						$file['name'] = $file['name'].($i?'_copy_'.$i:'');
 					}
 				}
 				
 				if (!@copy($file['tmp_name'], $dest_dir . $file['name'])) {
 					$message = 'The target ' . $dest_dir . $file['name'] . ' could not be saved.';
					message_die(GENERAL_ERROR, 'Error saving file data', '', __LINE__, __FILE__, $message);
				}
								
				@unlink($file['tmp_name']);
			}

			$id				= $HTTP_POST_VARS['id'];		
			$title 			= $HTTP_POST_VARS['title'];
			$url 			= $HTTP_POST_VARS['url'];
			$image_url 		= $HTTP_POST_VARS['image_url'];
			$alt_text		= $HTTP_POST_VARS['alt_text'];
			$banner_group	= $HTTP_POST_VARS['banner_group'];
			$client_id		= isset($HTTP_POST_VARS['client_id']) ? $HTTP_POST_VARS['client_id'] : 1;
			$width			= isset($HTTP_POST_VARS['width']) ? $HTTP_POST_VARS['width'] : '';
			$height			= isset($HTTP_POST_VARS['height']) ? $HTTP_POST_VARS['height'] : '';
			$expiration_date 	 = isset($HTTP_POST_VARS['expiration_date']) ? $HTTP_POST_VARS['expiration_date'] : '0000-00-00';
			$expiration_displays = isset($HTTP_POST_VARS['expiration_displays']) ? $HTTP_POST_VARS['expiration_displays'] : 'NULL';
			$expiration_displays = $expiration_displays == '' ? 'NULL' : $expiration_displays;
			$expiration_clicks 	 = isset($HTTP_POST_VARS['expiration_clicks']) ? $HTTP_POST_VARS['expiration_clicks'] : 'NULL';
			$expiration_clicks   = $expiration_clicks == '' ? 'NULL' : $expiration_clicks;
	
			$sql = "UPDATE " . ADS_BANNER_TABLE . "
				SET status = 'ok',
				title='$title',
				url='$url',
				image_url='$image_url',
				alt_text='$alt_text',
				banner_group='$banner_group',
				client_id=$client_id,
				width='$width',
				height='$height',
				expiration_date = '$expiration_date',
				expiration_displays = $expiration_displays,
				expiration_clicks = $expiration_clicks
				WHERE id = $id;";
					
			if (!($result = $db->sql_query($sql))) {
				message_die(GENERAL_ERROR, 'Error saving banner data', '', __LINE__, __FILE__, $sql);
			} else {

				$message = 'Bannern är uppdaterad.<br><br> Klicka <a href="' . append_sid("admin_banners.php?action=banners&do=show") . '">här</a> för att komma tillbaka till bannerhanteringen.';	
				message_die(GENERAL_MESSAGE, $message);
			}
		}
		break;
		
	case "clients": ////////////////////////////////////////////////// KLIENTER

		$do = isset($HTTP_POST_VARS['do']) ? $HTTP_POST_VARS['do'] : $HTTP_GET_VARS['do'];
		if (!$do || $do == '') {
			$do = 'show';
		}

		$s = isset($HTTP_POST_VARS['s']) ? $HTTP_POST_VARS['s'] : $HTTP_GET_VARS['s'];
		if (!$s || $s == '') {
			$s = 'no';
		}
		
		$sort = isset($HTTP_POST_VARS['sort']) ? $HTTP_POST_VARS['sort'] : $HTTP_GET_VARS['sort'];	
		if (!$sort || $sort == '') {
			$sort = 'name';
		}

		$id = isset($HTTP_POST_VARS['id']) ? $HTTP_POST_VARS['id'] : $HTTP_GET_VARS['id'];

		if ($do == 'show') { ///////////////////////////////////////////// SHOW
		
			$sql = "SELECT id, name, contact, email, phone, mobile, info
				FROM " . ADS_CLIENT_TABLE . "
				ORDER BY $sort;";

			if (!($result = $db->sql_query($sql))) {
				message_die(GENERAL_ERROR, 'Error getting client information', '', __LINE__, __FILE__, $sql);
			}
	
			while ($client = $db->sql_fetchrow($result)) {
				
				$sql = "SELECT COUNT(id) AS banner_count
					FROM " . ADS_BANNER_TABLE . "
					WHERE client_id = " . $client['id'];

				if (!($result_next = $db->sql_query($sql))) {
					message_die(GENERAL_ERROR, 'Error getting information', '', __LINE__, __FILE__, $sql);
				}
				
				$client_banner = $db->sql_fetchrow($result_next);
				
				$template->assign_block_vars ('client_list', array(
						'ID' => $client['id'],
						'CONTACT' => $client['contact'],
						'NAME' => $client['name'],
						'EMAIL' => $client['email'],
						'PHONE' => $client['phone'],
						'MOBILE' => $client['mobile'],
						'INFO' => $client['info'],
						'BANNER_COUNT' => $client_banner['banner_count'] == '' ? 0 : $client_banner['banner_count'],
						'L_DELETE_CLIENT' => append_sid('admin_banners.php?action=clients&do=del&id=' . $client['id']),
						'L_ADD_CLIENT' => append_sid('admin_banners.php?action=clients&do=add&id=' . $client['id']),
						'L_EDIT_CLIENT' => append_sid('admin_banners.php?action=clients&do=edit&id=' . $client['id']))
					);

				if ($s == 'yes') {
					$template->assign_block_vars('client_list.switch_show_info', array());
				}
			}

			$template->assign_vars(array(
				'L_ADD_CLIENT' => append_sid('admin_banners.php?action=clients&do=add'),
				'L_SHOW_INFO' => append_sid('admin_banners.php?action=clients&do=show&sort=' . $sort . '&s=yes'),
				'L_HIDE_INFO' => append_sid('admin_banners.php?action=clients&do=show&sort=' . $sort . '&s=no'),
				'L_NAME_SORT' => append_sid('admin_banners.php?action=clients&do=show&sort=name&s=' . $s),
				'L_CONTACT_SORT' => append_sid('admin_banners.php?action=clients&do=show&sort=contact&s=' . $s),
				'L_EMAIL_SORT' => append_sid('admin_banners.php?action=clients&do=show&sort=email&s=' . $s))
				);
			
			$template->set_filenames(array('clients' => 'admin/ads_clients.tpl'));
			$template->pparse('clients');			
			
		} else if ($do == 'add' || $do == 'edit') { //////////////// ADD & EDIT

			if ($do == 'add') { /////////////////////////////////////////// ADD
				
				$sql = "INSERT INTO " . ADS_CLIENT_TABLE . "  
					VALUES(NULL, '', '', '', '', '', '');";
				if (!($result = $db->sql_query($sql))) {
					message_die(GENERAL_ERROR, 'Error creating client', '', __LINE__, __FILE__, $sql);
				}
				
				$sql = "SELECT MAX(id) AS id
					FROM " . ADS_CLIENT_TABLE;
				if (!($result = $db->sql_query($sql))) {
					message_die(GENERAL_ERROR, 'Error fetching client id', '', __LINE__, __FILE__, $sql);
				}
				if (!($client = $db->sql_fetchrow($result))) {
					message_die(GENERAL_ERROR, 'Unable to find client data', '', __LINE__, __FILE__, $sql);
				}				
				$id = $client['id'];
			}				

			////////////////////////////////////////////////////////////// EDIT
				
			$sql = "SELECT id, name, contact, email, phone, mobile, info
				FROM " . ADS_CLIENT_TABLE . "
				WHERE id = $id";

			if (!($result = $db->sql_query($sql))) {
				message_die(GENERAL_ERROR, 'Error getting client data', '', __LINE__, __FILE__, $sql);
			}

			if (!($client = $db->sql_fetchrow($result))) {
				message_die(GENERAL_ERROR, 'Unable to find client data', '', __LINE__, __FILE__, $sql);
			} else {				
				$template->assign_vars(array(
						'ID' => $client['id'],
						'CONTACT' => $client['contact'],
						'NAME' => $client['name'],
						'EMAIL' => $client['email'],
						'PHONE' => $client['phone'],
						'MOBILE' => $client['mobile'],
						'INFO' => $client['info'])
					);
			}
			
			$template->assign_vars(array(
				'L_FORM_ACTION' => append_sid('admin_banners.php?action=clients&do=save')));

			$template->set_filenames(array('edit_client' => 'admin/ads_edit_client.tpl'));
			$template->pparse('edit_client');

		} else if ($do == 'save') { ///////////////////////////////// SAVE DATA

			$id			= $HTTP_POST_VARS['id'];		
			$name 		= $HTTP_POST_VARS['name'];
			$contact 	= $HTTP_POST_VARS['contact'];
			$email 		= $HTTP_POST_VARS['email'];
			$phone		= $HTTP_POST_VARS['phone'];
			$mobile		= $HTTP_POST_VARS['mobile'];
			$info		= $HTTP_POST_VARS['info'];
	
			$sql = "UPDATE " . ADS_CLIENT_TABLE . "
				SET name = '$name',
				contact='$contact',
				email='$email',
				phone='$phone',
				mobile='$mobile',
				info='$info'
				WHERE id = $id;";
					
			if (!($result = $db->sql_query($sql))) {
				message_die(GENERAL_ERROR, 'Error saving client data', '', __LINE__, __FILE__, $sql);
			} else {
				$message = 'Kundinformationen är uppdaterad.<br><br> Klicka <a href="' . append_sid("admin_banners.php?action=clients&do=show") . '">här</a> för att komma tillbaka till kundhanteringen.';	
				message_die(GENERAL_MESSAGE, $message);
			}

		} else if ($do == 'del') { ///////////////////////////////////// DELETE
		
			$sql = "UPDATE " . ADS_BANNER_TABLE . "
				SET client_id = 1
				WHERE client_id = $id;";
				
			if (!($result = $db->sql_query($sql))) {
				message_die(GENERAL_ERROR, 'Error updating banner client id', '', __LINE__, __FILE__, $sql);
			}			
		
			$sql = "DELETE FROM " . ADS_CLIENT_TABLE . " WHERE id = $id";
			
			if (!($result = $db->sql_query($sql))) {
				
				message_die(GENERAL_ERROR, 'Error removing client', '', __LINE__, __FILE__, $sql);
				
			} else {

				$message = 'Kunden är raderad.<br><br> Klicka <a href="' . append_sid("admin_banners.php?action=clients&do=show") . '">här</a> för att komma tillbaka till kundhanteringen.';	
				message_die(GENERAL_MESSAGE, $message);
	
			}
		}
		break;
}
	
include('./page_footer_admin.'.$phpEx);	

///////////////// END HANDLE ACTIONS //////////////////////////////////////////
?>
