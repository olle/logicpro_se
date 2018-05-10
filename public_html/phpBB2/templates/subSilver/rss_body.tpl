<?xml version="1.0" encoding="{S_CONTENT_ENCODING}" ?>
<rss version="0.92">
<channel>
	<docs>http://backend.userland.com/rss092</docs>
	<title>{BOARD_TITLE}</title>
	<link>{BOARD_URL}</link>
	<description>{BOARD_DESCRIPTION}</description>
	<managingEditor>{BOARD_MANAGING_EDITOR}</managingEditor>
	<webMaster>{BOARD_WEBMASTER}</webMaster>
	<lastBuildDate>{BUILD_DATE}</lastBuildDate>
<!-- BEGIN post_item -->
<item>
	<title>{post_item.TOPIC_TITLE}</title>
	<link>{post_item.POST_URL}</link>
	<category>{post_item.FORUM_NAME}</category>
	<pubDate>{post_item.POST_TIME}</pubDate>
	<description>
	&lt;strong&gt;Forum:&lt;/strong&gt; {post_item.FORUM_LINK}
	&raquo; &lt;strong&gt;Författare:&lt;/strong&gt; {post_item.AUTHOR}
	&raquo; &lt;strong&gt;Svar:&lt;/strong&gt; {post_item.TOPIC_REPLIES}</description>
</item>
<!-- END post_item -->
</channel>
</rss>
