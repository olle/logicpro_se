<form action="{S_ALBUM_ACTION}" method="post">
<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
  <tr>
	<td class="tttitle_left" valign="top">
		<h1><a href="{U_ALBUM}">{L_ALBUM}</a> -&gt;
		<a class="nav" href="{U_VIEW_CAT}">{CAT_TITLE}</a> -&gt;
		<a class="nav" href="{U_PIC}">{PIC_TITLE}</h1>
	</td>
	<td class="tttitle_right" align="right" valign="top" style="padding: 9px;">
		<a href="{U_PIC}" {TARGET_BLANK}><img src="{U_THUMBNAIL}" border="0" width="70"></a><br/>
	</td>
  </tr>
</table>
<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
	<!-- BEGIN commentrow -->
	<tr>
		<td class="userrow" rowspan="3" width="101" valign="top" align="left">
			<h2><a name="#{commentrow.ID}"></a>{commentrow.POSTER}</h2>
		</td>
		<td class="daterow" align="right" valign="top">
			{L_POSTED}: {commentrow.TIME}&nbsp;
		</td>
	</tr>
	<tr>
		<td class="contentrow" align="left" valign="top">
			{commentrow.TEXT}<br />
			
		</td>
	</tr>
	<tr>
		<td class="contentrow" align="left" valign="bottom">
			<em style="color: #383E4B; font-size: 11px;">{commentrow.EDIT_INFO}</em>
		</td>
	</tr>
	<tr>
		<td class="totop" align="left" valign="middle">
		</td>
		<td class="buttonrow" align="right" valign="bottom">
			<table cellpadding="0" cellspacing="0" border="0">
				<tr>
					<td class="btnLightLeftEnd" width="5"></td>
					<td class="btnLightMiddle">
						<a href="#post_comment" onClick="document.commentform.comment.focus();return true;" class="submenu">Posta kommentar</a>
					</td>
					
					<!-- BEGIN switch_edit -->
					<td class="btnLightLeftEnd" width="5"></td>
					<td class="btnLightMiddle">
						{commentrow.EDIT}
					</td>
					<!-- END switch_edit -->
					
					<!-- BEGIN switch_delete -->
					<td class="btnLightToLightMiddle" width="9"></td>
					<td class="btnLightMiddle">
						{commentrow.DELETE}
					</td>
					<!-- END switch_delete -->
					
					<td class="btnLightRightEnd" width="5"></td>					
				</tr>
			</table>
		</td>
	</tr>
	<tr><td class="tspacer pmid" colspan="2"></td></tr>	
	<!-- END commentrow -->
<!-- BEGIN switch_comment -->
  <tr>
	<td class="pmid" align="center" colspan="2">
		<table border="0" cellpadding="0" cellspacing="5">
			<tr>
				<td align="left" valign="middle">
					<span class="gensmall">{L_ORDER}:</span>
					<select name="sort_order">
						<option {SORT_ASC} value='ASC'>{L_ASC}</option>
						<option {SORT_DESC} value='DESC'>{L_DESC}</option>
					</select>
					<input type="submit" name="submit" value="{L_SORT}" class="liteoption" />
				</td>
				<!-- BEGIN switch_pagination -->
				<td align="left" valign="middle">
					<table cellpadding="0" cellspacing="0" border="0" >	
					  <tr>
					    <td class="btnLightLeftEnd" width="5"></td>
						<td class="btnLightMiddle">
						  <span class="submenu">{PAGINATION}</span>		  
						</td>
						<td class="btnLightRightEnd" width="5"></td>
					  </tr>
					</table>
				</td>
				<!-- END switch_pagination -->
			</tr>
		</table>
	</td>
  </tr>
<!-- END switch_comment -->
</table>
</form>

<script language="JavaScript" type="text/javascript">
<!--
function checkForm() {
	formErrors = false;

	if (document.commentform.comment.value.length < 2) {
		formErrors = "{L_COMMENT_NO_TEXT}";
	} else if (document.commentform.comment.value.length > {S_MAX_LENGTH}) {
		formErrors = "{L_COMMENT_TOO_LONG}";
	}

	if (formErrors) {
		alert(formErrors);
		return false;
	} else {
		return true;
	}
}
// -->
</script>

<!-- BEGIN switch_comment_post -->
<a name="post_comment"></a>
<form name="commentform" action="{S_ALBUM_ACTION}" method="post" onsubmit="return checkForm();">
<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
  <tr><td class="tspacer pmid" colspan="2"></td></tr>	
  <tr>
	<td class="prow_left" valign="top"><span class="genmed"><h3>Posta din kommentar:</h3>
		<span style="color: #999; font-size: 11px;">{L_MAX_LENGTH}: <b>{S_MAX_LENGTH}</b></span></td>
	<td class="prow_right" valign="top" align="right">
		<textarea name="comment" class="post" cols="70" rows="5" style="width: 572px; height: 73px;">{S_MESSAGE}</textarea>
	</td>
  </tr>
  <tr>
	<td class="pbottom" align="right" colspan="2">
		<input type="submit" name="submit" value="{L_SUBMIT}" class="mainoption" style="width: 93px;" />
	</td>
  </tr>
</table>
</form>
<!-- END switch_comment_post -->
