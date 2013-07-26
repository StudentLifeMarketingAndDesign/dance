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
<% if Menu(2) %>
<div id="navbottom">
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