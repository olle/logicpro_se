<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
  <tr>
	<td class="tttitle_left"><h1><a href="{U_ALBUM}">{L_ALBUM}</a> -&gt;
	<a class="nav" href="{U_VIEW_CAT}">{CAT_TITLE}</a> -&gt;
	<a class="nav" href="#">{PIC_TITLE}</a>
	</h1></td>
	<td class="tttitle_right">&nbsp;</td>
  </tr>
  <tr>
	<th class="prow_left" align="left" valign="top">
		<div style="padding-top: 7px; font-size: 11px; color: #999;">
		  {L_PIC_DESC}: {PIC_DESC}
		</div>
	</th>
	<th class="prow_right" align="right" valign="top">
		<div style="padding-right: 12px; padding-top: 7px; font-size: 11px; color: #999;">
			{L_POSTED}: {PIC_TIME}</br>
			{L_POSTER}: {POSTER}<br/>
			{L_VIEW}: <strong>{PIC_VIEW}</strong><br/>
		</div>
	</th>	
  </tr>
  <tr>
	<td class="pmid" colspan="2" align="center"><img src="{U_PIC}" border="0" vspace="10" alt="{PIC_TITLE}" title="{PIC_TITLE}" /></td>
  </tr>
  <tr>
	<td class="pbottom" colspan="2" align="center" height="28">
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td class="btnLightLeftEnd" width="5"></td>
				<td class="btnLightMiddle">
					<a href="{U_PREVIOUS}" class="submenu">{L_PREVIOUS}</a>
					<a href="{U_PREVIOUS}" class="submenu" style="width: 130px;">tillbaka</a>
				</td>
				<td class="btnLightRightEnd" width="5"></td>					

				<td style="width: 9px;"></td>

			    <!-- BEGIN comment_switch -->
				<td class="btnLightLeftEnd" width="5"></td>
				<td class="btnLightMiddle">
					<a href="{U_COMMENT}" class="submenu">{L_COMMENTS}: <strong>{PIC_COMMENTS}</strong></a>
				</td>
				<td class="btnLightRightEnd" width="5"></td>					
			    <!-- END comment_switch -->		  

				<td style="width: 9px;"></td>

	            <!-- BEGIN rate_switch -->
				<td class="btnLightLeftEnd" width="5"></td>
				<td class="btnLightMiddle">
	    	        <a href="{U_RATE}" class="submenu">{L_RATING}: <strong>{PIC_RATING}</strong></a>
				</td>
				<td class="btnLightRightEnd" width="5"></td>					
			    <!-- END rate_switch -->

				<td style="width: 9px;"></td>

				<td class="btnLightLeftEnd" width="5"></td>
				<td class="btnLightMiddle">
					<a href="{U_NEXT}" class="submenu" style="width: 130px;">nästa</a>
					<a href="{U_NEXT}" class="submenu">{L_NEXT}</a>
				</td>
				<td class="btnLightRightEnd" width="5"></td>					
			</tr>
		</table>
	</td>
  </tr>
</table>