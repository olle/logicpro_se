<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">

<form action="{S_PROFILE_ACTION}" {S_FORM_ENCTYPE} method="post">

{ERROR_BOX}

<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
	<tr> 
		<th class="ptitle" colspan="2" align="left" valign="top"><h1>{L_REGISTRATION_INFO}</h1></th>
	</tr>
	<tr> 
		<td class="pmid" align="left" colspan="2"><div style="color: #999999;">{L_ITEMS_REQUIRED}</div></td>
	</tr>
	
	<!-- BEGIN switch_namechange_disallowed -->
	<tr> 
		<td class="prow_left" align="right" valign="middle">{L_USERNAME}: <span style="color: red;">*</span></td>
		<td class="prow_right"><input type="hidden" name="username" value="{USERNAME}" /><strong>{USERNAME}</strong></td>
	</tr>
	<!-- END switch_namechange_disallowed -->
	
	<!-- BEGIN switch_namechange_allowed -->
	<tr> 
		<td class="prow_left" align="right" valign="middle">{L_USERNAME}: <span style="color: red;">*</span></td>
		<td class="prow_right"><input type="text" class="post" style="width:150px" name="username" maxlength="25" value="{USERNAME}" /></td>
	</tr>
	<!-- END switch_namechange_allowed -->
	
	<tr> 
		<td class="prow_left" align="right" valign="middle">{L_EMAIL_ADDRESS}: <span style="color: red;">*</span></td>
		<td class="prow_right"><input type="text" class="post" style="width:250px" name="email" maxlength="255" value="{EMAIL}" /></td>
	</tr>
	
	<!-- BEGIN switch_edit_profile -->
	<tr> 
		<td class="prow_left" align="right" valign="middle">{L_CURRENT_PASSWORD}: <span style="color: red;">*</span></td>
	  	<td class="prow_right" valign="middle"> 
		<input type="password" class="post" style="width: 150px" name="cur_password" size="25" maxlength="32" value="{CUR_PASSWORD}" />
	  	</td>
	</tr>
	<tr>
		<td class="prow_left"></td>	
		<td class="prow_right" align="left"><div style="color: #999999;">{L_CONFIRM_PASSWORD_EXPLAIN}</div></td>
	</tr>
	<!-- END switch_edit_profile -->
	
	<tr> 
	  	<td class="prow_left" align="right" valign="middle">{L_NEW_PASSWORD}: <span style="color: red;">*</span></td>
	  	<td class="prow_right" valign="middle"><input type="password" class="post" style="width: 150px" name="new_password" size="25" maxlength="32" value="{NEW_PASSWORD}" /></td>
	</tr>
	<tr> 
	  	<td class="prow_left" align="right" valign="middle">{L_CONFIRM_PASSWORD}: <span style="color: red;">*</span></td>
	  	<td class="prow_right" valign="middle"><input type="password" class="post" style="width: 150px" name="password_confirm" size="25" maxlength="32" value="{PASSWORD_CONFIRM}" /></td>
	</tr>
	
	<!-- BEGIN switch_confirm -->
	<tr>
		<td class="pmid" colspan="2" align="center">
			<br />
			<h4>{L_CONFIRM_CODE_IMPAIRED}</h4>
			{CONFIRM_IMG}
		</td>
	</tr>
	<tr> 
	  	<td class="prow_left" align="right" valign="middle">
	  		{L_CONFIRM_CODE}: <span style="color: red;">*</span><br />
	  		{L_CONFIRM_CODE_EXPLAIN}
	  	</td>
	  	<td class="prow_right" valign="top">
	  		<input type="text" class="post" style="width: 150px" name="confirm_code" maxlength="6" value="" />
	  	</td>
	</tr>
	<!-- END switch_confirm -->
	
	<!-- BEGIN switch_add_profile -->
	<tr> 
	  	<td class="prow_left" align="right" valign="middle">
	  		{L_BONUS_QUESTION}: <span style="color: red;">*</span><br />
	  		{L_BONUS_QUESTION_EXPLAIN}
	  	</td>
	  	<td class="prow_right" valign="top">
			<input type="text" class="post" style="width: 150px" name="bonusq" size="25" maxlength="25" value="" />	  	
	  	</td>
	</tr>
	<!-- END switch_add_profile -->
	
	<tr> 
	  	<th class="ptitle" colspan="2" align="left" valign="middle"><h1>{L_PROFILE_INFO}</h1></th>
	</tr>
	<tr> 
	  	<td class="pmid" colspan="2" align="left" valign="middle">
	  		<div style="color: #999999;">{L_PROFILE_INFO_NOTICE}</div>
	  	</td>
	</tr>
	<tr> 
	  	<td class="prow_left" align="right" valign="middle">{L_ICQ_NUMBER}:</td>
	  	<td class="prow_right" align="left" valign="middle">
	  		<input type="text" name="icq" class="post"style="width: 150px" maxlength="15" value="{ICQ}" />
	  	</td>
	</tr>
	<tr> 
	  	<td class="prow_left" align="right" valign="middle">{L_AIM}:</td>
	  	<td class="prow_right" align="left" valign="middle"> 
			<input type="text" class="post"style="width: 150px"  name="aim" size="20" maxlength="255" value="{AIM}" />
	  	</td>
	</tr>
	<tr> 
	  <td class="prow_left" align="right" valign="middle">{L_MESSENGER}:</span></td>
	  <td class="prow_right" align="left" valign="middle"> 
		<input type="text" class="post"style="width: 150px"  name="msn" maxlength="255" value="{MSN}" />
	  </td>
	</tr>
	<tr> 
	  <td class="prow_left" align="right" valign="middle">{L_YAHOO}:</span></td>
	  <td class="prow_right" align="left" valign="middle"> 
		<input type="text" class="post"style="width: 150px"  name="yim" maxlength="255" value="{YIM}" />
	  </td>
	</tr>
	<tr> 
	  <td class="prow_left" align="right" valign="middle">{L_WEBSITE}:</td>
	  <td class="prow_right" align="left" valign="middle"> 
		<input type="text" class="post"style="width: 250px"  name="website" maxlength="255" value="{WEBSITE}" />
	  </td>
	</tr>
	<tr> 
	  <td class="prow_left" align="right" valign="middle">{L_LOCATION}:<span style="color: red;">*</span></td>
	  <td class="prow_right" align="left" valign="middle"> 
		<input type="text" class="post"style="width: 250px"  name="location" maxlength="100" value="{LOCATION}" />
	  </td>
	</tr>
	<tr> 
	  <td class="prow_left" align="right" valign="middle">{L_OCCUPATION}:</td>
	  <td class="prow_right" align="left" valign="middle"> 
		<input type="text" class="post"style="width: 200px"  name="occupation" size="25" maxlength="100" value="{OCCUPATION}" />
	  </td>
	</tr>
	<tr> 
	  <td class="prow_left" align="right" valign="middle">{L_INTERESTS}:</td>
	  <td class="prow_right" align="left" valign="middle"> 
		<input type="text" class="post"style="width: 200px"  name="interests" size="35" maxlength="150" value="{INTERESTS}" />
	  </td>
	</tr>
	<tr> 
	  	<td class="prow_left" align="right" valign="top"><span class="gen">{L_SIGNATURE}:<span style="color: red;">*</span></td>
	  	<td class="prow_right" align="left" valign="middle"> 
			<textarea name="signature" style="width: 470px" rows="6" class="post">{SIGNATURE}</textarea>
	  	</td>
	</tr>
	<tr>
		<td class="prow_left"></td>
		<td class="prow_right" align="left"><div style="color: #999999;">{L_SIGNATURE_EXPLAIN}</div></td></tr>	
	</tr>
	<tr> 
	  	<th class="ptitle" colspan="2" align="left"><h1>{L_PREFERENCES}</h1></th>
	</tr>
	<tr> 
	  	<td class="prow_left" align="right" valign="middle">{L_PUBLIC_VIEW_EMAIL}:</td>
		<td class="prow_right" align="left" valign="middle"> 
			<input type="radio" name="viewemail" value="1" {VIEW_EMAIL_YES} />
			{L_YES}&nbsp;&nbsp; 
			<input type="radio" name="viewemail" value="0" {VIEW_EMAIL_NO} />
			{L_NO}
		</td>
	</tr>
	<tr> 
	 	<td class="prow_left" align="right" valign="middle">{L_HIDE_USER}:</td>
	  	<td class="prow_right" align="left" valign="middle"> 
			<input type="radio" name="hideonline" value="1" {HIDE_USER_YES} />
			{L_YES}&nbsp;&nbsp; 
			<input type="radio" name="hideonline" value="0" {HIDE_USER_NO} />
			{L_NO}
		</td>
	</tr>
	<tr> 
	  <td class="prow_left" align="right" valign="middle">{L_NOTIFY_ON_REPLY}:</td>
	  <td class="prow_right" align="left" valign="middle"> 
		<input type="radio" name="notifyreply" value="1" {NOTIFY_REPLY_YES} />
		{L_YES}&nbsp;&nbsp; 
		<input type="radio" name="notifyreply" value="0" {NOTIFY_REPLY_NO} />
		{L_NO}</td>
	</tr>
	<tr>
		<td class="prow_left"></td>
		<td class="prow_right" align="left"><div style="color: #999999;">{L_NOTIFY_ON_REPLY_EXPLAIN}</div></td></tr>	
	</tr>	
	<tr> 
	  <td class="prow_left" align="right" valign="middle">{L_NOTIFY_ON_PRIVMSG}:</span></td>
	  <td class="prow_right" align="left" valign="middle"> 
		<input type="radio" name="notifypm" value="1" {NOTIFY_PM_YES} />
		{L_YES}&nbsp;&nbsp; 
		<input type="radio" name="notifypm" value="0" {NOTIFY_PM_NO} />
		{L_NO}</td>
	</tr>
	<tr> 
	  <td class="prow_left" align="right" valign="middle">{L_ALWAYS_ADD_SIGNATURE}:</span></td>
	  <td class="prow_right" align="left" valign="middle"> 
		<input type="radio" name="attachsig" value="1" {ALWAYS_ADD_SIGNATURE_YES} />
		{L_YES}&nbsp;&nbsp; 
		<input type="radio" name="attachsig" value="0" {ALWAYS_ADD_SIGNATURE_NO} />
		{L_NO}</td>
	</tr>
	<tr> 
	  <td class="prow_left" align="right" valign="middle">{L_ALWAYS_ALLOW_BBCODE}:</span></td>
	  <td class="prow_right" align="left" valign="middle"> 
		<input type="radio" name="allowbbcode" value="1" {ALWAYS_ALLOW_BBCODE_YES} />
		{L_YES}&nbsp;&nbsp; 
		<input type="radio" name="allowbbcode" value="0" {ALWAYS_ALLOW_BBCODE_NO} />
		{L_NO}</td>
	</tr>
	<tr> 
	  <td class="prow_left" align="right" valign="middle">{L_ALWAYS_ALLOW_HTML}:</span></td>
	  <td class="prow_right" align="left" valign="middle"> 
		<input type="radio" name="allowhtml" value="1" {ALWAYS_ALLOW_HTML_YES} />
		{L_YES}&nbsp;&nbsp; 
		<input type="radio" name="allowhtml" value="0" {ALWAYS_ALLOW_HTML_NO} />
		{L_NO}</td>
	</tr>
	<tr> 
	  <td class="prow_left" align="right" valign="middle">{L_ALWAYS_ALLOW_SMILIES}:</span></td>
	  <td class="prow_right" align="left" valign="middle"> 
		<input type="radio" name="allowsmilies" value="1" {ALWAYS_ALLOW_SMILIES_YES} />
		{L_YES}&nbsp;&nbsp; 
		<input type="radio" name="allowsmilies" value="0" {ALWAYS_ALLOW_SMILIES_NO} />
		{L_NO}</td>
	</tr>

	<!-- BEGIN switch_avatar_block -->
	<tr> 
	  	<th class="ptitle" colspan="2" align="left" valign="middle"><h1>{L_AVATAR_PANEL}</h1></th>
	</tr>
	<tr> 
		<td class="pmid" align="left" valign="top" colspan="2">
			<table border="0" cellpadding="2" cellspacing="2" width="450">
				<tr>
					<td valign="top">
						<div style="color: #999999;">
							{L_AVATAR_EXPLAIN}
						</div>					
					</td>
					<td width="123" align="center">
						{L_CURRENT_IMAGE}:<br />
						{AVATAR}<br /> 
						<input type="checkbox" name="avatardel" />{L_DELETE_AVATAR}
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<!-- BEGIN switch_avatar_local_upload -->
	<tr> 
		<td class="prow_left" align="right" valign="middle">{L_UPLOAD_AVATAR_FILE}:</td>
		<td class="prow_right" align="left" valign="middle">
			<input type="hidden" name="MAX_FILE_SIZE" value="{AVATAR_SIZE}" />
			<input type="file" name="avatar" class="post" style="width:350px" />
		</td>
	</tr>
	<!-- END switch_avatar_local_upload -->
	<!-- BEGIN switch_avatar_remote_upload -->
	<tr> 
		<td class="prow_left" align="right" valign="middle">{L_UPLOAD_AVATAR_URL}:
		</td>
		<td class="prow_right" align="left" valign="middle">
			<input type="text" name="avatarurl" class="post" style="width:250px" />
		</td>
	</tr>
	<tr>
		<td class="prow_left"></td>
		<td class="prow_right" align="left"><div style="color: #999999;">{L_UPLOAD_AVATAR_URL_EXPLAIN}</div></td></tr>	
	</tr>	
	<!-- END switch_avatar_remote_upload -->
	<!-- BEGIN switch_avatar_remote_link -->
	<tr> 
		<td class="prow_left" align="right" valign="middle">{L_LINK_REMOTE_AVATAR}:</td>
		<td class="prow_right" align="left" valign="middle">
			<input type="text" name="avatarremoteurl" class="post" style="width:250px" />
		</td>
	</tr>
	<tr>
		<td class="prow_left"></td>
		<td class="prow_right" align="left"><div style="color: #999999;">{L_LINK_REMOTE_AVATAR_EXPLAIN}</div></td></tr>	
	</tr>	
	<!-- END switch_avatar_remote_link -->
	<!-- END switch_avatar_block -->
	<tr>
		<td class="pbottom" colspan="2" align="center" height="28">
			{S_HIDDEN_FIELDS}
			<input type="submit" name="submit" value="{L_SUBMIT}" style="width: 80px;"/>&nbsp;&nbsp;
			<input type="reset" value="{L_RESET}" name="reset" style="width: 80px;"/>
		</td>
	</tr>
</table>

</form>
