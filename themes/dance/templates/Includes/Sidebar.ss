<div id="navwrap">


<% if Parent %>
<% loop Level(1) %>
<div id="navtop_admissions">
	<p>$Title</p>
</div><!--end navtop-->
<% end_loop %>
<% else %>
<div id="navtop_admissions">
	<p>$Title</p>
</div><!--end navtop-->
<% end_if %>
<div id="navbottom">
<% if Menu(2) %>

	<ul>
		<% loop Menu(2) %>
		<li id="$URLSegment" class="$LinkingMode<% if FirstLast %> $FirstLast<% end_if %>">
			<% if LinkingMode = current %>
				<span class="item selected">$MenuTitle</span>
			<% else %>				
				<a class="item" href="$Link" title="View more on $Title">$MenuTitle</a>
			<% end_if %>
			<% if Children %>
				
					<ul class="sub-navigation">
						<% loop Children %>
						<li class="$LinkingMode<% if FirstLast %> $FirstLast<% end_if %>">
							<% if LinkingMode = current %>
								<span class="item selected">$MenuTitle</span>
							<% else %>
								<a class="item" href="$Link" title="View more on $Title">$MenuTitle</a>
							<% end_if %>
						</li>
						<% end_loop %>
					</ul>
				
			<% end_if %>
		</li>
		<% end_loop %>
	</ul>
<% end_if %>
</div>





<div id="auditionow">
<ul>
<li><a href="$BaseHref/upcoming-events/" class="dancecalendar">Upcoming Events</a></li>
<li><a href="$BaseHref/about/facilities/" class="guesteachers">Our Facilities</a></li>
<li><a href="$BaseHref/about/faculty-and-staff/" class="donate">Faculty &amp; Staff</a></li>
<li><a href="$BaseHref/about/contact-us/" class="donate">Contact Us</a></li>
</ul>
</div>
<div id="navads3"><br />

Department Contacts:<br />
<% loop Page(department-contacts) %>
	<% loop Children %>
	<div><a href="http://dance.uiowa.edu/about/faculty-and-staff/">$Title</a></div>
	<div>$PersonnelTitle</div>
	<div>$PersonnelPhone</div>
	<br />
	<% end_loop %>
<% end_loop %>

<br />
Best wishes in your dance pursuits!<br /></div><!--end nav ads-->
</div><!--end navwrap-->