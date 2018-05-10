<form action="{S_ALBUM_ACTION}" method="post">
<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
	<tr>
	  <th height="25" class="head_mid"><h1>Flytta bilden</h1></th>
	</tr>
	<tr>
	  <td class="pbottom" align="center"><br /><span class="gen">Flytta till kategori:</span> &nbsp; {S_CATEGORY_SELECT} &nbsp; <input class="mainoption" type="submit" name="move" value="{L_MOVE}" /><br />&nbsp;</td>
	</tr>
</table>
<!-- BEGIN pic_id_array -->
<input type="hidden" name="pic_id[]" value="{pic_id_array.VALUE}" />
<!-- END pic_id_array -->
</form>
