<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Welcome to MarkLABS</title>
<link type="text/css" rel="stylesheet" href="css/reset.css">
<link type="text/css" rel="stylesheet" href="css/text.css">
<link type="text/css" rel="stylesheet" href="css/960_24_col.css">
<link type="text/css" rel="stylesheet" href="css/style.css">
<link rel="shortcut icon" href="images/favicon.ico">

<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.1.custom.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("a.forgotpasswd").click(function(){
			window.open("forgotUsernamePassword.jsp","win1","toolbar=no,directories=no,resize=yes,menubar=no,location=no,scrollbars=no,width=490,height=500,maximize=null,top=70,left=80");
		});
		$("a.contactus").click(function(){
			window.open("contactUs.jsp","win1","toolbar=no,directories=no,resize=yes,menubar=no,location=no,scrollbars=no,width=490,height=500,maximize=null,top=70,left=80");
		});
		$("rememberme").click(function(){
		    if (navigator.cookieEnabled == 0) {
				alert("You need to enable cookies for this site to work this functionality properly!");
		    }
		});
		$("#userNameId").focus();
	});
</script>
</head>
<body class="container_24">
    <div class="grid_12 loginbox">
	    <form name="loginForm" action="login.htm?do=authenticateTeam" method="post">
	    <div class="">
	    	<p>Sign In, Are you a registered team?</p>
			<% String _msg = request.getParameter("message"); %>
			<% if (_msg != null) {%> <p>credentialsInvalidMessage</p> <%}%>
    	</div>
		<div class="">
			<input name="userName" type="text" id="userNameId" value="username"/>
			<input name="userPassword" type="password" id="userPasswordId" value="password"/>
			<input type="submit" class="button-01" value="login" />
		</div>
		<div class="actions">
			<a class="adminlogin" href="#">Administrator Login</a>
		    <a class="forgotpasswd" href="#">Forgot username or password?</a>
		</div>
		</form>
	</div>
	<div class="grid_24 footer horznav">
	    <ul class="links">
	      <li><a href="/site/blog">Blog</a></li>
	      <li><a href="/site/hrlp">Help</a></li>
	      <li><a href="/site/contact">Contact</a></li>
	      <li><a href="/site/status">Status</a></li>
	    </ul>
	    <ul class="sosueme">
	      <li class="main">&copy; 2010 <a href="http://www.biziga.com/">Biziga Labs.</a> <span>Learning through Activity based Simulations.</span> <span>All rights reserved.</span></li>
	      <li><a href="/site/terms">Terms of Service</a></li>
	      <li><a href="/site/privacy">Privacy</a></li>
	      <li><a href="/site/security">Security</a></li>
	    </ul>
	</div>
</body>
</html>