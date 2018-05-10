<?php

/****************************************************************
 * Script name: ads.php
 * The actual ad fetching script that returns an ad upon request.
 * 
 * Author: olle@studiomediatech.com
 * Created: 2005-01-07
 * ***************************************************************/

function show_ad($group = '') {
	
	global $db, $phpbb_root_path;

	// Are there banners for the current group?
	$sql = "SELECT 1 FROM " . ADS_BANNER_TABLE . "
		WHERE banner_group = '" . $group . "';";
		
	if (!($result = $db->sql_query($sql))) {
		message_die(GENERAL_ERROR, 'Error getting banner date for group', '', __LINE__, __FILE__, $sql);
	}
	
	// No, fallback to group = ''
	if (is_int($group) && $db->sql_numrows($result) == 0) {
		$group = '';
	}

	// Fetch banners	
	$sql = "SELECT id, image_url, alt_text, displays_life, expiration_displays,
		expiration_date, width, height, CURDATE() AS c_date
		FROM " . ADS_BANNER_TABLE . "
		WHERE status = 'ok' AND banner_group = '" . $group . "';";

	if (!($result = $db->sql_query($sql))) {
		message_die(GENERAL_ERROR, 'Error getting banner', '', __LINE__, __FILE__, $sql);
	}
	
	if ($db->sql_numrows($result) == 0) {
		return '';
	}
		
	$banner_list = $db->sql_fetchrowset($result);

	// Now we simply select by random choice
	$banner_count = count($banner_list);
	$banner = $banner_list[rand(0, $banner_count - 1)];

	$id = (intval($banner['id']) > 0) ? $banner['id'] : false;
	
	if (!$id) {
		$ad = '';
	} else if ($banner['alt_text'] != '') {
		$ad = stripslashes($banner['alt_text']);
	} else {
		$ad  = '<a href="' . $phpbb_root_path . '/click.php?id=' . $id . '">';
		$ad .= '<img src="' . $banner['image_url'] . '"';
		if ($banner['width'] != '' && $banner['width'] != 0) {
			$ad .= ' width="' . $banner['width'] . '"';
		}
		if ($banner['height'] != '' && $banner['height'] != 0) {
			$ad .= ' height="' . $banner['height'] . '"';
		}
		$ad .= ' border="0" ></a>';
	}

	if (($banner['c_date'] >= $banner['expiration_date']) &&
			($banner['expiration_date'] != '') && ($banner['expiration_date'] != '0000-00-00')) {
		$sql = "UPDATE " . ADS_BANNER_TABLE . "
			SET status = 'expired'
			WHERE id = $id;";

		if (!($result = $db->sql_query($sql))) {
			message_die(GENERAL_ERROR, 'Error, could not date-expire banner', '', __LINE__, __FILE__, $sql);
		}
	}
	
	$sql = "UPDATE " . ADS_BANNER_TABLE . "
		SET displays_life = displays_life + 1,
		displays_day = displays_day + 1
		WHERE id = $id;";

	if (!($result = $db->sql_query($sql))) {
		message_die(GENERAL_ERROR, 'Error, unable to increment displays for banner', '', __LINE__, __FILE__, $sql);
	}
	
	if (($banner['expiration_displays'] != 0) &&
			($banner['expiration_displays'] <= $banner['displays_life'])) {
		$sql = "UPDATE " . ADS_BANNER_TABLE . "
			SET status = 'expired'
			WHERE id = $id;";

		if (!($result = $db->sql_query($sql))) {
			message_die(GENERAL_ERROR, 'Error, could not display-expire banner', '', __LINE__, __FILE__, $sql);
		}
	}
	
	return $ad;
}

?>
