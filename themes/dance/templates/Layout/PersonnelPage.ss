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

<% if TabTitle %>

<% if LightBox %>
<span class="mainright1">
<h2>$TabTitle</h2>
<p> <a href="$LightBox" title="UI Department of Dance Halsey Hall" rel="lightbox[$LightboxSet]"> $TabCaption >></a></p>
</span>

<% else %>

<span class="mainright1">
<h2>$TabTitle</h2>
<p><a href="$TabLink">$TabCaption >></a></p>
<p><a href="$TabLink2">$TabCaption2 >></a></p></span>
<% end_if %>

<% end_if %>

<h1>$Title</h1>

<% if YoutubeLink %>
<div class="video">
	<object width="336" height="205"><param name="movie" value="http://www.youtube.com/v/{$YoutubeLink}&hl=en_US&fs=1&"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/{$YoutubeLink}&hl=en_US&fs=1&" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="336" height="205"></embed></object>
	
	<% if YoutubeLink %>
	<p>$YoutubeCaption</p>
	<% end_if %>
</div>
<% end_if %>

<p class="location"><em>$PersonnelTitle</em></p>
<p><a href="mailto:$PersonnelEmail">$PersonnelEmail</a></p>
<% if PersonnelPhone %><p>Phone: $PersonnelPhone</p><% end_if %>
<% if PersonnelFax %><p>Fax: $PersonnelFax</p><% end_if %>
<% if PersonnelOffice %><p>Office: $PersonnelOffice</p><% end_if %>

<% if ContentImage %>
<a href="$Link"><img class="right news" src="<% control ContentImage %><% control CroppedImage(220, 190) %> $URL <% end_control %><% end_control %>" alt="$Title"/></a>

<% end_if %>
$Content

</div>


<% include Sidebar %>
