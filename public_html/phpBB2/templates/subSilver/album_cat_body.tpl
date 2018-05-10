<form action="{S_ALBUM_ACTION}" method="post">
<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
  <tr>
	<td class="tttitle_left"><h1><a href="{U_ALBUM}">{L_ALBUM}</a> -&gt; <a class="nav" href="{U_VIEW_CAT}">{CAT_TITLE}</a></h1></td>
	<td class="tttitle_right" align="right" style="padding-right: 12px;">		
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
  <!-- BEGIN no_pics -->
  <tr>
	<td class="pmid" colspan="2" align="center" height="90"><h2>{L_NO_PICS}</h2></td>
  </tr>
  <!-- END no_pics -->

  <!-- BEGIN picrow -->
  <tr>
  	<td colspan="2" align="center" class="pmid">
  		<table border="0" width="100%" cellpadding="0" cellspacing="0">
  			<tr>
			  <!-- BEGIN piccol -->
				<td align="center" width="{S_COL_WIDTH}" class="row1" style="padding-top: 9px;"><span class="genmed"><a href="{picrow.piccol.U_PIC}" {TARGET_BLANK}><img src="{picrow.piccol.THUMBNAIL}" border="0" alt="{picrow.piccol.DESC}" title="{picrow.piccol.DESC}" vspace="10" /></a><br />{picrow.piccol.APPROVAL}</span></td>
			  <!-- END piccol -->
			  </tr>
			  <tr>
			  <!-- BEGIN pic_detail -->
				<td style="font-size: 11px;" align="center">
				
				{L_PIC_TITLE}: <strong>{picrow.pic_detail.TITLE}</strong><br />
			  	{picrow.pic_detail.TIME} {picrow.pic_detail.POSTER}<br />
			  	{L_VIEW}: <strong>{picrow.pic_detail.VIEW}</strong> {picrow.pic_detail.RATING}
			  	{picrow.pic_detail.COMMENTS}</span>
				<br/>
				<table border="0" cellpadding="0" cellspacing="0">
					<tr>
						<!-- BEGIN switch_edit -->
						<td class="btnLightLeftEnd" width="5"></td>
						<td class="btnLightMiddle">
							{picrow.pic_detail.EDIT}
						</td>
						<td class="btnLightRightEnd" width="5"></td>
						<!-- END switch_edit -->
						
						<!-- BEGIN switch_delete -->
						<td style="width: 5px;"></td>
		
						<td class="btnLightLeftEnd" width="5"></td>
						<td class="btnLightMiddle">
							{picrow.pic_detail.DELETE}
						</td>
						<td class="btnLightRightEnd" width="5"></td>
						<!-- END switch_delete -->

						<!-- BEGIN switch_lock -->
						<td style="width: 5px;"></td>
						<td class="btnLightLeftEnd" width="5"></td>
						<td class="btnLightMiddle">
							{picrow.pic_detail.LOCK}
						</td>
						<td class="btnLightRightEnd" width="5"></td>
						<!-- END switch_lock -->

						<!-- BEGIN switch_move -->
						<td style="width: 5px;"></td>
						<td class="btnLightLeftEnd" width="5"></td>
						<td class="btnLightMiddle">
							{picrow.pic_detail.MOVE}
						</td>
						<td class="btnLightRightEnd" width="5"></td>
						<!-- END switch_move -->
					</tr>
				</table>
				</td>
			  <!-- END pic_detail -->
  			</tr>
  		</table>
  	</td>
  </tr>
  <!-- END picrow -->
  <tr>
	<td class="pbottom" align="center" colspan="2">
		<table border="0" cellpadding="0" cellspacing="5">
			<tr>
				<td align="left" valign="middle">
					<span class="gensmall">Sortera efter:
					<select name="sort_method" style="width: 90px;">
						<option {SORT_TIME} value='pic_time'>{L_TIME}</option>
						<option {SORT_PIC_TITLE} value='pic_title'>{L_PIC_TITLE}</option>
						<option {SORT_USERNAME} value='username'>{L_USERNAME}</option>
						<option {SORT_VIEW} value='pic_view_count'>{L_VIEW}</option>
						{SORT_RATING_OPTION}
						{SORT_COMMENTS_OPTION}
						{SORT_NEW_COMMENT_OPTION}
					</select>
					<select name="sort_order">
						<option {SORT_ASC} value='ASC' >i {L_ASC}</option>
						<option {SORT_DESC} value='DESC'>i {L_DESC}</option>
					</select>
					<input type="submit" name="submit" value="{L_SORT}" class="liteoption" /></span>
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
</table>
</form>
