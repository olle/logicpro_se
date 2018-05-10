
<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;"> 
<table width="750" cellpadding="0" cellspacing="0" border="0" bgcolor="#FFFFFF">
	<tr>
		<td class="ptitle" align="left" valign="middle"><h2>{L_SEARCH_MATCHES}</h2>
			<!-- BEGIN switch_pagination -->
			<br>
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td class="btnLightLeftEnd" width="5"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{PAGINATION}</span>
					</td>
					<td class="btnLightRightEnd" width="5"></td>
				</tr>
			</table>
			<!-- END switch_pagination -->
		</td>
	</tr>
</table>
<!-- BEGIN searchresults -->
<table width="750" cellpadding="0" cellspacing="0" border="0" bgcolor="#FFFFFF">
	<tr> 
		<td class="ptitle" colspan="2">
			<img src="templates/subSilver/images/folder.gif" align="absmiddle">&nbsp;
			{L_TOPIC}:&nbsp;<a href="{searchresults.U_TOPIC}"><strong>{searchresults.TOPIC_TITLE}</strong></a>
		</td>
	</tr>
	<tr> 
		<td class="userrow" align="left" valign="top" rowspan="2" width="111">
			<h3>{searchresults.POSTER_NAME}</h3><br />
			{L_REPLIES}: {searchresults.TOPIC_REPLIES}<br />
			{L_VIEWS}: {searchresults.TOPIC_VIEWS}<br />
		</td>
		<td class="daterow" valign="top" align="right" >
			{L_POSTED}: {searchresults.POST_DATE}&nbsp;&nbsp;&nbsp;
			{L_FORUM}: <a href="{searchresults.U_FORUM}" class="postdetails">{searchresults.FORUM_NAME}</a>
		</td>
	</tr>
	<tr>
		<td valign="top" class="contentrow">
			{searchresults.MESSAGE}
		</td>
	</tr>
	<tr><td class="sbottom" colspan="2"></td></tr>
</table>
<div style="height: 9px;"></div>
<!-- END searchresults -->
<!-- BEGIN switch_pagination -->
<table border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td class="btnLightLeftEnd" width="5"></td>
		<td class="btnLightMiddle">
			<span class="submenu">{PAGINATION}</span>
		</td>
		<td class="btnLightRightEnd" width="5"></td>
	</tr>
</table>
<!-- END switch_pagination -->
</div>
