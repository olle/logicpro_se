
<form method="post" action="{S_SPLIT_ACTION}">
<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
	<tr> 
		<th class="ptitle" align="left" colspan="3" ><h1>{L_SPLIT_TOPIC}</h1></th>
	</tr>
	<tr> 
		<td class="pmid" colspan="3" align="left">
			<span style="color: #999999; padding-bottom: 8px;">{L_SPLIT_TOPIC_EXPLAIN}</span>
			<br />
		</td>
	</tr>
	<tr>
		<td class="pmid" colspan="3" align="left">
			<table border="0" colspan="2" cellpadding="2">
			<tr>
				<td align="right"><h3>{L_SPLIT_SUBJECT}</h3></td>
				<td align="left"><input class="post" type="text" size="35" style="width: 350px" maxlength="60" name="subject" /></td>
			</tr>			
			<tr>
				<td align="right"><h3>{L_SPLIT_FORUM}</h3></td>
				<td align="left">{S_FORUM_SELECT}</td>
			</tr>			
			</table>
		</td>
	</tr>
	<tr> 
		<td class="pmid" colspan="3" align="center">
			<input class="liteoption" type="submit" name="split_type_all" value="{L_SPLIT_POSTS}" />
			<input class="liteoption" type="submit" name="split_type_beyond" value="{L_SPLIT_AFTER}" />
	  </td>
	</tr>
	<tr> 
	  <th class="tttitle_left"><h3>{L_AUTHOR}</h3></th>
	  <th class="tttitle_mid"><h4>{L_MESSAGE}</h4></th>
	  <th class="tttitle_right"><h4>{L_SELECT}&nbsp;&nbsp;</h4></th>
	</tr>
	<!-- BEGIN postrow -->
	<tr>
		<td class="userrow" rowspan="2" width="101" valign="top" align="left">
			<h2><a name="{postrow.U_POST_ID}">{postrow.ID}</a>{postrow.POSTER_NAME}</h2>
			{postrow.POSTER_RANK}<br>
			{postrow.RANK_IMAGE}{postrow.POSTER_AVATAR}<br><br>
			{postrow.POSTER_JOINED}<br>
			{postrow.POSTER_POSTS}<br>
			{postrow.POSTER_FROM}<br><br>
		</td>
		<td class="daterow" align="right" valign="top">
			{L_POSTED}: {postrow.POST_DATE}
		</td>
		<td class="splitbox_row" align="center" valign="middle" rowspan="3">{postrow.S_SPLIT_CHECKBOX}</td>
	</tr>
	<tr>
		<td class="contentrow" align="left" valign="top">
			<h4>{L_POST_SUBJECT}: {postrow.POST_SUBJECT}</h4>
			{postrow.MESSAGE}
		</td>
	</tr>
	<tr>
		<td class="totop" align="left" valign="middle">
			<a href="#top" style="padding-left: 9px; padding-bottom: 6px;">Till toppen av sidan...</a>
		</td>
		<td class="buttonrow" align="left" valign="bottom">
			{postrow.SIGNATURE}
			<em style="color: #383E4B; font-size: 11px;">{postrow.EDITED_MESSAGE}</em>
		</td>
	</tr>
	<tr><td class="tspacer" colspan="3"></td></tr>
	<!-- END postrow -->
	<tr> 
	  <td colspan="3" align="center"> 
		<input class="liteoption" type="submit" name="split_type_all" value="{L_SPLIT_POSTS}" />
		<input class="liteoption" type="submit" name="split_type_beyond" value="{L_SPLIT_AFTER}" />
		{S_HIDDEN_FIELDS}
	  </td>
	</tr>
</table>
</form>
</div>
