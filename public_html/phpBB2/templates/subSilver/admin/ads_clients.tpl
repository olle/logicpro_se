<table width="100%" cellpadding="0" cellspacing="0" border="0" align="center">
  <tr> 
	<td align="center" > 
	  <table width="100%" cellpadding="2" cellspacing="1" border="0" class="forumline">
		<tr> 
		  <th class="thHead" colspan="8">
		  	<b>Kunder</b><br>
		  	<div align="left">
			  	<input type="button" value="Visa info" onClick="document.location='{L_SHOW_INFO}';return true;">
			  	<input type="button" value="Göm info" onClick="document.location='{L_HIDE_INFO}';return true;">		  	
			  	&nbsp;&nbsp;&nbsp;&nbsp;
			  	<input type="button" value="&nbsp;&nbsp;&nbsp;&nbsp;Lägg till en ny kund&nbsp;&nbsp;&nbsp;&nbsp;" onClick="document.location='{L_ADD_CLIENT}';return true;">
		  	</div>
		  </th>
		</tr>
		<tr> 
		  <td class="catSides"><span class="cattitle">Id</span></td>
		  <td class="catSides"><span class="cattitle"><a href="{L_NAME_SORT}">Namn</a></span></td>
		  <td class="catSides"><span class="cattitle"><a href="{L_CONTACT_SORT}">Kontaktperson</a></span></td>
		  <td class="catSides"><span class="cattitle"><a href="{L_EMAIL_SORT}">Email</a></span></td>		  
		  <td class="catSides"><span class="cattitle">Telefon</span></td>
		  <td class="catSides"><span class="cattitle">Mobil</span></td>
		  <td class="catSides"><span class="cattitle">Banners</span></td>
		  <td class="catSides"><span class="cattitle">&nbsp;</span></td>
		</tr>
		<!-- BEGIN client_list -->
		<tr> 
		  <td class="row1"><span class="genmed">{client_list.ID}</a></span></td>
		  <td class="row1"><span class="genmed">{client_list.NAME}</a></span></td>
		  <td class="row1"><span class="genmed">{client_list.CONTACT}</a></span></td>
		  <td class="row1"><span class="genmed"><a href="maito:{client_list.EMAIL}">{client_list.EMAIL}</a></span></td>
		  <td class="row1"><span class="genmed">{client_list.PHONE}</span></td>		  
		  <td class="row1"><span class="genmed">{client_list.MOBILE}</span></td>		  
		  <td class="row1"><span class="genmed">{client_list.BANNER_COUNT}</span></td>		  
		  <td class="row1" align="right">
		  	<span class="genmed">
		  		<input type="button" value="Redigera" onClick="document.location='{client_list.L_EDIT_CLIENT}';return true;">
		  		<input type="button" value="Ta bort" onClick="document.location='{client_list.L_DELETE_CLIENT}';return true;">
		  	</span>
		  </td>
		</tr>
			<!-- BEGIN switch_show_info -->
			<tr><td align="left" valign="top" colspan="8" class="row1"><div style="margin: 8px; width: 75%;">{client_list.INFO}</div></td></tr>
			<!-- END switch_show_info -->		
		<!-- END client_list -->
	  </table>
	</td>
  </tr>
</table>
<br>
