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

<h1>$Title</h1>
<% if NewsImage %>
<a href="$Link"><img class="right news" src="<% control NewsImage %><% control CroppedImage(220, 190) %> $URL <% end_control %><% end_control %>" alt="$Title"/></a>

<% end_if %>
<% if NewsLocation %>
<p class="location">$NewsLocation</p>
<% end_if %> 

<% if NewsDate %>
<p class="date">$NewsDate </p><br />
<% end_if %> 

$Content

<% if EmbedVideo %>
<script type="text/javascript" src="http://collections.uiowa.edu/opp/openPlayer/script.js"></script>
<script type="text/javascript" > 
url="$EmbedVideo";
start();
</script>
<% end_if %>

</div>


<% include Sidebar %>


