<h2 class="navh2">Department of Dance</h2>
        <ul id="nav">
            <% control Menu(1) %>
                <li class="$URLSegment"><a href="$Link" <% if RedirectionType = External %>target="_blank" class="external-link"<% end_if %>>$Title</a>
                   <% if Title %>
				      <ul>
                        <% control Children %>
						
                            <li><a href="$Link" <% if RedirectionType = External %> target="_blank" class="external-link"<% end_if %>>$Title</a></li>
							
							
                        <% end_control %>
						
						
                    </ul><% end_if %></li>
            <% end_control %>
        </ul>
   