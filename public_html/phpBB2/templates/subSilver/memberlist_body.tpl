
<form method="post" action="{S_MODE_ACTION}">
<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="750" cellpadding="0" cellspacing="0" border="0" bgcolor="#FFFFFF">
	<tr>
		<td class="ptitle" colspan="8" align="left"><h1>Medlemmar</h1></td>
	</tr>
		<td class="pmid" colspan="8" align="left">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<!-- BEGIN switch_pagination -->
					<td class="btnLightLeftEnd" width="5"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{PAGINATION}</span>
					</td>
					<td class="btnLightRightEnd" width="5"></td>
					<!-- END switch_pagination -->					
				</tr>
			</table>
		</td>
	<tr>
	</td>
	<tr>
	  	<td class="pmid" align="right" colspan="8">
	  		{L_SELECT_SORT_METHOD}:&nbsp;{S_MODE_SELECT}&nbsp;&nbsp;
	  		{L_ORDER}&nbsp;{S_ORDER_SELECT}&nbsp;&nbsp;
			<input type="submit" name="submit" value="{L_SUBMIT}" class="liteoption" />
		</td>
	</tr>
	<tr>
		<th class="ttitle_left" width="9">&nbsp;</th>
	  	<th class="ttitle_mid" align="left" ><h3>{L_USERNAME}</h3></th>
	  	<th class="ttitle_mid" align="left" valign="middle"><h4>Kontakt</h4></th>
	  	<th class="ttitle_mid" align="left" valign="middle"><h4>{L_FROM}</h4></th>
	  	<th class="ttitle_mid" valign="middle"><h4>{L_JOINED}</h4></th>
	  	<th class="ttitle_mid" valign="middle"><h4>{L_POSTS}</h4></th>
	  	<th class="ttitle_right" valign="middle"><h4>{L_WEBSITE}</h4></th>
	</tr>
	<!-- BEGIN memberrow -->
	<tr>
		<td class="trow_left">&nbsp;</td>
	  	<td class="trow_mid" align="left"><a href="{memberrow.U_VIEWPROFILE}"><strong>{memberrow.USERNAME}</strong></a></td>
	  	<td class="trow_mid" align="left">
	  		{memberrow.PM_IMG}&nbsp;
	  		{memberrow.EMAIL_IMG}
	  	</td>
	  	<td class="trow_mid" align="left" valign="middle"><span class="gen">{memberrow.FROM}</span></td>
	  	<td class="trow_mid" align="center" valign="middle"><span class="gensmall">{memberrow.JOINED}</span></td>
	  	<td class="trow_mid" align="right" valign="middle"><span class="gen">{memberrow.POSTS}</span></td>
	  	<td class="trow_right" align="center">&nbsp;{memberrow.WWW_IMG}&nbsp;</td>
	</tr>
	<!-- END memberrow -->
	<tr> 
		<td class="pbottom" colspan="8">
			<table border="0" cellpadding="0" cellspacing="0">
				<tr>
					<!-- BEGIN switch_pagination -->
					<td class="btnLightLeftEnd" width="5"></td>
					<td class="btnLightMiddle">
						<span class="submenu">{PAGINATION}</span>
					</td>
					<td class="btnLightRightEnd" width="5"></td>
					<!-- END switch_pagination -->					
				</tr>
			</table>		
		</td>
	</tr>
</table>
</form>
