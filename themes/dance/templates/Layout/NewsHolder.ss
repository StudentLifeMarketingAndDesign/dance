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
<span class="mainright1 Orange">
<h2>$TabTitle</h2>
<p><a href="$TabLink">$TabCaption >></a></p>
<% if TabCaption2 %>
<p><a href="$TabLink2">$TabCaption2 >></a></p>
<% end_if %>
</span>
<% end_if %>

<h1>$Title</h1>
$Content

 
<div id="events">
<h2>News & Events</h2>
<br />
<br />
<ul>
<!--% loop News %-->
<% loop Children %>
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
		<p class="more external-link"><a href="$ExternalLink">Read More</a></p>
	<% else %>
		<p class="more"><a href="$Link">Read More</a></p>
	<% end_if %></li>
<% end_loop %>


</ul>
</div>

<% if false %>

<% if allNews.MoreThanOnePage %>
<p class="pageNumbers">
<% if allNews.PrevLink %>
<a href="$allNews.PrevLink"><< Prev</a> |
<% end_if %>

<% loop allNews.Pages %>
<% if CurrentBool %>
<strong>$PageNum</strong>
<% else %>
<a href="$Link" title="Go to page $PageNum">$PageNum</a>
<% end_if %>
<% end_loop %>

<% if allNews.NextLink %>
| <a href="$allNews.NextLink">Next >></a>
<% end_if %>
</p>
<% end_if %> 

<% end_if %>

</div>


<% include Sidebar %>









