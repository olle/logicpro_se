
<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<form method="post" action="{S_PRIVMSGS_ACTION}">
<table width="750" cellpadding="0" cellspacing="0" border="0" bgcolor="#FFFFFF">
	<tr>
		<td class="ptitle" colspan="8"><h1>Personliga meddelanden</h1></td>
	</tr>
	<tr>
		<td class="prow_left" valign="middle" align="left" colspan="2">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td class="btnLightLeftEnd" width="5"></td>
					
					<!-- BEGIN switch_reply -->
					<td class="btnLightMiddle">
						<span class="submenu">{REPLY_PM}</span>
					<td class="btnLightToLightMiddle" width="9"></td>
					<!-- END switch_reply -->

					<!-- BEGIN switch_quote -->
					<td class="btnLightMiddle">
						<span class="submenu">{QUOTE_PM}</span>
					<td class="btnLightToLightMiddle" width="9"></td>
					<!-- END switch_quote -->

					<!-- BEGIN switch_edit -->
					<td class="btnLightMiddle">
						<span class="submenu">{EDIT_PM}</span>
					<td class="btnLightToLightMiddle" width="9"></td>
					<!-- END switch_edit -->
					
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
	<tr><td class="pmid" colspan="3">&nbsp;</td></tr>
	<tr>
		<th colspan="3" class="ptitle" nowrap="nowrap"><h2>{BOX_NAME} - {L_MESSAGE}</h2></th>
	</tr>
	<tr> 
	  	<td class="prow_left" align="right" width="66"><h3>{L_FROM}:</h3></td>
	  	<td class="prow_right" colspan="2">{MESSAGE_FROM}</td>
	</tr>
	<tr> 
	  	<td class="prow_left" align="right"><h3>{L_TO}:</span></td>
	  	<td class="prow_right" colspan="2">{MESSAGE_TO}</td>
	</tr>
	<tr> 
	  	<td class="prow_left" align="right"><h3>{L_POSTED}:</span></td>
	  	<td class="prow_right" colspan="2"><div style="color: #999999;">{POST_DATE}</div></td>
	</tr>
	<tr> 
	 	<td class="prow_left" align="right"><h3>{L_SUBJECT}:</h3></td>
	  	<td class="prow_right" colspan="2">{POST_SUBJECT}</td>
	</tr>
	<tr> 
	  	<td valign="top" colspan="3" class="pbottom"><span class="postbody">{MESSAGE}</span></td>
	</tr>
	<tr>
	  	<td class="pbottom" colspan="3" height="28" align="right"> {S_HIDDEN_FIELDS} 
			<input type="submit" name="save" value="{L_SAVE_MSG}" class="liteoption" />
			&nbsp; 
			<input type="submit" name="delete" value="{L_DELETE_MSG}" class="liteoption" />
		</td>
	</tr>
	<tr>
		<td class="pbottom" colspan="3">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td class="btnLightLeftEnd" width="5"></td>

					<!-- BEGIN switch_reply -->
					<td class="btnLightMiddle">
						<span class="submenu">{REPLY_PM}</span>
					<td class="btnLightToLightMiddle" width="9"></td>
					<!-- END switch_reply -->

					<!-- BEGIN switch_quote -->
					<td class="btnLightMiddle">
						<span class="submenu">{QUOTE_PM}</span>
					<td class="btnLightToLightMiddle" width="9"></td>
					<!-- END switch_quote -->

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
