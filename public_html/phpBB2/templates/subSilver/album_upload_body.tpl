<script language="JavaScript" type="text/javascript">
<!--
function checkAlbumForm() {
	formErrors = false;

	if (document.upload.pic_title.value.length < 2)
	{
		formErrors = "{L_UPLOAD_NO_TITLE}";
	}
	else if (document.upload.pic_file.value.length < 2)
	{
		formErrors = "{L_UPLOAD_NO_FILE}";
	}
	else if (document.upload.pic_desc.value.length > {S_PIC_DESC_MAX_LENGTH})
	{
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

<form name="upload" action="{S_ALBUM_ACTION}" method="post" enctype="multipart/form-data" onSubmit="return checkAlbumForm()">
<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
  <tr>
	<td class="head_mid" colspan="2"><h1><a href="{U_ALBUM}">{L_ALBUM}</a> -&gt;
	<a class="nav" href="{U_VIEW_CAT}">{CAT_TITLE}</a> -&gt;
	{L_UPLOAD_PIC}</h1></td>
  </tr>
  <tr>
	<td class="prow_left" align="right"><h3>{L_PIC_TITLE}:</h3></td>
	<td class="prow_right"><input class="post" type="text" name="pic_title" size="35" /></td>
  </tr>
  <tr>
	<td class="prow_left" valign="top" align="right"><h3>{L_PIC_DESC}:</h3><br/>
		<span style="color:#999; font-size: 11px;">Bara vanliga tecken, ej HTML, BBCode eller emoticons. {L_MAX_LENGTH}: <b>{S_PIC_DESC_MAX_LENGTH}</b></span>
	</td>
	<td class="prow_right"><textarea class="post" cols="70" rows="4" name="pic_desc" size="60"></textarea></td>
  </tr>
  <tr>
	<td class="prow_left" valign="middle" align="right"><h3>{L_UPLOAD_PIC_FROM_MACHINE}:</h3></td>
	<td class="prow_right"><input class="post" type="file" name="pic_file" size="49" /></td>
  </tr>
  <!-- BEGIN switch_manual_thumbnail -->
  <tr>
	<td class="prow_left" valign="middle" align="right"><h3>{L_UPLOAD_THUMBNAIL}:</h3><br />
		<span style="color:#999; font-size: 11px;">{L_UPLOAD_THUMBNAIL_EXPLAIN}</span>
	</td>
	<td class="prow_right"><input class="post" type="file" name="pic_thumbnail" size="49" /></td>
  </tr>
  <tr>
	<td class="prow_left" align="right"><h3>{L_THUMBNAIL_SIZE}:</h3></td>
	<td class="prow_right"><span class="gen"><b>{S_THUMBNAIL_SIZE}</b></span></td>
  </tr>
  <!-- END switch_manual_thumbnail -->
  <tr>
	<td class="prow_left" align="right"><h3>{L_UPLOAD_TO_CATEGORY}:</h3></td>
	<td class="prow_right">{SELECT_CAT}</td>
  </tr>
  <tr>
	<td class="prow_left" align="right"><h3>{L_MAX_FILESIZE}:</h3></td>
	<td class="prow_right"><span class="gen"><b>{S_MAX_FILESIZE}</b></span></td>
  </tr>
  <tr>
	<td class="prow_left" align="right"><h3>Största tillåtna bildstorlek:</h3></td>
	<td class="prow_right"><span class="gen"><b>{S_MAX_WIDTH} x {S_MAX_HEIGHT}</b></span></td>
  </tr>
  <tr>
	<td class="prow_left" align="right"><h3>Bildformat som är tillåtna:</h3></td>
	<td class="prow_right" style="color: #999;">
		JPEG/JPG: <strong>{S_JPG}</strong> &nbsp;&nbsp;
		PNG: <strong>{S_PNG}</strong> &nbsp;&nbsp;
		GIF: <strong>{S_GIF}</strong>
	</td>
  </tr>
  <tr>
	<td class="pbottom" align="center" colspan="2"><input type="reset" value="{L_RESET}" class="liteoption" />&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="{L_SUBMIT}" class="mainoption" /></td>
  </tr>
</table>
</form>