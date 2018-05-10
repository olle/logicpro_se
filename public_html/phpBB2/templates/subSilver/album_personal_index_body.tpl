<form method="post" action="{S_MODE_ACTION}">
<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
  <tr>
	<td class="head_mid" valign="top" colspan="3">
		<h1><a href="{U_ALBUM}">{L_ALBUM}</a> -&gt; {L_USERS_PERSONAL_GALLERIES}
	</td>
  </tr>
  <!-- tr>
    <td align="center" nowrap="nowrap" class="pmid" colspan="3">
		<table border="0" cellpadding="0" cellspacing="5">
			<tr>
				<td align="left" valign="middle">
			    	<span class="gensmall">
			    		{L_SELECT_SORT_METHOD}: {S_MODE_SELECT} {S_ORDER_SELECT}
			    		<input type="submit" name="submit" value="{L_SORT}" class="liteoption" />
					</span>
				</td>
				<! - -  BEGIN switch_pagination - - >
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
				<! - - END switch_pagination - - >
			</tr>
		</table>
	</td>
  </tr -->
  
  <tr><td class="tspacer pmid" colspan="3"></td></tr>
  <tr>
	<th class="ttitle_left" align="left"><h3>{L_USERS_PERSONAL_GALLERIES}</h3></th>
	<th class="ttitle_mid" align="left"><h3>&nbsp;&nbsp;{L_PICS}</h3></th>
	<th class="ttitle_right" align="right"><h4>{L_JOINED}&nbsp;&nbsp;</h4></th>
  </tr>
  <!-- BEGIN memberrow -->
  <tr>
	<td class="prow_left" style="padding: 9px;"><h4><a href="{memberrow.U_VIEWGALLERY}">{memberrow.USERNAME}</a></h4></td>
	<td class="prow_mid" style="padding: 9px;">{memberrow.PICS}</td>
	<td class="prow_right" align="right" style="padding: 9px; font-size: 11px; color: #999;">{memberrow.JOINED}</td>
  </tr>
  <!-- END memberrow -->
  <tr><td class="tspacer pmid" colspan="3"></td></tr>
  <tr>
    <td align="center" nowrap="nowrap" class="pmid" colspan="3">
		<table border="0" cellpadding="0" cellspacing="5">
			<tr>
				<td align="left" valign="middle">
			    	<span class="gensmall">
			    		{L_SELECT_SORT_METHOD}: {S_MODE_SELECT} {S_ORDER_SELECT}
			    		<input type="submit" name="submit" value="{L_SORT}" class="liteoption" />
					</span>
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
  <tr>
	  <td class="pbottom" colspan="3">&nbsp;</td>
  </tr>
</table>
</form>