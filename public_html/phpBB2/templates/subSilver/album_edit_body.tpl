<script language="JavaScript" type="text/javascript">
<!--
function checkAlbumForm() {
	formErrors = false;

	if (document.editform.pic_title.value.length < 2) {
		formErrors = "{L_UPLOAD_NO_TITLE}";
	} else if (document.editform.pic_desc.value.length > {S_PIC_DESC_MAX_LENGTH}) {
		formErrors = "{L_DESC_TOO_LONG}";
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

<form name="editform" action="{S_ALBUM_ACTION}" method="post" onsubmit="return checkAlbumForm()">
<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
  <tr>
	<td class="head_mid" valign="top" colspan="2">
		<h1><a href="{U_ALBUM}">{L_ALBUM}</a> -&gt;
		<a class="nav" href="{U_VIEW_CAT}">{CAT_TITLE}</a> -&gt;
		<a class="nav" href="{U_PIC}">{PIC_TITLE}</h1>
	</td>
  </tr>
  <tr>
	<th class="pmid" align="left" colspan="2"><h2>{L_EDIT_PIC_INFO}<h2></th>
  </tr>
  <tr>
	<td class="prow_left" width="30%" align="right" height="28"><h3>{L_PIC_TITLE}:</h3></td>
	<td class="prow_right"><input class="post" type="text" name="pic_title" size="60" value="{PIC_TITLE}" /></td>
  </tr>
  <tr>
	<td class="prow_left" valign="top" align="right" width="30%" height="28">
		<h3>{L_PIC_DESC}:</h3><br />
		<span style="color:#999; font-size: 11px;">Bara vanliga tecken, ej HTML, BBCode eller emoticons. {L_MAX_LENGTH}: <b>{S_PIC_DESC_MAX_LENGTH}</b></span></td>
	<td class="prow_right"><textarea class="post" cols="70" rows="4" name="pic_desc" size="60">{PIC_DESC}</textarea></td>
  </tr>
  <tr>
	<td class="pbottom" align="center" colspan="2">
		<input type="reset" value="{L_RESET}" class="liteoption" />&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="{L_SUBMIT}" class="mainoption" /></td>
  </tr>
</table>
</form>
