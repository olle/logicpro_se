<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td align="left" valign="top" width="220">
			<div class="browseinfo">
				<h2>{FORUM_NAME}</h2>
				{FORUM_DESC}<br>
				{L_MODERATOR} : {MODERATORS}<br><br>
				<h3>Rättigheter i forumet</h3>
				{S_AUTH_LIST}	
			</div>
		</td>
		<td align="left" valign="top">
			{CURRENT_STATS}
		</td>
		<td align="left" valign="top" width="270">
			{LATEST_TOPICS}
		</td>
	</tr>
	<tr>		
		<td colspan="3" style="padding-bottom: 9px; padding-top: 9px;">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td class="btnLightLeftEnd" width="5"></td>
					<td class="btnLightMiddle">
						<a href="{U_POST_NEW_TOPIC}" class="submenu">{L_POST_NEW_TOPIC}</a>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<a href="{U_INDEX}" class="submenu">{L_INDEX}</a><span class="submenu"> -&gt;</span>
						<a href="{U_VIEW_FORUM}" class="submenu">{FORUM_NAME}</a></span>
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle"><a href="{U_MARK_READ}" class="submenu">{L_MARK_TOPICS_READ}</a></td>
					
					<!-- BEGIN switch_pagination -->
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{PAGINATION}</span>
					<!-- END switch_pagination -->
					<td class="btnLightRightEnd" width="5"></td>					
				</tr>
			</table>
		</td>
	</tr>
</table>

<form method="post" action="{S_POST_DAYS_ACTION}">
<table width="750" cellpadding="0" cellspacing="0" border="0" bgcolor="#FFFFFF">
	<tr> 
	  	<th colspan="2" align="left" class="ttitle_left"><h2>{L_TOPICS}</h2></th>
	  	<th class="ttitle_mid" align="left"><h4>{L_LASTPOST}</h4></th>
	  	<th align="left" class="ttitle_mid"><h4>{L_AUTHOR}</h4></th>
	  	<th align="center" class="ttitle_mid"><h4>{L_REPLIES}</h4></th>
	  	<th align="center" class="ttitle_right"><h4>{L_VIEWS}</h4></th>
	</tr>
	<!-- BEGIN topicrow -->
	<tr> 
	  	<td class="trow_left" align="center" valign="middle">
	  		<img src="{topicrow.TOPIC_FOLDER_IMG}" alt="{topicrow.L_TOPIC_FOLDER_ALT}" title="{topicrow.L_TOPIC_FOLDER_ALT}">
	  	</td>
	  	<td class="trow_mid" width="350" align="left" valign="top"><h4><a href="{topicrow.U_VIEW_TOPIC}">{topicrow.TOPIC_TITLE}</a></h4>
	  		{topicrow.GOTO_PAGE}
	  	</td>
	  	<td class="trow_mid" align="left" valign="top">
	  		{topicrow.LAST_POST_TIME}<br />
	  		{topicrow.LAST_POST_AUTHOR} {topicrow.LAST_POST_IMG}
	  	</td>
	  	<td class="trow_mid" align="left" valign="top">{topicrow.TOPIC_AUTHOR}</td>
	  	<td class="trow_mid" align="right" valign="middle">{topicrow.REPLIES}</td>
	  	<td class="trow_right" align="right" valign="middle">{topicrow.VIEWS}&nbsp;&nbsp;</td>
	</tr>
	<!-- END topicrow -->
	<!-- BEGIN switch_no_topics -->
	<tr> 
	  	<td class="trow_left"></td>
		<td class="trow_mid" colspan="4" align="left" valign="top"><h2>{L_NO_TOPICS}</h2></td>
	  	<td class="trow_right">
	</tr>
	<!-- END switch_no_topics -->
	<tr> 
	  	<td class="pbottom" style="padding-top: 14px;" align="left" valign="top" colspan="6">
	  		<h4>{L_DISPLAY_TOPICS}&nbsp;{S_SELECT_TOPIC_DAYS}&nbsp;
			<input type="submit" class="liteoption" value="{L_GO}" name="submit" /></h4>
		</td>
	</tr>
</table>
</form>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>		
		<td style="padding-bottom: 9px; padding-top: 9px;">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td class="btnLightLeftEnd" width="5"></td>
					<td class="btnLightMiddle">
						<a href="{U_POST_NEW_TOPIC}" class="submenu">{L_POST_NEW_TOPIC}</a>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<a href="{U_INDEX}" class="submenu">{L_INDEX}</a><span class="submenu"> -&gt;</span>
						<a href="{U_VIEW_FORUM}" class="submenu">{FORUM_NAME}</a></span>
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle"><a href="{U_MARK_READ}" class="submenu">{L_MARK_TOPICS_READ}</a></td>
					
					<!-- BEGIN switch_pagination -->
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{PAGINATION}</span>
					<!-- END switch_pagination -->
					<td class="btnLightRightEnd" width="5"></td>					
				</tr>
			</table>
		</td>
	</tr>
</table>

<table cellspacing="3" cellpadding="0" border="0" align="center">
	<tr>
		<td align="left"><img src="{FOLDER_NEW_IMG}" alt="{L_NEW_POSTS}"></td>
		<td>{L_NEW_POSTS}</td>
		<td align="center"><img src="{FOLDER_IMG}" alt="{L_NO_NEW_POSTS}"></td>
		<td>{L_NO_NEW_POSTS}</td>
		<td align="center"><img src="{FOLDER_ANNOUNCE_IMG}" alt="{L_ANNOUNCEMENT}"></td>
		<td>{L_ANNOUNCEMENT}</td>
	</tr>
	<tr> 
		<td width="20" align="center"><img src="{FOLDER_HOT_NEW_IMG}" alt="{L_NEW_POSTS_HOT}"></td>
		<td class="gensmall">{L_NEW_POSTS_HOT}</td>
		<td width="20" align="center"><img src="{FOLDER_HOT_IMG}" alt="{L_NO_NEW_POSTS_HOT}"></td>
		<td class="gensmall">{L_NO_NEW_POSTS_HOT}</td>
		<td width="20" align="center"><img src="{FOLDER_STICKY_IMG}" alt="{L_STICKY}"></td>
		<td class="gensmall">{L_STICKY}</td>
	</tr>
	<tr>
		<td class="gensmall"><img src="{FOLDER_LOCKED_NEW_IMG}" alt="{L_NEW_POSTS_LOCKED}"></td>
		<td class="gensmall">{L_NEW_POSTS_LOCKED}</td>
		<td class="gensmall"><img src="{FOLDER_LOCKED_IMG}" alt="{L_NO_NEW_POSTS_LOCKED}"></td>
		<td class="gensmall">{L_NO_NEW_POSTS_LOCKED}</td>
	</tr>
</table>
</div>
