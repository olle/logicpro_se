 
<form action="{S_LOGIN_ACTION}" method="post" target="_top">
<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="750" cellpadding="0" cellspacing="0" border="0" bgcolor="#FFFFFF">
	<tr> 
		<th class="ptitle" align="left"><h2>{L_ENTER_PASSWORD}</h2></th>
  	</tr>
  	<tr> 
		<td class="pbottom">
			<table border="0" cellpadding="3" cellspacing="1" width="100%">
		  		<tr> 
					<td colspan="2" align="center">&nbsp;</td>
		  		</tr>
		  		<tr> 
					<td width="45%" align="right">
						<h3>{L_USERNAME}:</h3>
					</td>
					<td> 
			  			<input type="text" name="username" style="width: 150px;" maxlength="40" value="{USERNAME}" />
					</td>
				</tr>
		 		<tr> 
					<td align="right">
						<h3>{L_PASSWORD}:</h3>
					</td>
					<td> 
						<input type="password" name="password" style="width: 150px;" maxlength="32" />
					</td>
				</tr>
				<tr align="center"> 
					<td colspan="2">
						{L_AUTO_LOGIN}: <input type="checkbox" name="autologin" />
					</td>
				</tr>
				<tr align="center"> 
					<td colspan="2">
						{S_HIDDEN_FIELDS}
						<input type="submit" name="login" class="mainoption" style="width: 111px;" value="{L_LOGIN}" />
					</td>
				</tr>
				<tr align="center"> 
					<td colspan="2">
						<a href="{U_SEND_PASSWORD}" class="gensmall">{L_SEND_PASSWORD}</a>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</div>
</form>
