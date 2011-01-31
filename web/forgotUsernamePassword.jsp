<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ include file="imports.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
 <script src="<%=COMMONJS%>/validation.js" language="JavaScript"></script>
 <style type="text/css">
	body {
		font-family:Arial, Helvetica, sans-serif;
		font-size:14px;
		background:#ffffff url(images/Biogen/body_bg.jpg) repeat-x;
		color:#666666;
		font-size-adjust:none;
		font-variant:normal;
		line-height:normal;
		text-transform:none;
		margin:10px;
		
	}
	
	fieldset {
		margin: 10px;
		padding: 10px;
		border: 1px solid #ccc;
		width: 400px;
		color: #007FC1;
	}
	

	label {
		display: block;
	}
	
	input {
		width: 220px;
	}
	
	input.radio, input.submit, input.button, input.checkbox{
		width: auto;
		clear:both;
	}

	input.radio, input.checkbox {
		float: left;
		margin-right: 5px;
	}
	
	.required {
		color: 	#FF0000;
	}
	
	
</style>
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>

<title>Medtronic: Forgot your Username/Password?</title>
<link type="text/css" rel="stylesheet" href="css/style.css"/>

<script language="javascript" type="text/javascript" > 
 
	function submitForm(){
		var passwdForm = document.getElementById('forgotpassword');
		var uname = document.getElementById('username');
		var psswd = document.getElementById('password');
	
		if(passwdForm.email.value=="")
		{
			alert("Please enter your email address.");
			thisform.email.focus();
			return false;
		} else if (!emailCheck(passwdForm.email.value))
	    {
	        alert("Please enter valid  Email Address");
	        thisform.email.focus();
	        return false;
	    } 
		else if (!(uname.checked) && !(psswd.checked)) {
			alert("Username, Password or both must be selected to proceed.")
		}
		else{
			passwdForm.submit();
		}
	}
	
</script>

</head>
<body>
		<form id="forgotpassword" action="" method="post">
	<div class="header">
		<div class="leftPart" align="left" style="vertical-align" height="100">
			<img src="images/logo.jpg" alt="markLABS.com" title="markLABS.com" />
		</div>
		
	</div>
	<div>
		<div>Forgot Username or Password?</div>
		<div style="margin:2px;padding:5px 10px 5px 10px;width:400px;word-wrap: break-word">
		Tell us what you have forgotten and your email address and we will email it to you.  
		If both username and password are selected they will be sent in separate emails.</div>
		<fieldset>
			<table>
			<tr>
				<td><label for="email">Email Address<span class="required">*</span></label></td>
				<td><input name="email" id="email" type="text" /></td>
			</tr>
			<tr>
				<td colspan=2>
				<input id="username" class="checkbox" name="username" type="checkbox" value="username" />
				<label for="username">Username</label>
				</td>
			</tr>
			<tr>
				<td colspan=2><input id="password" class="checkbox" name="password" type="checkbox" value="password" />
				<label for="password">Password</label></td>
			</tr>
			<tr>
				<td colspan=2><span class="required" style="font-size:12px;"><c:out value="${message}"></c:out></span></td>
			</tr>
			</table>
			<span>
				<input name="submitButton" type="button" style="border:0;background : url(images/buttons/submit.gif);width:81px; height:22px;clear:both;" class="button-01" value="" onclick="javascript:submitForm()" />
			</span>
			
		</fieldset>
	</div>
	<div style="margin:2px;padding-left:10px;padding-top:5px;width:400px;word-wrap: break-word">
		<span>If you are still having problems retrieving your username or password please call (+91)9742089491 for assistance 
				or mail us at <a href="mailto:techsupport@markLABS.com">support@markLABS.com.</a></span>
	</div>
		</form>
</body>
</html>