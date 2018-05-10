<?php

/****************************************************************
 * Script name: click.php
 * The script for banner click counting and redirection.
 * Author: olle@studiomediatech.com
 * Created: 2004- 11- 27
 * ***************************************************************/

define('IN_PHPBB', true);
$phpbb_root_path = './';
include($phpbb_root_path . 'extension.inc');
include($phpbb_root_path . 'common.'.$phpEx);

$id = (int)isset($HTTP_POST_VARS['id']) ? $HTTP_POST_VARS['id'] : $HTTP_GET_VARS['id'];

if (!$id) {
	redirect(append_sid($phpbb_root_patch . "/index.php"));
} else {

	$sql = "SELECT url, expiration_clicks, clicks_life
		FROM " . ADS_BANNER_TABLE . "
		WHERE id = $id;";

	if (!($result = $db->sql_query($sql))) {
		message_die(GENERAL_ERROR, 'Error getting banner url', '', __LINE__, __FILE__, $sql);
	}
	
	if (!($banner = $db->sql_fetchrow($result))) {
		redirect(append_sid($phpbb_root_patch . "/index.php"));		
	} else {

		if (($banner['expiration_clicks'] <= $banner['clicks_life']) &&
				($banner['expiration_clicks'] != 0)) {
			$sql = "UPDATE " . ADS_BANNER_TABLE . "
				SET status = 'expired'
				WHERE id = $id;";

			if (!($result = $db->sql_query($sql))) {
				message_die(GENERAL_ERROR, 'Error click-expiring banner', '', __LINE__, __FILE__, $sql);
			}
		}
		
		$sql = "UPDATE " . ADS_BANNER_TABLE . "
			SET clicks_life = clicks_life + 1, clicks_day = clicks_day + 1
			WHERE id = $id;";

		if (!($result = $db->sql_query($sql))) {
			message_die(GENERAL_ERROR, 'Error incrementing clicks for banner', '', __LINE__, __FILE__, $sql);
		}
		
		header("Location: " . $banner['url']);
	}

}
?>
