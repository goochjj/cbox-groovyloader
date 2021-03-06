﻿<cfoutput>
#html.doctype()#
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to Coldbox!</title>
	<meta name="description" content="ColdBox Application Template">
    <meta name="author" content="Ortus Solutions, Corp">
	<!---Base URL --->
	<base href="#event.getHTMLBaseURL()#" />
	<!---css --->
	<link href="includes/styles/bootstrap.min.css" rel="stylesheet">
	<link href="includes/styles/bootstrap-responsive.min.css" rel="stylesheet">
	<!---js --->
    <script src="includes/javascript/jquery.js"></script>
	<script src="includes/javascript/bootstrap.min.js"></script>
</head>
<body data-spy="scroll">
	<!---Top NavBar --->
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<!---Brand --->
			<div class="container">
				<!---Responsive Design --->
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		        </a>
				<!---Branding --->
				<a class="brand" href="#event.buildLink('')#"><strong>Home</strong></a>

				<!---About --->
				<ul class="nav pull-right">
					<li class="dropdown">
						<a href="##" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-info-sign icon-white"></i> About <b class="caret"></b>
						</a>
						<ul id="actions-submenu" class="dropdown-menu">
							 <li class="nav-header">#getSetting("codename",1)# (#getsetting("suffix",1)#) </li>
							 <li><a href="mailto:bugs@coldbox.org?subject=DataBoss Bug Report"><i class="icon-fire"></i> Report a Bug</a></li>
							 <li><a href="mailto:info@coldbox.org?subject=DataBoss Feedback"><i class="icon-bullhorn"></i> Send Us Feedback</a></li>
							 <li><a href="http://www.ortussolutions.com/products/coldbox"><i class="icon-home"></i> Professional Support</a></li>
							 <li class="centered">
							 	<img src="includes/images/ColdBoxLogoSquare_125.png" alt="logo"/>
							 </li>
						</ul>
					</li>
				</ul>

			</div> <!---end container --->
		</div> <!---end navbar-inner --->
	</div> <!---end navbar --->

	<!---Container And Views --->
	<div class="container">#renderView()#</div>

	<footer class="footer">
		<p class="pull-right">
			<a href="##">Back to top</a>
		</p>
		<p>
			<a href="http://www.coldbox.org">ColdBox Platform</a> is a copyright-trademark software by
			<a href="http://www.ortussolutions.com">Ortus Solutions, Corp</a>
		</p>
		<p>
			Design thanks to
			<a href="http://twitter.github.com/bootstrap">Twitter Boostrap</a>
		</p>
	</footer>

	<script>
	$(function() {
		// activate all drop downs
		$('.dropdown-toggle').dropdown();
		// Tooltips
		$("[rel=tooltip]").tooltip();
		// Scroll spy
		$('##subnav').scrollspy();
	})
	</script>
</body>
</html>
</cfoutput>
