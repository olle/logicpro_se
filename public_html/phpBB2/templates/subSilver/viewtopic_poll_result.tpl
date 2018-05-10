 
<tr> 
  <td style="border-top: 1px solid #999999; border-left: 1px solid #999999; border-right: 1px solid #999999;" colspan="2"><br clear="all" />
	<table cellspacing="0" cellpadding="4" border="0" align="center">
	  <tr> 
		<td colspan="4" align="center"><h2>{POLL_QUESTION}</h2></td>
	  </tr>
	  <tr> 
		<td align="center"> 
		  <table cellspacing="0" cellpadding="2" border="0">
			<!-- BEGIN poll_option -->
			<tr> 
			  <td>{poll_option.POLL_OPTION_CAPTION}</td>
			  <td> 
				<table cellspacing="0" cellpadding="0" border="0">
				  <tr> 
					<td><img src="templates/subSilver/images/vote_lcap.gif" width="4" alt="" height="12" /></td>
					<td><img src="{poll_option.POLL_OPTION_IMG}" width="{poll_option.POLL_OPTION_IMG_WIDTH}" height="12" alt="{poll_option.POLL_OPTION_PERCENT}" /></td>
					<td><img src="templates/subSilver/images/vote_rcap.gif" width="4" alt="" height="12" /></td>
				  </tr>
				</table>
			  </td>
			  <td align="center"><strong>&nbsp;{poll_option.POLL_OPTION_PERCENT}&nbsp;</span></strong></td>
			  <td align="center">[ {poll_option.POLL_OPTION_RESULT} ]</td>
			</tr>
			<!-- END poll_option -->
		  </table>
		</td>
	  </tr>
	  <tr> 
		<td colspan="4" align="center"><strong>{L_TOTAL_VOTES} : {TOTAL_VOTES}</strong></td>
	  </tr>
	</table>
	<br clear="all" />
  </td>
</tr>
