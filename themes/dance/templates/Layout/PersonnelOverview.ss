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
$Content



<ul class="faculty-holder">
<% control Children %>
<h2>$Title</h2>
<hr /><br />
<% control Children %>
<li>


<h2><a href="$Link">$Title</a></h2>
<h3><em>$PersonnelTitle</em></h3>
<p class="more"><a href="mailto:$PersonnelEmail">$PersonnelEmail</a></p>
</li>
<% end_control %>
<% end_control %>
</ul>
</div>


<% include Sidebar %>


