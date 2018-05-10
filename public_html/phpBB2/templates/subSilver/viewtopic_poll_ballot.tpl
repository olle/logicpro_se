<tr>
	<td style="border-top: 1px solid #999999; border-left: 1px solid #999999; border-right: 1px solid #999999;" colspan="2"><br clear="all" /><form method="POST" action="{S_POLL_ACTION}"><table cellspacing="0" cellpadding="4" border="0" align="center">
		<tr>
			<td align="center"><h2>{POLL_QUESTION}</h2></td>
		</tr>
		<tr>
			<td align="center"><table cellspacing="0" cellpadding="2" border="0">
				<!-- BEGIN poll_option -->
				<tr>
					<td><input type="radio" name="vote_id" value="{poll_option.POLL_OPTION_ID}" />&nbsp;</td>
					<td>{poll_option.POLL_OPTION_CAPTION}</td>
				</tr>
				<!-- END poll_option -->
			</table></td>
		</tr>
		<tr>
			<td align="center">
<input type="submit" name="submit" value="{L_SUBMIT_VOTE}" class="liteoption" />
  </td>
		</tr>
		<tr>
				
  <td align="center"><strong><a href="{U_VIEW_RESULTS}">{L_VIEW_RESULTS}</a></strong></span></td>
		</tr>
	</table>{S_HIDDEN_FIELDS}</form></td>
</tr>