<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> - $SiteConfig.Title</title>
<% base_tag %>

<link rel="stylesheet" href="$ThemeDir/css/styles.css" type="text/css" media="print, projection, screen"/>
<link rel="stylesheet" href="$ThemeDir/css/reset.css" type="text/css" media="print, projection, screen"/>


<!--[if IE 7]><style type='text/css'>@import url($ThemeDir/css/ie7.css);</style><![endif]-->

<link rel="SHORTCUT ICON" href="$ThemeDir/images/favicon.ico" />


<link href='http://fonts.googleapis.com/css?family=Josefin+Sans+Std+Light' rel='stylesheet' type='text/css'/>
<script type="text/javascript" src="$BaseHref/mysite/code/javascript/dropdown.js"></script>
<script type="text/javascript" src="$BaseHref/mysite/code/swfobject.js"></script>

<script type="text/javascript" src="$BaseHref/mysite/code/javascript/lightbox/prototype.js"></script>
<script type="text/javascript" src="$BaseHref/mysite/code/javascript/lightbox/scriptaculous.js?load=effects"></script>
<script type="text/javascript" src="$BaseHref/mysite/code/javascript/lightbox/lightbox.js"></script>




<% if CurrentMember %>

<style type="text/css">
div.edit-box {
  margin: 0;
  font-size: 80% /*smaller*/;
  font-weight: bold;
  line-height: 1.1;
  text-align: center;
  position: fixed;
  top: 2em;
  left: auto;
  width: 8.5em;
  right: 2em;
}
div.edit-box p {
  margin: 0; 
  padding: 0.3em 0.4em;
  font-family: Arial, sans-serif;
  background: #900;
  border: thin outset #900;
  color: white;
}

div.edit-box a, div.edit-box em { display: block; margin: 0 0.5em }
div.edit-box a, div.edit-box em { border-top: 2px groove #900 }
div.edit-box a:first-child { border-top: none }
div.edit-box em { color: #CFC }

div.edit-box a:link { text-decoration: none; color: white }
div.edit-box a:visited { text-decoration: none; color: #CCC }
div.edit-box a:hover { background: black; color: white }
</style>

<% end_if %>



</head>
<body>




$Layout





<div id="footer">
<div id="footer-search">
<div id="search">
<form method="get" action="http://search.uiowa.edu/search">
<fieldset><input type="text" name="q" value="" title="text" ></input> 
<input type="submit" name="btnG" value="Search" class="submit"  ></input> 
<input type="hidden" name="site" value="default_collection" ></input> 
<input type="hidden" name="client" value="default_frontend"  ></input> 
<input type="hidden" name="output" value="xml_no_dtd"  ></input> 
<input type="hidden" name="proxystylesheet" value="default_frontend" ></input> 
<input type="hidden" name="sitesearch" value="dance.uiowa.edu"  ></input></fieldset> </form>
</div>
<a href="http://www.facebook.com/pages/Iowa-City-IA/UIowa-Dance/119870628065975"> <img class="socialmedia" src="/assets/Uploads/facebook.png" alt="Facebook" /> </a>
<a href="http://twitter.com/uiowadance"> <img class="socialmedia" src="/assets/Uploads/twitter.png" alt="Twitter" /> </a>		
<a href="mailto:dance@uiowa.edu"><img class="socialmedia" src="/assets/Uploads/email.png" alt="Email" /</a>
<a href="http://arts.uiowa.edu"> <img class="dpa" src="{$ThemeDir}/images/arts.png" alt="Arts Iowa" /> </a>


</div>

	<ul class="menu">
		<% loop Menu(1) %>
        	<li class="$URLSegment"><a href="$Link">$MenuTitle</a>
				<% if URLSegment == upcoming-events %>
				<ul>
					<% loop GetChildren(3) %>
						<li>
						<% if ExternalLink %>
							<a href="$ExternalLink">
						<% else %>
							<a href="$Link">
						<% end_if %>
						$Title</a></li>
					<% end_loop %>
				</ul>
				<% else %>
            	<% if Children %>
            	<ul>
					<% loop Children %>
						<li><a href="$Link">$Title</a></li>
                    <% end_loop %>
                </ul>
				<% end_if %>
				<% end_if %>
			</li>
            <% end_loop %>
      </ul>
<p class="clas"><a href="http://www.clas.uiowa.edu/"><img src="/$ThemeDir/images/clas-logo.png" border="1" alt="College of Liberal Arts and Sciences" width="235" height="20" /></a></p>
<p class="footer">The University of Iowa $Now.Year. All rights reserved.<br />
Department of Dance - E114 Halsey Hall - Iowa City, IA 52242 - (319) 335-2228<br />
Email us at <a href="mailto:dance@uiowa.edu">dance@uiowa.edu</a>. </p>	

</div>
</div>

<% if CurrentMember %>
<div class="edit-box">
<p><a href="$BaseHref/admin/show/{$ID}">Edit this page</a></p>
</div>
<% end_if %>  

</body>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-426753-6']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</html>







