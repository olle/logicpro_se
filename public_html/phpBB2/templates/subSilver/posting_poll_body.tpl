
<tr>
	<th class="pmid" colspan="2" align="left"><h2>{L_ADD_A_POLL}<h2></th>
</tr>
<tr>
	<td class="prow_left"></td>
	<td class="prow_right"><div style="color: #999999;">{L_ADD_POLL_EXPLAIN}</div></td>
</tr>
<tr>
	<td class="prow_left" align="right"><h3>{L_POLL_QUESTION}</h3></td>
	<td class="prow_right" align="left"><input type="text" name="poll_title" style="width: 400px;" maxlength="255" class="post" value="{POLL_TITLE}" /></span></td>
</tr>
<!-- BEGIN poll_option_rows -->
<tr>
	<td class="prow_left" align="right"><h3>{L_POLL_OPTION}</h3></td>
	<td class="prow_right" align="left"><input type="text" name="poll_option_text[{poll_option_rows.S_POLL_OPTION_NUM}]" style="width: 400px;" class="post" maxlength="255" value="{poll_option_rows.POLL_OPTION}" /></span> &nbsp;<input type="submit" name="edit_poll_option" value="{L_UPDATE_OPTION}" class="liteoption" /> <input type="submit" name="del_poll_option[{poll_option_rows.S_POLL_OPTION_NUM}]" value="{L_DELETE_OPTION}" class="liteoption" /></td>
</tr>
<!-- END poll_option_rows -->
<tr>
	<td class="prow_left" align="right"><h3>{L_POLL_OPTION}</h3></span></td>
	<td class="prow_right" align="left"><input type="text" name="add_poll_option_text" style="width: 400px;" maxlength="255" class="post" value="{ADD_POLL_OPTION}" /></span> &nbsp;<input type="submit" name="add_poll_option" value="{L_ADD_OPTION}" class="liteoption" /></td>
</tr>
<tr>
	<td class="prow_left" align="right"><h3>{L_POLL_LENGTH}</h3></td>
	<td class="prow_right" align="left"><input type="text" name="poll_length" style="width: 40px;" maxlength="3" class="post" value="{POLL_LENGTH}" />{L_DAYS}&nbsp;<span style="color: #999999;">{L_POLL_LENGTH_EXPLAIN}</span></td>
</tr>
<!-- BEGIN switch_poll_delete_toggle -->
<tr>
	<td class="prow_left"><span class="gen"><b>{L_POLL_DELETE}</b></span></td>
	<td class="prow_right"><input type="checkbox" name="poll_delete" /></td>
</tr>
<!-- END switch_poll_delete_toggle -->
