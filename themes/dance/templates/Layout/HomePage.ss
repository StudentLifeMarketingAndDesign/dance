<div id="masthead">


		<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="1000" height="220" id="myFlashContent">
				<param name="movie" value="$ThemeDir/images/Preloader7.swf" />
				
				<!--[if !IE]>-->
				<object type="application/x-shockwave-flash" data="$ThemeDir/images/Preloader7.swf" width="1000" height="220">
				<!--<![endif]-->
					<a href="http://www.adobe.com/go/getflashplayer">
						<img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" />
					</a>
				<!--[if !IE]>-->
				</object>
				<!--<![endif]-->
			</object>
			
		</div>
		

</div>
<div id="mastheadnav"></div>
<div id="bodywrap">
<div class="nav">

<% include Navigation %>


</div>
<h1 class="homeh1">Department of Dance</h1>
<div id="mastheadcolor"><img src="$ThemeDir/images/color3.jpg" width="840" alt="Feature Image" /></div>
<div id="feature" style="background: url(<% loop FeatureImage.SetWidth(715) %>$Filename<% end_loop %>) no-repeat scroll right bottom;">
<div class="heading">$HeadlineText</div>
<p>$Content <span class="grey3"><a href="$HomeLink">Read More &gt;&gt;</a></span></p>
</div>



<div id="subfeature">

<div id="events">
<h2><a href="$BaseHref/upcoming-events">News &amp; Events</a></h2>
<ul>
<% loop News %>
<li>

<% if NewsImage %>
	<% if ExternalLink %>
		<a href="$ExternalLink">
	<% else %>
		<a href="$Link">
	<% end_if %>
	<img src="<% loop NewsImage %><% loop CroppedImage(120, 90) %> $URL <% end_loop %><% end_loop %>" alt="$Title"/></a>
<% end_if %>
<% if ExternalLink %>
	<h3><a href="$ExternalLink">$Title</a></h3>
<% else %>
	<h3><a href="$Link">$Title</a></h3>
<% end_if %>
<% if NewsDate %>
<h4>$NewsDate</h4>
<% end_if %>
<% if NewsLocation %>
<h5>$NewsLocation</h5>
<% end_if %>

<% if ExternalLink %>
<p class="more external-link"><a href="$ExternalLink">Read More </a></p>
<% else %>
<p class="more"><a href="$Link">Read More </a></p>
<% end_if %>


</li>
<% end_loop %>


</ul>

</div>




<div id="video">
<h2>Video</h2>
<div id='mediaspace'>

	<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="430" height="350" id="myFlashContent">
				<param name="movie" value="http://www.youtube.com/p/04841EA5CB973D6C?hl=en_US&fs=1" />
				<!--[if !IE]>-->
				<object type="application/x-shockwave-flash" data="http://www.youtube.com/p/04841EA5CB973D6C?hl=en_US&fs=1" width="430" height="350">
				<!--<![endif]-->
					<a href="http://www.adobe.com/go/getflashplayer">
						<img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" />
					</a>
				<!--[if !IE]>-->
				</object>
				<!--<![endif]-->
			</object>





</div>



</div>
<div style="clear: left"></div>

<!--end video-->
<!--
<script type="text/javascript">
  var so = new SWFObject('http://player.longtailvideo.com/player5.2.swf','ply','430','430','9','#');
  so.addParam('allowfullscreen','true');
  so.addParam('allowscriptaccess','always');
  so.addParam('wmode','opaque');
  so.addVariable('file','http://gdata.youtube.com/feeds/api/playlists/04841EA5CB973D6C?v=2');
  so.addVariable('playlist','bottom');
  so.addVariable('skin','http://www.longtailvideo.com/jw/upload/regular.swf');
  so.addVariable('backcolor','f4f4f4');
  so.addVariable('playlistsize','60','cccccc');
  so.addVariable('frontcolor','999');
  so.addVariable('lightcolor','3b8a7a');
  so.write('mediaspace');
</script>-->








</div>