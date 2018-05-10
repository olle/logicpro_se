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
<table width="750" cellpadding="0" cellspacing="0" border="0" bgcolor="#FFFFFF">
	<tr> 
	  	<th colspan="2" align="left" class="ttitle_left"><h2>{L_FORUM}</h2></th>
	  	<th class="ttitle_mid" align="left"><h2>{L_TOPICS}</h2></th>
	  	<th class="ttitle_mid" align="left"><h4>{L_LASTPOST}</h4></th>
	  	<th align="left" class="ttitle_mid"><h4>{L_AUTHOR}</h4></th>
	  	<th align="center" class="ttitle_mid"><h4>{L_REPLIES}</h4></th>
	  	<th align="center" class="ttitle_right"><h4>{L_VIEWS}</h4></th>
	</tr>
  <!-- BEGIN searchresults -->
	<tr> 
	  	<td class="trow_left" align="center" valign="middle">
	  		<img src="{searchresults.TOPIC_FOLDER_IMG}" alt="{searchresults.L_TOPIC_FOLDER_ALT}" title="{searchresults.L_TOPIC_FOLDER_ALT}">
	  	</td>
	  	<td class="trow_mid" align="left" valign="top"><h4><a href="{searchresults.U_VIEW_FORUM}">{searchresults.FORUM_NAME}</a></h4></td>
	  	<td class="trow_mid" width="210" align="left" valign="top"><h4><a href="{searchresults.U_VIEW_TOPIC}">{searchresults.TOPIC_TITLE}</a></h4>
	  		{searchresults.GOTO_PAGE}
	  	</td>
	  	<td class="trow_mid" align="left" valign="top">
	  		{searchresults.LAST_POST_TIME}<br />
	  		{searchresults.LAST_POST_AUTHOR} {searchresults.LAST_POST_IMG}
	  	</td>
	  	<td class="trow_mid" align="left" valign="top">{searchresults.TOPIC_AUTHOR}</td>
	  	<td class="trow_mid" align="right" valign="middle">{searchresults.REPLIES}</td>
	  	<td class="trow_right" align="right" valign="middle">{searchresults.VIEWS}&nbsp;&nbsp;</td>
	</tr>
  <!-- END searchresults -->
</table>
<div style="height: 9px;"></div>
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
