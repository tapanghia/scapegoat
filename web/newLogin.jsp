<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Welcome to MarkLabs - Marketing Simulations by Biziga Labs</title>
	<meta http-equiv=Content-Type content="text/html; charset=iso-8859-1">
	<link href="css/login.css" rel="stylesheet" type="text/css" />
	<link rel="shortcut icon" href="images/favicon.ico">
	<script src="js/getBrowserVersion.js"></script>
   <script language="javascript" type="text/javascript" src="js/CommonScripts.js"></script> 
</head>
<body style="margin-left:15px; margin-top:15px;" onload=FocusUserdata()> 
<%
    String _msg = request.getParameter("message");
%>
    <form name="loginForm" action="login.htm?do=authenticateTeam" method="post">
<div>
</div>

<script type="text/javascript">
function PasswdRemindWin()
{
window.open("forgotUsernamePassword.jsp","win1","toolbar=no,directories=no,resize=yes,menubar=no,location=no,scrollbars=no,width=490,height=500,maximize=null,top=70,left=80");
}

function ContactUsWin()
{
window.open("contactUs.jsp","win1","toolbar=no,directories=no,resize=yes,menubar=no,location=no,scrollbars=no,width=490,height=500,maximize=null,top=70,left=80");
}

function FocusUserdata() { 
	document.loginForm.userName.focus(); 
} 
//detectBrowser();
function newWin()
{
var height = window.innerHeight;
var width = window.outerWidth;
var prop = "top=0,left=0,height="+height+",width="+width;
var url = "help/markLABSHelpHome.jsp";
var win = window.open(url,"win",prop);
}
</script>


<table align="center" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td><img src="images/header.jpg" width="955" height="95"></td>
    </tr>
    <tr>
        <td style="height:15px;" class="tdTopBorder"><img src="images/spacer.gif" /></td>
    </tr>
    <tr>
        <td>
<table cellspacing="0" cellpadding="0">
    
    <tr>
        <td id="ctl00_MainContentPlaceHolder_ctl00_MainArea" style="width: 525px">
        

<script language="javascript" type="text/javascript">

function checkforCookie()
 {
    if (navigator.cookieEnabled == 0) {
        //alert("You need to enable cookies for this site to work this functionality properly!");
        document.getElementById("divCookie").style.visibility='visible';
    }
 }
</script>

<table cellpadding="0" cellspacing="0" border="0">
    <tr>
        <td >
            <table cellpadding="0" cellspacing="0" border="0" height="298px" width="594px"  >
                <tr>
                    <td valign="top">
                     <object data="images/markLABS.SWF" height="298px" width="594px" 
                     	type="application/x-shockwave-flash">
                            <param name="movie" value="newlogin/speakerbureau-REV1.SWF" />
                            <param name="wmode" value="transparent">
                            <embed src="newlogin/speakerbureau-REV1.SWF" width="594px" height="298px" ></embed>
                        </object>
                    
                    <!-- img src="images/med_home.jpg"-->
                    </td>
                </tr>
            </table>
        </td>
        <td align=left  >
            <img src="images/grey_login_left.gif" align=left />
        </td>
        <td>
            <table cellpadding="0" cellspacing="0" border="0" width="312" 
            	style="background-image: url(images/grey_1px.gif);
                background-repeat: repeat-x; height: 298px;">
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0" border="0" style="padding-left: 4px;">
                            <tr>
                                <td style="vertical-align: middle; height: 40px;">
                                    <div
                                        id="divCookie" style="visibility: hidden;" class="defaultError">
                                        Currently cookies are disabled, please enable.</div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="SubHead">
                                        Sign In</div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="images/spacer.gif" height="3px;" /></td>
                            </tr>
                            <tr>
                                <td style="padding-right: 20px;">
<table cellpadding="0" cellspacing="0" border="0">
    <tr><td class="SubHeadSmall"> Are you a registered team?</td></tr>
    <tr><td><img src="images/spacer.gif" height="5px" /></td></tr>
    <tr>
        <td>
            <table cellpadding="0" cellspacing="0" width="230px" border="0">
                <tr>
                    <td width="68px" Class="controlsLable" style="padding-top:2px;">Username: </td>
                    <td align="right" ><input name="userName" type="text" maxlength="30" id="userNameId" class="text12" style="width:144px;" /></td>
                </tr>
                <tr >
                    <td Class="controlsLable" style="padding-top:4px;">Password: </td>
                    <td align="right" style="padding-top:2px;">
                    <input name="userPassword" type="password" maxlength="30" id="userPasswordId" 
                    	class="text12" style="width:144px;" /></td>
                </tr>
                <tr>
                    <td colspan="2"><img src="images/spacer.gif" height="3px" /></td>
                </tr>
             </table>
             <table cellpadding="0" cellspacing="0" width="230px">
                <tr>
                    <td>
                    	<span class="smallLabel">
                    		<input id="ctl00_MainContentPlaceHolder_ctl00_ctl00_userLogin_chkRememberMe" 
                    			type="checkbox" 
                    			name="ctl00$MainContentPlaceHolder$ctl00$ctl00$userLogin$chkRememberMe" 
                    			checked="checked" onclick="javascript:checkforCookie();" />
                    			<label for="ctl00_MainContentPlaceHolder_ctl00_ctl00_userLogin_chkRememberMe">
                    			Remember me on this computer
                    			</label>
                    	</span>
                    </td>
					
					<td align="right">
						<input type="submit" class="button-01" value="" name=Submit2 
							style="border:0;background : url(images/login.gif);width:75px; height:20px;"/>
                </tr>
            </table>
          </td>
    </tr>
</table>

</div>
      </td>
  </tr>

  <tr>
      <td>
          <img src="login/spacer.gif" height="5px" /></td>
  </tr>
  <tr>
      <td style="padding-right: 20px;">
                                    
<script language="javascript" type="text/javascript"><%--
/*
 Code to handle if the session is expired 
*/
function RefreshParent()
{
  if (opener!=null)
  {
    opener.location.reload(true);
    self.close();
  }      
 }
 RefreshParent();
 var t=setTimeout("checkforCookie();",2000);
--%></script>

<table cellpadding="0" cellspacing="0" border="0"> 
    <tr><td class="tdTopBorderLogin"><img src="images/spacer.gif" height="7px" /></td></tr>
    
    <tr><td><img src="images/spacer.gif" height="5px" /></td></tr>
    <tr>
        <td>
            
             <table cellpadding="0" cellspacing="0" width="230px">
				<tr>
				    <td width="20%">
						<span class="smallLabel">
							<font size ="2" color="red">
								<%if (_msg == null) {%><c:out escapeXml="false" value="${credentialsInvalidMessage}"/><%} else { %> <%=_msg%><%}%>
							</font>
						</span>
					</td>
				</tr>
				
            </table>
          </td>
    </tr>
</table>

</div>
                         </td>
                     </tr>
                 </table>
             </td>
         </tr>
     </table>
 </td>
 <td>
            <img src="images/grey_login_right.gif" />
        </td>
    </tr>

</table>
</td>

    </tr>
</table></td>
                                    </tr>
                                    <tr>
                                        <td style="height:40px;"></td>
                                    </tr>
                                    <tr>
                                        <td class="tdTopBorder">


<table width="955" border="0" cellspacing="0" cellpadding="0">
   
    <tr>
        
        <td width="937" >
            <table width="905" border="0"  cellspacing="0" cellpadding="0">
                <tr>
                    <td colspan="3"><img src="images/spacer.gif" height="20"></td>
                </tr>
                
            </table>
            
        </td>
        
    </tr>
</table>
</td>
    </tr>
</table>
</form>
</body>
</html>
