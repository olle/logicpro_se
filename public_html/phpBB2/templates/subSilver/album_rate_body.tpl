<script language="JavaScript" type="text/javascript">
<!--
function checkRateForm() {
	if (document.rateform.rate.value == -1)	{
		return false;
	} else {
		return true;
	}
}
// -->
</script>

<form name="rateform" action="{S_ALBUM_ACTION}" method="post" onsubmit="return checkRateForm();">
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
  <tr>
  	<td class="pmid" align="center" colspan="2">
		<h3>Bilden har just nu betyget: {PIC_RATING}</h3><br/><br/>
  		<span>Betygsätt bilden:
  			<select name="rate">
				<!-- BEGIN rate_row -->
				<option value="{rate_row.POINT}">{rate_row.POINT}</option>
				<!-- END rate_row -->
			</select>
			<input type="submit" name="submit" value="{L_SUBMIT}" class="mainoption" style="width: 70px;"/>
		</span>
  	</td>
  </tr>
  <tr>
  	<td colspan="2" class="pbottom">&nbsp;</td>
  </tr>
</table>
</form>
