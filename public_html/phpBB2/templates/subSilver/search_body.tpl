
<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<form action="{S_SEARCH_ACTION}" method="POST">
<table width="750" cellpadding="0" cellspacing="0" border="0" bgcolor="#FFFFFF">
	<tr> 
		<td class="ptitle" colspan="4" valign="top"><h1>{L_SEARCH_QUERY}<h1></td>
	</tr>
	<tr>
		<td class="prow_left" width="50"></td>
		<td class="prow_right" valign="top" colspan="3">
			<input type="text" style="width: 300px" class="post" name="search_keywords" />
			&nbsp;&nbsp;<input class="liteoption" type="submit" value="{L_SEARCH}" style="width: 76px;" /><br />
			<input type="radio" name="search_terms" value="any" checked="checked" />{L_SEARCH_ANY_TERMS}<br />
			<input type="radio" name="search_terms" value="all" />{L_SEARCH_ALL_TERMS}
		</td>
	<tr>
		<td class="prow_left"></td>
		<td class="prow_right" colspan="3" align="left">
			<p style="font-size: 11px; padding-top: 9px; padding-bottom: 9px;">
			{L_SEARCH_KEYWORDS_EXPLAIN}
			</p>
		</td>
	</tr>
	<tr> 
		<td class="ptitle" colspan="4" valign="top"><h2>{L_SEARCH_AUTHOR}<h2></td>
	</tr>
	<tr> 
		<td class="prow_left"></td>
		<td class="prow_right" colspan="3" align="left">
			<input type="text" style="width: 300px" class="post" name="search_author" size="30" />
			&nbsp;&nbsp;<input class="liteoption" type="submit" value="{L_SEARCH}" style="width: 76px;" /><br />
			<p style="font-size: 11px; padding-top: 9px; padding-bottom: 9px;">
			{L_SEARCH_AUTHOR_EXPLAIN}
			</p>
		</td>
	</tr>
	<tr> 
		<td class="ptitle" colspan="4" valign="top"><h3>{L_SEARCH_OPTIONS}<h3></td>
	</tr>
	<tr>
		<td class="prow_left"></td>
		<td class="prow_right" valign="top">
			<table border="0" cellpadding="1" cellspacing="2">
				<tr>
					<td align="right" valign="middle">{L_FORUM}</td>
					<td align="left" valign="middle" colspan="2"><select class="post" name="search_forum">{S_FORUM_OPTIONS}</select></td>
				<tr>
					<td align="right" valign="middle">{L_SEARCH_PREVIOUS}</td>
					<td align="left" valign="middle" colspan="2"><select class="post" name="search_time">{S_TIME_OPTIONS}</select></td>
				</tr>
				<tr>
					<td></td>
					<td align="left" valign="middle"><input type="radio" name="search_fields" value="all" checked="checked" />{L_SEARCH_MESSAGE_TITLE}</td>
					<td align="left" valign="middle"><input type="radio" name="search_fields" value="msgonly" />{L_SEARCH_MESSAGE_ONLY}</td>
				</tr>
				<tr>
					<td align="right" valign="middle">{L_SORT_BY}</td>
					<td align="left" valign="middle" colspan="2"><select class="post" name="sort_by">{S_SORT_OPTIONS}</select></td>
				</tr>
				<tr>
					<td></td>
					<td align="left" valign="middle" colspan="2">
						<input type="radio" name="sort_dir" value="ASC" />{L_SORT_ASCENDING}&nbsp;&nbsp;
						<input type="radio" name="sort_dir" value="DESC" checked="checked" />{L_SORT_DESCENDING}
					</td>
				</tr>
				<tr>
					<td align="right" valign="middle">{L_DISPLAY_RESULTS}</td>
					<td align="left" valign="middle" colspan="2">
						<input type="radio" name="show_results" value="posts" />{L_POSTS}&nbsp;&nbsp;
						<input type="radio" name="show_results" value="topics" checked="checked" />{L_TOPICS}
					</td>
				</tr>
				<tr>
					<td align="right" valign="middle">{L_RETURN_FIRST}</td>
					<td align="left" valign="middle" colspan="3">
						<select class="post" name="return_chars">{S_CHARACTER_OPTIONS}</select> {L_CHARACTERS}
					</td>
				</tr>
			</table>
			<br>
		</td>
	</tr>
	<tr> 
		<td class="pbottom" colspan="4" align="center">
			{S_HIDDEN_FIELDS}
			<input class="liteoption" type="submit" value="{L_SEARCH}" style="width: 76px;" />
		</td>
	</tr>
</table>
</form>
</div>
