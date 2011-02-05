<!DOCTYPE html>
<html lang="en">
<head>

	<title>MarkLabs: Marketing Simulation by Biziga Labs</title>
	<meta charset="utf-8">
	
	<!-- Global stylesheets -->
	<link href="css/reset.css" rel="stylesheet" type="text/css">
	<link href="css/common.css" rel="stylesheet" type="text/css">
	<link href="css/form.css" rel="stylesheet" type="text/css">
	<link href="css/standard.css" rel="stylesheet" type="text/css">
	
	<!-- Comment/uncomment one of these files to toggle between fixed and fluid layout -->
	<!--<link href="css/960.gs.css" rel="stylesheet" type="text/css">-->
	<link href="css/960.gs.fluid.css" rel="stylesheet" type="text/css">
	
	<!-- Custom styles -->
	<link href="css/simple-lists.css" rel="stylesheet" type="text/css">
	<link href="css/block-lists.css" rel="stylesheet" type="text/css">
	<link href="css/table.css" rel="stylesheet" type="text/css">
	<link href="css/jquery-ui-1.8.7.custom.css" rel="stylesheet" type="text/css">
	
	<!-- Favicon -->
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
	
	<!-- Generic libs -->
	<script type="text/javascript" src="js/html5.js"></script>				<!-- this has to be loaded before anything else -->
	<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
	
	<!-- Template libs -->
	<script type="text/javascript" src="js/jquery.accessibleList.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript" src="js/standard.js"></script>
	<!--[if lte IE 8]><script type="text/javascript" src="js/standard.ie.js"></script><![endif]-->
	<script type="text/javascript" src="js/jquery.tip.js"></script>
	<script type="text/javascript" src="js/jquery.hashchange.js"></script>
	<script type="text/javascript" src="js/jquery.validate.js"></script>
	
	<!-- Custom styles lib -->
	<script type="text/javascript" src="js/list.js"></script>
		
</head>

<body>
<!-- The template uses conditional comments to add wrappers div for ie8 and ie7 - just add .ie or .ie7 prefix to your css selectors when needed -->
<!--[if lt IE 9]><div class="ie"><![endif]-->
<!--[if lt IE 8]><div class="ie7"><![endif]-->
	
	<!-- Header -->
	
	<!-- Server status -->
	<header><div class="container_12">
		<!-- div class="server-info2"><a href="login.htm?do=logout" class="button red" title="Logout">Logout</a> | <a href="changepassword.html" 
			class="button red" title="Change Password">Change Password</a></div>
		<div class="server-info"><img src="images/logo1.jpg"></div-->

		
	</div></header>
	<!-- End server status -->
	
	<div id="header-shadow"></div>
	<!-- End header -->
	
<!-- Content -->
	<article class="container_12">
		
		<section class="grid_12">
			<div class="block-border"><div class="block-content">

		  <%  String errMessage= request.getParameter("message");
		      if(errMessage == null || errMessage.length()==0){
		          errMessage = "Your session has been expired. System could not serve your request. Please login again. Contact system administrator for assistance.";
		      }
		  %>
		  <%=errMessage %>
		</div></div>
		</section>
		
		<div class="clear"></div>
		
	</article>
<footer>
		
		<div class="float-left">
		</div>
		
		<div class="float-right">
			<a href="#top" class="button"><img src="images/icons/fugue/navigation-090.png" width="16" height="16"> Page top</a>
		</div>
		
	</footer>

<!--[if lt IE 8]></div><![endif]-->
<!--[if lt IE 9]></div><![endif]-->
</body>
</html>
