
<!-- BEGIN switch_inline_mode -->
<table width="750" cellpadding="0" cellspacing="0" border="0" bgcolor="#FFFFFF">
	<tr> 
		<td class="ptitle" height="28" align="center"><h2>{L_TOPIC_REVIEW}</h2></td>
	</tr>
	<tr>
		<td class="pmid" align="center"><iframe width="99%" height="340" src="{U_REVIEW_TOPIC}" style="background-color: #FFFFFF;">
<!-- END switch_inline_mode -->
<table width="100%" cellpadding="0" cellspacing="0" border="0" bgcolor="#FFFFFF">
	<tr>
		<th class="tttitle_left" width="140"><h3>{L_AUTHOR}</h3></th>
		<th class="tttitle_right"><h3>{L_MESSAGE}</h3></th>
	</tr>
	<!-- BEGIN postrow -->
	<tr>
		<td class="userrow" rowspan="2" align="left" valign="top"><h3>{postrow.POSTER_NAME}</h3></td>
		<td class="daterow" align="right" valign="top">
			Inlägg nr: {postrow.U_POST_ID}&nbsp;&nbsp;&nbsp;
			{L_POSTED}: {postrow.POST_DATE}
		</td>
	</tr>
	<tr>
		<td class="contentrow" align="left" valign="top">
			{postrow.MESSAGE}
		</td>
	</tr>
	<!-- END postrow -->
	<tr><td class="pbottom" colspan="2"></td></tr>
</table>
<!-- BEGIN switch_inline_mode -->
		</iframe><br><br></td>
	</tr>
		<td class="pbottom"></td>
	</tr>
</table>
<!-- END switch_inline_mode -->
