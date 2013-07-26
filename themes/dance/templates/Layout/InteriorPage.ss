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
<span class="mainright1 $TabType">
<h2>$TabTitle</h2>
<p> <a href="$LightBox" title="UI Department of Dance Halsey Hall" rel="lightbox[$LightboxSet]"> $TabCaption >></a></p>
</span>

<% else %>

<span class="mainright1 $TabType">
<div class="tabtitle">$TabTitle</div>
<p><a href="$TabLink">$TabCaption >></a></p>
<% if TabCaption2 %>
<p><a href="$TabLink2">$TabCaption2 >></a></p>
<% end_if %>
</span>
<% end_if %>

<% end_if %>

<h1>$Title</h1><br />
$Form
$Content



</div>


<% include Sidebar %>















