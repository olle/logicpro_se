<div align="left" style="margin; 0px; margin-left: 8px; margin-right: 11px;">
<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
	<tr>
		<th class="ptitle" align="left"><h1>{L_FAQ_TITLE}</h1></th>
	</tr>
	<tr>
		<td class="pmid">
			<!-- BEGIN faq_block_link -->
			<h2>{faq_block_link.BLOCK_TITLE}</h2>
			<ol>
			<!-- BEGIN faq_row_link -->
			<li><a href="{faq_block_link.faq_row_link.U_FAQ_LINK}">{faq_block_link.faq_row_link.FAQ_LINK}</a></li>
			<!-- END faq_row_link -->
			</ol>
			<!-- END faq_block_link -->
		</td>
	</tr>
	<tr>
		<td class="pbottom"></td>
	</tr>
		
	<!-- BEGIN faq_block -->
	<tr>
		<td class="tspacer"></td>
	</tr>	
	<tr> 
		<td class="ptitle" align="left"><h2>{faq_block.BLOCK_TITLE}</h2></td>
	</tr>
	<!-- BEGIN faq_row -->  
	<tr> 
		<td class="pmid" align="left" valign="top">
			<a name="{faq_block.faq_row.U_FAQ_ID}"></a><br>
			<h3>{faq_block.faq_row.FAQ_QUESTION}</h3>
			<div class="helpblock">
			{faq_block.faq_row.FAQ_ANSWER}<br />
			<a class="ctotop" href="#Top">{L_BACK_TO_TOP}</a>
			</div>
		</td>
	</tr>
	<tr>
		<td class="spaceRow" height="1"><img src="templates/subSilver/images/spacer.gif" alt="" width="1" height="1" /></td>
	</tr>
	<!-- END faq_row -->
	<tr>
		<td class="pbottom"></td>
	</tr>
	<!-- END faq_block -->
	
</table>
</div>
