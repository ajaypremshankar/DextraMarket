<%-- 
    Document   : home
    Created on : Feb 1, 2013, 2:40:17 AM
    Author     : ajay prem shankar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>DextraMarket( Home )</title>
<script>
function validate(){

var user=document.forms["login_form"]["user_name"].value;
var password=document.forms["login_form"]["password"].value;
if(user=="" && password==""){
alert("User-Name and Password Required");
}
else if(user==""){
alert("User Name Required");
}
else if(password==""){
alert("Password Required");
}
}
</script>



<style type="text/css">
<!--
.style1 {font-size: 40px;
color:#990000;
background-color:#FFFFFF;
}
.style2 {
	font-size: x-large;
	font-weight: bold;
	color: #FFFFFF;
}
.style3 {font-size: large}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
.style4 {font-size: xx-large;
	color: #CC0000;
}
.style5 {color: #CC0000}
.style8 {color: #999999}
.style9 {font-family: "Courier New", Courier, monospace}
.style10 {
	font-size: small;
	color: #FFFFFF;
}
.style11 {color: #FFFFFF}
-->
</style></head>

<body bgcolor="#CCCCCC" background="fsw.png" style="background-attachment:fixed">
<table width="800" height="769" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#CC0000" bgcolor="#FFFFFF" style="vertical-align:middle;border:ridge; border-color:#999999" >
  <!--DWLayoutTable-->
  <tr>
    <td width="792" height="50" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="border:dashed; border-color:#990000">
      <!--DWLayoutTable-->
      <tr>
        <td width="800" height="50"><div align="center"><strong><span class="style1">WELCOME TO 'DextraMarket' </span></strong></div></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="607" align="center" valign="top"><p>&nbsp;</p>
      <p>&nbsp;</p>
      <table width="700" height="100" border="0" cellspacing="10" bgcolor="#CC0000">
      <tr>
        <td colspan="3"><div align="center" class="style2">Register : </div></td>
        </tr>
      <tr>
        <td width="225" bgcolor="#FFFFFF"><div align="center" class="style2">
          <a href="group_reg.php">
            <input name="group" type="button" id="group" value="Your Group" style="width:120px; cursor:pointer;">
            </a>
          </div></td>
          <td width="222" bgcolor="#FFFFFF"><div align="center">
              <a href="faculty_reg.php">
              <input name="faculty" type="button" id="faculty" value="As A Faculty" style="width:120px; cursor:pointer;">
          </a></div></td>
          <td width="222" bgcolor="#FFFFFF"><div align="center">
              <a href="event_reg.php">
              <input name="event" type="button" id="event" value="An Event" style="width:120px; cursor:pointer;">
          </a></div></td>
        </tr>
    </table>
      <p>${sessionScope["event"]}
              <% session.removeAttribute("event"); %>
      </p>
      <p>${sessionScope["error"]}
              <% session.removeAttribute("error"); %>
      </p>
      <p>&nbsp;</p>
      <form action="login_action.php" method="post" name="login_form" onsubmit="validate()">
        <table width="500" border="0" cellspacing="10" bgcolor="#CC0000">
          <tr>
            <td bgcolor="#CC0000" colspan="2"><div align="center" class="style2">Login : </div></td>
        </tr>
          <tr>
            <td width="166" bgcolor="#CC0000"><div align="center" class="style2">
              <div align="right" class="style3">User Name  : </div>
          </div></td>
          <td width="300" bgcolor="#FFFFFF"><input name="user_name" type="text" id="user_name" size="50"></td>
        </tr>
          <tr>
            <td bgcolor="#CC0000"><div align="center" class="style2">
              <div align="right" class="style3">Password : </div>
          </div></td>
          <td bgcolor="#FFFFFF"><input name="password" type="password" id="password" size="50"></td>
        </tr>
          <tr>
            <td bgcolor="#CC0000"></td>
          <td bgcolor="#FFFFFF"><div align="center">
            <input name="reset" type="button" id="reset" value="Reset" style="width:120px; cursor:pointer;">
            <input name="login" type="submit" id="login"  value="Login" style="width:120px; cursor:pointer;">
            </div></td>
        </tr>
        </table>
      </form>
      <div align="center">
        <p>&nbsp;</p>
        <p><strong><span class="style4">OR</span></strong></p>
      </div>
      <table width="194" border="0" cellspacing="10" bgcolor="#CC0000" align="center">
        <!--DWLayoutTable-->
        <tr>
          <td width="160"><div align="center" class="style5"><a href="event_login_page.php">
            <input name="event_login" type="button" id="event_login" value="Event Organiser Login" style="height:50px; width:160px; cursor:pointer">
            </a>
          </div></td>
          <td width="18"></td>
        </tr>
                                       </table>      
      <p>&nbsp;</p></td>
  </tr>
  <tr>
    <td height="27" bordercolor="#FFFF00"><div align="right" style="background-color:#CC0000; color:#330000; play-during:repeat">
      <blockquote>
        <blockquote>
          <p class="style9"><em><strong><span class="style8">&copy;</span> <span class="style10">forward s/ash inc</span><span class="style11">.</span> </strong></em></p>
        </blockquote>
      </blockquote>
    </div></td>
  </tr>
</table>
</body>
</html>
