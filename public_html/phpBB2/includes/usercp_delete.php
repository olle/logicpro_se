<?php
/***************************************************************************
 *                            usercp_delete.php
 *                            -------------------
 *   begin                : Saturday, Jul 21, 2007
 *   email                : olle@studiomediatech.com
 *
 *   $Id: usercp_activate.php,v 1.1 2005/01/04 11:45:04 olle Exp $
 *
 *
 ***************************************************************************/

/***************************************************************************
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version.
 *
 *
 ***************************************************************************/

if ( !defined('IN_PHPBB') )
{
	die('Hacking attempt');
	exit;
}

$sql = "SELECT user_active, user_id, username, user_email, user_newpasswd, user_lang, user_actkey 
	FROM " . USERS_TABLE . "
	WHERE user_id = " . intval($HTTP_GET_VARS[POST_USERS_URL]);
if ( !($result = $db->sql_query($sql)) )
{
	message_die(GENERAL_ERROR, 'Could not obtain user information', '', __LINE__, __FILE__, $sql);
}

if ( $row = $db->sql_fetchrow($result) )
{
	// Check act_key 
	if ((trim($row['user_actkey']) == trim($HTTP_GET_VARS['act_key'])) && (trim($row['user_actkey']) != ''))
	{
		// Is authorized and allowed to delete?
		if (!$userdata['session_logged_in'])
		{
			redirect(append_sid('login.' . $phpEx . '?redirect=profile.' . $phpEx . '&mode=delete&' . POST_USERS_URL . '=' . $row['user_id'] . '&act_key=' . trim($HTTP_GET_VARS['act_key'])));
		}
		else if ($userdata['user_level'] != ADMIN)
		{
			message_die(GENERAL_MESSAGE, $lang['Not_Authorised']);
		}
		
		// Delete user
		$sql = "DELETE FROM " . USERS_TABLE . "
			WHERE user_id = " . $row['user_id'];
		if( !$db->sql_query($sql) )
		{
			message_die(GENERAL_ERROR, 'Could not delete user', '', __LINE__, __FILE__, $sql);
		}
		
		// Redirect to index
		redirect(append_sid('index.' . $phpEx));
	}
	else
	{
		message_die(GENERAL_MESSAGE, $lang['Wrong_activation']);
	}
}
else
{
	message_die(GENERAL_MESSAGE, $lang['No_such_user']);
}

?>
