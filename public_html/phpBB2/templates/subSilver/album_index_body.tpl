<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
  <tr>
	<td colspan="2" class="tttitle_left"><h1><a href="{U_ALBUM}">{L_ALBUM}</a></h1></td>
	<td class="tttitle_right" colspan="2" align="right" style="padding-right: 12px;">
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td class="btnLightLeftEnd" width="5"></td>
				<td class="btnLightMiddle">
					<a href="{U_UPLOAD_PIC}" class="submenu">Ladda upp en bild</a>
				</td>
				<td class="btnLightRightEnd" width="5"></td>					
			</tr>
		</table>
	</td>
  </tr>
  <tr>
	<th class="ttitle_left" colspan="2" align="left"><h2>{L_CATEGORY}</h2></th>
	<th class="ttitle_mid" nowrap="nowrap" align="left"><h4>{L_LAST_PIC}</h4></th>
	<th class="ttitle_right" align="center"><h4>{L_PICS}</h4></th>
  </tr>
  <!-- BEGIN catrow -->
  <tr> 
	<td class="trow_left" align="middle" valign="middle">
		<img src="{ALBUM_FOLDER_IMG}" width="40" height="38" alt="" title="" border="0" hspace="0" vspace="0">
	</td>
	<td class="trow_mid" width="450" align="left" valign="middle"><h3><a href="{catrow.U_VIEW_CAT}" class="forumlink">{catrow.CAT_TITLE}</a></h3></a>{catrow.CAT_DESC}</td>
	<td class="trow_mid" align="left" valign="top">{catrow.LAST_PIC_INFO}</td>
	<td class="trow_right" width="50" align="center" valign="middle">{catrow.PICS}</td>
  </tr>   
  <!-- END catrow -->
  <tr> 
	<td class="trow_left" align="middle" valign="middle">
		<img src="{ALBUM_FOLDER_IMG}" width="40" height="38" alt="" title="" border="0" hspace="0" vspace="0">
	</td>
	<td class="trow_right" colspan="3" width="50" align="left" valign="middle">
		<h3><a href="{U_USERS_PERSONAL_GALLERIES}" class="cattitle">{L_USERS_PERSONAL_GALLERIES}</a></h3>
		Här kan du hitta medlemmarnas privata gallerier.
	</td>
  </tr>
  <tr> 
	<td class="trow_left" align="middle" valign="middle">
		<img src="{ALBUM_FOLDER_IMG}" width="40" height="38" alt="" title="" border="0" hspace="0" vspace="0">
	</td>
	<td class="trow_right" colspan="3" width="50" align="left" valign="middle">
		<h3><a href="{U_YOUR_PERSONAL_GALLERY}" class="cattitle">{L_YOUR_PERSONAL_GALLERY}</a></h3>
		Gå direkt till ditt eget galleri.
	</td>
  </tr>
</table>
<br/>

<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
  <tr>
	<th class="ptitle" colspan="{S_COLS}" align="left"><h2>De senaste bilderna...</h2></th>
  </tr>
  <!-- BEGIN no_pics -->
  <tr>
	<td class="pmid" align="center" colspan="{S_COLS}" height="50"><span class="gen">{L_NO_PICS}</span></td>
  </tr>
  <!-- END no_pics -->
  <!-- BEGIN recent_pics -->
  <tr>
  	<td class="pmid">
  		<table border="0" width="100%">
  			<tr>
			  <!-- BEGIN recent_col -->
				<td class="" width="{S_COL_WIDTH}" align="center" valign="middle">
					<a href="{recent_pics.recent_col.U_PIC}" {TARGET_BLANK}><img src="{recent_pics.recent_col.THUMBNAIL}" border="0" alt="{recent_pics.recent_col.DESC}" title="{recent_pics.recent_col.DESC}" vspace="10" /></a></td>
			  <!-- END recent_col -->
			  </tr>
			  <tr>
			  <!-- BEGIN recent_detail -->
			    <td style="font-size: 11px;" align="center">{L_PIC_TITLE}: <strong>{recent_pics.recent_detail.TITLE}</strong><br />
			  	{recent_pics.recent_detail.TIME} {recent_pics.recent_detail.POSTER}<br />
			  	{L_VIEW}: <strong>{recent_pics.recent_detail.VIEW}</strong> {recent_pics.recent_detail.RATING}
			  	{recent_pics.recent_detail.COMMENTS}</span>
				</td>
			  <!-- END recent_detail -->
  			</tr>
  		</table>
  	</td>
  </tr>
  <!-- END recent_pics -->
  <tr>
	<td class="pbottom" colspan="{S_COLS}"></td>
  </tr>  
</table>