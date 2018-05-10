
<table width="100%" cellpadding="0" cellspacing="0" border="0" align="center">
  <tr> 
	<td align="center" > 
	  <table width="100%" cellpadding="2" cellspacing="1" border="0" class="forumline">
		<tr> 
		  <th class="thHead" colspan="6">
		  	<b>Banners</b><br>
		  	<div align="left">
			  	<input type="button" value="Visa bilder" onClick="document.location='{L_SHOW_IMAGES}';return true;">
			  	<input type="button" value="Göm bilder" onClick="document.location='{L_HIDE_IMAGES}';return true;">
			  	&nbsp;&nbsp;&nbsp;&nbsp;
			  	<input type="button" value="&nbsp;&nbsp;&nbsp;&nbsp;Lägg till en ny banner&nbsp;&nbsp;&nbsp;&nbsp;" onClick="document.location='{L_ADD_BANNER}';return true;">
		  	</div>
		  </th>
		</tr>
		<tr> 
		  <td class="catSides"><span class="cattitle">Id</span></td>
		  <td class="catSides"><span class="cattitle"><a href="{L_BANNER_SORT}">Banner</a></span></td>
		  <td class="catSides"><span class="cattitle"><a href="{L_CLIENT_SORT}">Kund</a></span></td>		  
		  <td class="catSides"><span class="cattitle"><a href="{L_GROUP_SORT}">Grupp</a></span></td>
		  <td class="catSides"><span class="cattitle"><a href="{L_EXPIRATION}">Slutdatum</a></span></td>
		  <td class="catSides"><span class="cattitle">&nbsp;</span></td>
		</tr>
		<!-- BEGIN banner_list -->
		<tr> 
		  <td class="row1"><span class="genmed">{banner_list.BANNER_ID}</a></span></td>
		  <td class="row1"><span class="genmed">{banner_list.BANNER}</a></span></td>
		  <td class="row1"><span class="genmed">{banner_list.CLIENT}</span></td>
		  <td class="row1"><span class="genmed">{banner_list.BANNER_GROUP}</span></td>		  
		  <td class="row1"><span class="genmed">{banner_list.EXPIRATION_DATE}</span></td>		  
		  <td class="row1" align="right">
		  	<span class="genmed">
		  		<input type="button" value="&nbsp;Av&nbsp;" onClick="document.location='{banner_list.L_EXPIRE_BANNER}';return true;">
		  		<input type="button" value="&nbsp;På&nbsp;" onClick="document.location='{banner_list.L_UNEXPIRE_BANNER}';return true;">
		  		<input type="button" value="Redigera" onClick="document.location='{banner_list.L_EDIT_BANNER}';return true;">
		  		<input type="button" value="Ta bort" onClick="document.location='{banner_list.L_DELETE_BANNER}';return true;">
		  	</span>
		  </td>
		</tr>
			<!-- BEGIN switch_show_image -->
			<tr><td align="left" valign="top" colspan="6" class="row1">{banner_list.BANNER_IMAGE}</td></tr>
			<!-- END switch_show_image -->		
		<!-- END banner_list -->
	  </table>
	</td>
  </tr>
</table>
<br>
