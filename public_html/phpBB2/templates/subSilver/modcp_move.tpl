
<form action="{S_MODCP_ACTION}" method="post">
<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
	<tr> 
		<th class="ptitle" align="left"><h2>{MESSAGE_TITLE}</h2></th>
	</tr>
	<tr> 
		<td class="pbottom"> 
			<table width="100%" border="0" cellspacing="0" cellpadding="1">
		  		<tr> 
					<td align="center">
						<h3>{L_MOVE_TO_FORUM} &nbsp; {S_FORUM_SELECT}</h3>
						<input type="checkbox" name="move_leave_shadow" checked="checked" />{L_LEAVESHADOW}<br />
						<br />
						{MESSAGE_TEXT}<br />
						<br />
						{S_HIDDEN_FIELDS} 
						<input class="mainoption" type="submit" name="confirm" style="width: 66px;" value="{L_YES}" />
						&nbsp;&nbsp; 
						<input class="liteoption" type="submit" name="cancel" style="width: 66px;" value="{L_NO}" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</div>
</form>
