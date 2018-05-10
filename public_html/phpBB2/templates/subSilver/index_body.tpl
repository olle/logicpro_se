<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td align="left" valign="top">
			{ARTICLE}		
		</td>
		<td align="left" valign="top" width="270">
			{LATEST_TOPICS}
			
	<form action="{U_SEARCH}" method="post" name="top_search" id="top_search">
	<script language="JavaScript" type="text/javascript">
		<!--
		function doSearch() {
			if (document.forms['top_search'].elements['search_keywords'] != '') {
				document.forms['top_search'].submit();
			} else {
				document.location = '{U_SEARCH}';
			}
		}
		//-->
	</script>
	<table border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td><input type="text" size="23" class="txtSearch" name="search_keywords" id="search_keywords" style="font-size: 10px; margin-right: 2px; width: 147px;"></td>
			<td class="btnLightLeftEnd" width="5"></td>
			<td class="btnLightMiddle"><a href="javascript:doSearch();" class="mainmenu">{L_SEARCH}</a></td>	
			<td class="btnLightToLightMiddle" width="9"></td>
			<td class="btnLightMiddle"><a href="{U_SEARCH}" class="mainmenu">AVANCERAD</a></td>
			<td class="btnLightRightEnd" width="5"></td>
		</tr>
	</table>		
	</form>
	
			<div class="info">				
				<!-- BEGIN switch_user_logged_in -->
					<p>{LAST_VISIT_DATE}</p>
				<!-- END switch_user_logged_in -->
				<p>
				{TOTAL_POSTS}.
				{TOTAL_USERS}.
				{NEWEST_USER}
				</p>
				<p>
				{TOTAL_USERS_ONLINE}<br>
				{LOGGED_IN_USER_LIST}<br>
				</p>
				<p>
				{RECORD_USERS}
				</p>
				<!-- img src="templates/subSilver/images/vitflik.gif" --><a href="{U_VIEWONLINE}">{L_WHO_IS_ONLINE}</a>
			</div>
			
			
		</td>
	</tr>
	<tr>
		<td colspan="2" style="padding-bottom: 9px; padding-top: 9px;">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td class="btnLightLeftEnd" width="5"></td>
					<td class="btnLightMiddle"><a href="{U_INDEX}" class="submenu">{L_INDEX}</a></td>
					<!-- BEGIN switch_user_logged_in -->
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle"><a href="{U_SEARCH_NEW}" class="submenu">{L_SEARCH_NEW}</a></td>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle"><a href="{U_SEARCH_SELF}" class="submenu">{L_SEARCH_SELF}</a></td>
					<!-- END switch_user_logged_in -->
					<td class="btnLightToLightMiddle" width="9"></td>
			
					<td class="btnLightMiddle"><a href="{U_SEARCH_UNANSWERED}" class="submenu">{L_SEARCH_UNANSWERED}</a></td>
					<!-- BEGIN switch_user_logged_in -->
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle"><a href="{U_MARK_READ}" class="submenu">{L_MARK_FORUMS_READ}</a></td>
					<!-- END switch_user_logged_in -->
					<td class="btnLightRightEnd" width="5"></td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<table width="750" cellpadding="0" cellspacing="0" border="0" bgcolor="#FFFFFF">
  <!-- BEGIN catrow -->
  <tr> 
	<td class="ttitle_left" colspan="2"><h2>{catrow.CAT_DESC}</h2></td>
	<td class="ttitle_mid" align="left"><h3>{L_LASTPOST}</h3></td>
	<td class="ttitle_mid" align="center"><h4>{L_TOPICS}</h4></td>
	<td class="ttitle_right" align="center"><h4>{L_POSTS}</h4></td>
  </tr>
  
  <!-- BEGIN forumrow -->
  <tr> 
	<td class="trow_left" align="center" valign="middle">
		<img src="{catrow.forumrow.FORUM_FOLDER_IMG}" width="35" height="31" alt="{catrow.forumrow.L_FORUM_FOLDER_ALT}" title="{catrow.forumrow.L_FORUM_FOLDER_ALT}" border="0" hspace="0" vspace="0">
	</td>
	<td class="trow_mid" width="350" align="left" valign="top"><h3><a href="{catrow.forumrow.U_VIEWFORUM}">{catrow.forumrow.FORUM_NAME}</h3></a>{catrow.forumrow.FORUM_DESC}</td>
	<td class="trow_mid" align="left" valign="top">{catrow.forumrow.LAST_POST}</td>
	<td class="trow_mid" align="center" valign="middle">{catrow.forumrow.TOPICS}</td>
	<td class="trow_right" align="center"" valign="middle">{catrow.forumrow.POSTS}</td>
  </tr>
  <!-- END forumrow -->
  
  <tr><td colspan="5" class="tspacer"></tr>
  <!-- END catrow -->
</table>

<table  cellspacing="3" border="0" align="center" cellpadding="0">
  <tr> 
	<td align="center"><img src="templates/subSilver/images/folder_new_big.gif" alt="{L_NEW_POSTS}"/></td>
	<td>{L_NEW_POSTS}</td>
	<td align="center"><img src="templates/subSilver/images/folder_big.gif" alt="{L_NO_NEW_POSTS}" /></td>
	<td>{L_NO_NEW_POSTS}</td>
	<td align="center"><img src="templates/subSilver/images/folder_locked_big.gif" alt="{L_FORUM_LOCKED}" /></td>
	<td>{L_FORUM_LOCKED}</td>
  </tr>
</table>
</div>
