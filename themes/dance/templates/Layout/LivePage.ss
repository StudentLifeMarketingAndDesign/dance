<div id="bodywrap2">
<div id="mastheadlogo"><a href="http://www.uiowa.edu"><img src="$ThemeDir/images/logo.jpg" class="uilogo" alt="The University of Iowa" /></a></div>
<a href="/index.shtml"></a>
<div id="masthead2"><img src="$ThemeDir/images/top2.png" width="840" height="141" alt="Header Image" /></div>
<div id="mastheadnav"></div>
<div class="nav">
<% include Navigation %>

</div>
<div id="mastheadcolor"><img src="$ThemeDir/images/color3.jpg" width="840" height="16" alt="image" /></div>
<div id="contentwrap2">
<div id="dancewhite">
<h1>$Title</h1><br />


<script type="text/javascript" src="http://collections.uiowa.edu/opp/scripts/swfobject.js">
</script>
<script type="text/javascript">
var flashvars = {
//step 1.1
url: "livestream1, livestream2, livestream3",
bitrate:"350,500,1000",
//step 1.2
dropdown: "low quality, medium quality, high quality",
//step 1.3
liveLocation: "/live_dance/",
width : "720",
height : "480",
title: "University of Iowa Dance Department",
};
var params = {};
		params.allowfullscreen = "true";
		params.menu = "false";
		params.quality = "best";
		params.scale = "noscale";
		params.bgcolor = "#F8F8F8";
var attributes = {};
swfobject.embedSWF("http://collections.uiowa.edu/opp/live/finalLive/OPP.swf", "getflashplayer", "720", "550", "10.1.0", false, flashvars, params, attributes);
</script>



<div id="getflashplayer">
<h1>Alternative content if the user does not have Flash Player 10.1</h1>
<p >
<a href="http://www.adobe.com/go/getflashplayer">
<img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"  alt="Get Adobe Flash player" />
</a>
</p>
</div>


<div class="clear"></div>

$Content
$Form

<div class="clear"></div>

<p align="center"><em><strong><cite>Many thanks to <a href="http://its.uiowa.edu">The University of Iowa's Information Technology Services</a> for providing live streaming.</cite></strong></em></p>

<div class="clear"></div>

</div></div>