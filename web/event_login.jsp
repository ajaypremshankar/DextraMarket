<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Login- Event</title>
<style type="text/css">
<!--
.style1 {font-size: xx-large;
	color: #CC0000;
}
.style2 {	font-size: x-large;
	font-weight: bold;
	color: #FFFFFF;
}
.style3 {font-size: large}
-->
</style>
</head>

<body bgcolor="#CCCCCC" background="fsw.png" style="background-attachment:fixed" ><form action="event_login_action.php" method="post">
<table width="800" border="1" cellpadding="0" cellspacing="0" align="center" bgcolor="#FFFFFF">
  <!--DWLayoutTable-->
  <tr>
    <td width="800" height="50" valign="top"><table width="100%" border="1" cellpadding="0" cellspacing="0" align="center">
      <!--DWLayoutTable-->
      <tr>
        <td width="800" height="50" align="center"><div align="center"><strong><span class="style1">Event Organizer Login: </span></strong></div></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="407" align="center" valign="top"><p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>${sessionScope["error"]}
  <%
session.removeAttribute("error");
%>
      </p>
      <p>&nbsp;</p>
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
        </table>      <p>&nbsp;</p></td>
  </tr>
</table>
</form>
</body>
</html>
