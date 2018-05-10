<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td align="left" valign="top" width="220">
			<div class="browseinfo">
				<!-- h2>{TOPIC_TITLE}</h2 -->
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
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<a href="{U_POST_REPLY_TOPIC}" class="submenu">Besvara</a>
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>
					
					<!-- BEGIN switch_user_logged_in -->
					<td class="btnLightMiddle">
						{S_WATCH_TOPIC}
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>
					<!-- END switch_user_logged_in -->					
					
					<td class="btnLightMiddle">
						<a href="{U_INDEX}" class="submenu">{L_INDEX}</a><span class="submenu"> -&gt;</span>
						<a href="{U_VIEW_FORUM}" class="submenu">{FORUM_NAME}</a></span>
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>

					<td class="btnLightMiddle">
						<a href="{U_VIEW_OLDER_TOPIC}" class="submenu">{L_VIEW_PREVIOUS_TOPIC}</a>
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<a href="{U_VIEW_NEWER_TOPIC}" class="submenu">{L_VIEW_NEXT_TOPIC}</a>
					</td>
					
					<!-- BEGIN switch_pagination -->
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{PAGINATION}</span>
					</td>
					<!-- END switch_pagination -->
					<td class="btnLightRightEnd" width="5"></td>
					
				</tr>
			</table>
		</td>
	</tr>
</table>

<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
	<!-- BEGIN switch_poll -->
	<tr>
		<td class="tttitle_left" align="left" valign="top"><h3>Omröstning</h3></td>
		<td class="tttitle_right">
		</td>
	</tr>
	{POLL_DISPLAY}
	<!-- END switch_poll -->
	<tr>
		<td class="head_mid" colspan="2"><h1>{TOPIC_TITLE}</h1></td>
	</tr>
	<tr>
		<td class="tttitle_left" align="left"><h3>{L_AUTHOR}</h3></td>
		<td class="tttitle_right" align="center"><h3>{L_MESSAGE}</h3></td>
	</tr>
	<!-- BEGIN postrow -->
	<tr>
		<td class="userrow" rowspan="3" width="101" valign="top" align="left">
			<h2><a name="{postrow.U_POST_ID}">{postrow.ID}</a>{postrow.POSTER_NAME}</h2>
			{postrow.POSTER_RANK}<br/>
			{postrow.RANK_IMAGE}{postrow.POSTER_AVATAR}<br/><br/>
			{postrow.POSTER_JOINED}<br/>
			{postrow.POSTER_POSTS}<br/>
			{postrow.POSTER_FROM}<br/><br/>
			{postrow.PM}
		</td>
		<td class="daterow" align="right" valign="top">
			Inlägg Id: {postrow.U_POST_ID}&nbsp;&nbsp;&nbsp;
			{L_POSTED}: {postrow.POST_DATE}
		</td>
	</tr>
	<tr>
		<td class="contentrow" align="left" valign="top">
			{postrow.MESSAGE}
		</td>
	</tr>
	<tr>
		<td class="contentrow" align="left" valign="bottom">
			{postrow.SIGNATURE}
			<em style="color: #383E4B; font-size: 11px;">{postrow.EDITED_MESSAGE}</em>
		</td>
	</tr>
	<tr>
		<td class="totop" align="left" valign="middle">
			<a href="#top" style="padding-left: 9px; padding-bottom: 6px;">Till toppen av sidan...</a>
		</td>
		<td class="buttonrow" align="right" valign="bottom">
			<table cellpadding="0" cellspacing="0" border="0">
				<tr>
					<td class="btnLightLeftEnd" width="5"></td>
					<td class="btnLightMiddle">
						<a href="{U_POST_REPLY_TOPIC}" class="submenu">Besvara</a>
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						{postrow.QUOTE}
					</td>
										
					{postrow.EDIT}

					{postrow.DELETE}
					
					{postrow.IP}
					
					<td class="btnLightRightEnd" width="5"></td>					
				</tr>
			</table>
		</td>
	</tr>
	<tr><td class="tspacer" colspan="2"></td></tr>
	<!-- END postrow -->
	<tr> 
		<form method="post" action="{S_POST_DAYS_ACTION}">
		<td align="left" colspan="2" style="padding-bottom: 14px;"><h4>{L_DISPLAY_POSTS}: {S_SELECT_POST_DAYS}&nbsp;{S_SELECT_POST_ORDER}&nbsp;<input type="submit" value="{L_GO}" class="liteoption" name="submit" /></h4></td>
		</form>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>		
		<td style="padding-bottom: 9px; padding-top: 9px;">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td class="btnLightLeftEnd" width="5"></td>
					<td class="btnLightMiddle">
						<a href="{U_POST_NEW_TOPIC}" class="submenu">{L_POST_NEW_TOPIC}</a>
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>

					<td class="btnLightMiddle">
						<a href="{U_POST_REPLY_TOPIC}" class="submenu">Besvara</a>
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>
					
					<td class="btnLightMiddle">
						<a href="{U_INDEX}" class="submenu">{L_INDEX}</a><span class="submenu"> -&gt;</span>
						<a href="{U_VIEW_FORUM}" class="submenu">{FORUM_NAME}</a></span>
					</td>
					
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<a href="{U_VIEW_OLDER_TOPIC}" class="submenu">{L_VIEW_PREVIOUS_TOPIC}</a>
					</td>
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<a href="{U_VIEW_NEWER_TOPIC}" class="submenu">{L_VIEW_NEXT_TOPIC}</a>
					</td>

					<!-- BEGIN switch_pagination -->
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{PAGINATION}</span>
					</td>					
					<!-- END switch_pagination -->
					
					<td class="btnLightRightEnd" width="5"></td>					
				</tr>
			</table>
			
			<!-- BEGIN switch_admin -->
			<br />
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td class="btnLightLeftEnd" width="5"></td>
					<td class="btnLightMiddle">
						<a href="{U_LOCK_TOPIC}" class="submenu">{L_LOCK_TOPIC}</a>
					</td>
					
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<a href="{U_UNLOCK_TOPIC}" class="submenu">{L_UNLOCK_TOPIC}</a>
					</td>
					
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<a href="{U_MOVE_TOPIC}" class="submenu">{L_MOVE_TOPIC}</a>
					</td>
					
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<a href="{U_SPLIT_TOPIC}" class="submenu">{L_SPLIT_TOPIC}</a>
					</td>
					
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						<a href="{U_DELETE_TOPIC}" class="submenu">{L_DELETE_TOPIC}</a>
					</td>
					
					<td class="btnLightRightEnd" width="5"></td>					
				</tr>
			</table>
			<!-- END switch_admin -->
		</td>
	</tr>
</table>
</div>
