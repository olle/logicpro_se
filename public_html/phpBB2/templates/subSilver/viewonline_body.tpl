<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
  <tr> 
	<td class="pmid" colspan="3">
		<br />
		<h1>{TOTAL_REGISTERED_USERS_ONLINE}</h1>
	</td>
  </tr>
  <tr> 
	<td class="tttitle_left" align="left"><h3>{L_USERNAME}</h4></td>
	<td class="tttitle_mid" align="center"><h4>{L_LAST_UPDATE}</h4></td>
	<td class="tttitle_right" align="left"><h4>&nbsp;&nbsp;&nbsp;{L_FORUM_LOCATION}</h4></td>
  </tr>
  <!-- BEGIN reg_user_row -->
  <tr> 
	<td class="prow_left" align="left"><a href="{reg_user_row.U_USER_PROFILE}">{reg_user_row.USERNAME}</a></td>
	<td class="prow_mid" align="center" nowrap="nowrap">{reg_user_row.LASTUPDATE}</td>
	<td class="prow_right" align="left">
		<span style="font-size: 11px;">
		<a href="{reg_user_row.U_FORUM_LOCATION}">{reg_user_row.FORUM_LOCATION}</a>
		</span>
	</td>
  </tr>
  <!-- END reg_user_row -->
  <tr> 
	<td class="pmid" colspan="3">
		<br />
		<h1>{TOTAL_GUEST_USERS_ONLINE}</h1>
	</td>
  </tr>
  <tr> 
	<td class="tttitle_left" align="left"><h3>{L_USERNAME}</h4></td>
	<td class="tttitle_mid" align="center"><h4>{L_LAST_UPDATE}</h4></td>
	<td class="tttitle_right" align="left"><h4>&nbsp;&nbsp;&nbsp;{L_FORUM_LOCATION}</h4></td>
  </tr>
  <!-- BEGIN guest_user_row -->
  <tr> 
	<td class="prow_left" align="left">{guest_user_row.USERNAME}</td>
	<td class="prow_mid" align="center" nowrap="nowrap">{guest_user_row.LASTUPDATE}</td>
	<td class="prow_right">
		<span style="font-size: 11px;">		
		<a href="{guest_user_row.U_FORUM_LOCATION}">{guest_user_row.FORUM_LOCATION}</a>
		</span>
	</td>
  </tr>
  <!-- END guest_user_row -->
  <tr> 
	<td class="pbottom" align="left" valign="top" colspan="3">
		<br />
		<span style="color: #999999;">{L_ONLINE_EXPLAIN}</span>
	</td>
  </tr>
</table>
