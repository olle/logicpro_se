 
<script language="JavaScript" type="text/javascript">
<!--
	// Should really check the browser to stop this whining ...
	function select_switch(status) {
		for (i = 0; i < document.privmsg_list.length; i++) {
			document.privmsg_list.elements[i].checked = status;
		}
	}
//-->
</script>

<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<form method="post" name="privmsg_list" action="{S_PRIVMSGS_ACTION}">
<table width="750" cellpadding="0" cellspacing="0" border="0" bgcolor="#FFFFFF">
	<tr>
		<td class="ptitle" colspan="8"><h1>Personliga meddelanden</h1></td>
	</tr>
	<tr>
		<td class="prow_left" valign="middle" align="left" colspan="2">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td class="btnLightLeftEnd" width="5"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{POST_PM}</span>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{INBOX}</span>
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{SENTBOX}</span>
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{OUTBOX}</span>
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{SAVEBOX}</span>
					</td>
					<td class="btnLightRightEnd" width="5"></td>
					
					<!-- BEGIN switch_pagination -->
					<td class="btnspacer"></td>
					
					<td class="btnLightLeftEnd" width="5"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{PAGINATION}</span>
					<td class="btnLightRightEnd" width="5"></td>
					<!-- END switch_pagination -->
				</tr>
			</table>
		</td>
		<td class="nbox" align="right" valign="bottom" colspan="3">
			<!-- BEGIN switch_box_size_notice -->
			<table width="175" cellspacing="0" cellpadding="0" border="0" class="bodyline">
				<tr>
					<td colspan="3" width="175">{BOX_SIZE_STATUS}</td>
				</tr>
				<tr>
					<td colspan="3" width="175" style="border: 1px solid #666666;">
						<table cellspacing="0" cellpadding="0" border="0">
							<tr>
								<td bgcolor="#999999"><img src="templates/subSilver/images/spacer.gif" width="{INBOX_LIMIT_IMG_WIDTH}" height="12" alt="{INBOX_LIMIT_PERCENT}" /></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td width="33%">0%</td>
					<td width="34%" align="center">&nbsp;50%</td>
					<td width="33%" align="right">100%</td>
				</tr>
			</table>
			<!-- END switch_box_size_notice -->
		</td>
	</tr>
	<tr> 
		<td class="prow_left" colspan="2"></td>
	  	<td class="prow_right" align="right" colspan="3">
	  		{L_DISPLAY_MESSAGES}: 
			<select name="msgdays">{S_SELECT_MSG_DAYS}</select>
			<input type="submit" value="{L_GO}" name="submit_msgdays" class="liteoption" />
		</td>
	</tr>
	<tr> 
		<th class="ttitle_left" align="left" width="40">&nbsp;</th>
		<th class="ttitle_mid" align="left" width="350"><h2>{L_SUBJECT}</h2></th>
	  	<th class="ttitle_mid" align="left"><h4>{L_FROM_OR_TO}<h4></th>
	  	<th class="ttitle_mid" align="left"><h4>{L_DATE}</h4></th>
	  	<th class="ttitle_right" align="center"><h4>{L_MARK}&nbsp;</h4></th>
	</tr>
	<!-- BEGIN listrow -->
	<tr> 
	  	<td class="trow_left" align="center" valign="middle"><img src="{listrow.PRIVMSG_FOLDER_IMG}" alt="{listrow.L_PRIVMSG_FOLDER_ALT}" title="{listrow.L_PRIVMSG_FOLDER_ALT}" /></td>
	  	<td class="trow_mid" valign="middle"><strong><a href="{listrow.U_READ}">{listrow.SUBJECT}</a></strong></td>
	  	<td class="trow_mid" valign="middle" align="left"><a href="{listrow.U_FROM_USER_PROFILE}">{listrow.FROM}</a></td>
	  	<td class="trow_mid" align="left" valign="middle">{listrow.DATE}</td>
	  	<td class="trow_right" align="center" valign="middle">
	  		<input type="checkbox" name="mark[]2" value="{listrow.S_MARK_ID}" />
		</td>
	</tr>
	<!-- END listrow -->
	<!-- BEGIN switch_no_messages -->
	<tr> 
	  <td class="pbottom" colspan="5" align="center" valign="middle"><span class="gen">{L_NO_MESSAGES}</span></td>
	</tr>
	<!-- END switch_no_messages -->
	<tr>
		<td class="pbottom" colspan="5" align="right">
	  		{S_HIDDEN_FIELDS}
	  		<table border="0" cellpadding="0" cellspacing="0">
	  			<tr>
					<td>
						<input type="button" value="{L_MARK_ALL}" onClick="javascript:select_switch(true);return true;">
					</td>
					<td class="btnspacer"></td>
					<td>
						<input type="button" value="{L_UNMARK_ALL}" onClick="javascript:select_switch(false);return true;">
					</td>
					<td class="btnspacer"></td>
					<td>
						<input type="submit" name="save" value="{L_SAVE_MARKED}"/>
					</td>
					<td class="btnspacer"></td>
					<td>
						<input type="submit" name="delete" value="{L_DELETE_MARKED}"/>
					</td>
					<td class="btnspacer"></td>
					<td>
						<input type="submit" name="deleteall" value="{L_DELETE_ALL}" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td class="pbottom" colspan="5" align="left">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td class="btnLightLeftEnd" width="5"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{POST_PM}</span>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{INBOX}</span>
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{SENTBOX}</span>
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{OUTBOX}</span>
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{SAVEBOX}</span>
					</td>
					<td class="btnLightRightEnd" width="5"></td>
					
					<!-- BEGIN switch_pagination -->
					<td class="btnspacer"></td>
					
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

</form>
</div>
