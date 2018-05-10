
<form method="post" action="{L_FORM_ACTION}" enctype="multipart/form-data">
<table width="100%" cellpadding="0" cellspacing="0" border="0" align="center">
  <tr> 
	<td align="center" > 
	  <table width="100%" cellpadding="2" cellspacing="1" border="1" class="forumline">
		<tr> 
		  <th class="thHead" colspan="2">
		  	<b>Redigera bannern</b><br>
		  </th>
		</tr>
		<tr>
		  <td class="catSides"><span class="cattitle">Kund</span></td>
		  <td class="catSides"><span class="cattitle">{CLIENT_ID}</span></td>
		</tr>
		<tr>
		  <td class="catSides"><span class="cattitle">Banner titel/namn</span></td>
		  <td class="catSides"><span class="cattitle"><input name="title" value="{TITLE}" type="text" size="20" maxlength="80"></span></td>
		</tr>
		<tr>
		  <td class="catSides"><span class="cattitle">Länk URL</span></td>
		  <td class="catSides"><span class="cattitle"><input name="url" value="{URL}" type="text" size="50" maxlength="160"></span></td>
		</tr>
		<tr>
		  <td class="catSides"><span class="cattitle">Bild SRC</span></td>
		  <td class="catSides"><span class="cattitle"><input name="image_url" value="{IMAGE_URL}" type="text" size="50" maxlength="160"></span>(&nbsp;./ads = bannerroot &nbsp;)</td>
		</tr>
		<tr>
		  <td class="catSides"><span class="cattitle">Bild/Data källa</span></td>
		  <td class="catSides">
		  	<span class="cattitle">
		  		<input type="hidden" name="MAX_FILE_SIZE" value="">
		  		<input type="file" name="file_data" style="width: 300px;"></span>
		  </td>
		</tr>
		<tr>
		  <td class="catSides" valign="top"><span class="cattitle">Text/HTML</span></td>
		  <td class="catSides"><span class="cattitle"><textarea name="alt_text" cols="60" rows="6">{ALT_TEXT}</textarea></span><br>
		  (Om text eller HTML anges här så ersätts den Bild SRC som angetts tidigare.)
		  </td>
		</tr>
		<tr>
		  <td class="catSides"><span class="cattitle">Grupp</span></td>
		  <td class="catSides"><span class="cattitle"><input name="banner_group" value="{BANNER_GROUP}" type="text" size="20" maxlength="80"></span></td>
		</tr>
		<tr>
		  <td class="catSides"><span class="cattitle">Bild &quot;width&quot;</span></td>
		  <td class="catSides"><span class="cattitle"><input name="width" value="{WIDTH}" type="text" size="5"></span></td>
		</tr>
		<tr>
		  <td class="catSides"><span class="cattitle">Bild &quot;height&quot;</span></td>
		  <td class="catSides"><span class="cattitle"><input name="height" value="{HEIGHT}" type="text" size="5"></span></td>
		</tr>		
		<tr>
		  <td class="catSides"><span class="cattitle">Slutdatum</span></td>
		  <td class="catSides"><span class="cattitle"><input name="expiration_date" value="{EXPIRATION_DATE}" type="text" size="12" maxlength="10"></span>
		  &quot;YYYY-MM-DD&quot; (tomt eller 0000-00-00 för inget slutdatum)
		  </td>
		</tr>		
		<tr>
		  <td class="catSides"><span class="cattitle">Max-visningar</span></td>
		  <td class="catSides"><span class="cattitle"><input name="expiration_displays" value="{EXPIRATION_DISPLAYS}" type="text" size="5"></span>
		  Ange 0 eller tomt för oändligt antal visningar
		  </td>
		</tr>		
		<tr>
		  <td class="catSides"><span class="cattitle">Max-click</span></td>
		  <td class="catSides"><span class="cattitle"><input name="expiration_clicks" value="{EXPIRATION_CLICKS}" type="text" size="5"></span>
		  Ange 0 eller tomt för oändligt antal click
		  </td>
		</tr>		
		<tr>
		  <td class="catSides"><input type="hidden" name="id" value="{ID}"></td>
		  <td class="catSides"><span class="cattitle">
			<input type="reset" value="Rensa">&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="submit" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Spara bannern&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;">
			</form>
		  </span>
		  </td>
		</tr>		
	  </table>
	</td>
  </tr>
</table><br>

<table width="100%" cellpadding="0" cellspacing="0" border="0" align="center">
  <tr> 
	<td align="center" > 
	  <table width="100%" cellpadding="2" cellspacing="1" border="1" class="forumline">
		<tr> 
		  <th class="thHead" colspan="2">
		  	<b>Fillista</b><br>
		  </th>
		</tr>
		<tr>
		  <td class="catSides">
		  	<div style="border: 1px solid #000000; background-color: #EEEEEE; margin: 2px; padding: 8px;">
			  	{FILE_LIST}
		  	</div>
		  </td>
		</tr>
	  </table>
	</td>
  </tr>
</table><br>
