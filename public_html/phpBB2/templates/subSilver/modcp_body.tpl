
<form method="post" action="{S_MODCP_ACTION}">
<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">

<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
	<tr> 
	  <td class="ptitle" colspan="5" align="left"><h1>{L_MOD_CP}</h1></td>
	</tr>
	<tr> 
	  <td class="pmid" colspan="5" align="left">
	  	<span style="color: #999999; padding-bottom: 9px;">
	  		{L_MOD_CP_EXPLAIN}
	  	</span>
	  </td>
	</tr>
	<tr>
		<td class="pmid" colspan="5" align="right" style="padding-bottom: 9px; padding-top: 9px;">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<!-- BEGIN switch_pagination -->
					<td class="btnLightLeftEnd" width="5"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{PAGINATION}</span>
					<td class="btnLightRightEnd" width="5"></td>					
					<!-- END switch_pagination -->
				</tr>
			</table>
		</td>
	</tr>
	<tr> 
	  <th class="ttitle_left" align="left">&nbsp;</th>
	  <th class="ttitle_mid" align="left"><h3>&nbsp;{L_TOPICS}</h3></th>
	  <th class="ttitle_mid"><h4>{L_REPLIES}</h4></th>
	  <th class="ttitle_mid"><h4>{L_LASTPOST}</h4></th>
	  <th class="ttitle_right" nowrap="nowrap"><h4>{L_SELECT}</h4></th>
	</tr>
	<!-- BEGIN topicrow -->
	<tr> 
	  <td class="trow_left" align="center" valign="middle"><img src="{topicrow.TOPIC_FOLDER_IMG}" width="19" height="18" alt="{topicrow.L_TOPIC_FOLDER_ALT}" title="{topicrow.L_TOPIC_FOLDER_ALT}" /></td>
	  <td class="trow_mid">&nbsp;<span class="topictitle">{topicrow.TOPIC_TYPE}<a href="{topicrow.U_VIEW_TOPIC}" class="topictitle">{topicrow.TOPIC_TITLE}</a></span></td>
	  <td class="trow_mid" align="center" valign="middle"><span class="postdetails">{topicrow.REPLIES}</span></td>
	  <td class="trow_mid" align="center" valign="middle"><span class="postdetails">{topicrow.LAST_POST_TIME}</span></td>
	  <td class="trow_right" align="center" valign="middle"> 
		<input type="checkbox" name="topic_id_list[]" value="{topicrow.TOPIC_ID}" />
	  </td>
	</tr>
	<!-- END topicrow -->
	<tr align="right"> 
	  <td class="pbottom" colspan="5" height="29"> {S_HIDDEN_FIELDS} 
		<input type="submit" name="delete" class="liteoption" value="{L_DELETE}" />
		&nbsp; 
		<input type="submit" name="move" class="liteoption" value="{L_MOVE}" />
		&nbsp; 
		<input type="submit" name="lock" class="liteoption" value="{L_LOCK}" />
		&nbsp; 
		<input type="submit" name="unlock" class="liteoption" value="{L_UNLOCK}" />
	  </td>
	</tr>
	<tr>
		<td class="pbottom" colspan="5" align="right" style="padding-bottom: 9px; padding-top: 9px;">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<!-- BEGIN switch_pagination -->
					<td class="btnLightLeftEnd" width="5"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{PAGINATION}</span>
					<td class="btnLightRightEnd" width="5"></td>					
					<!-- END switch_pagination -->
				</tr>
			</table>
		</td>
	</tr>
</table>
</div>
</form>
