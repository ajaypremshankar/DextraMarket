<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Event Registration</title><style type="text/css">
<!--
.style1 {
	font-size: xx-large;
	color: #CC0000;
}
.style2 {
	font-size: large;
	color: #FFFFFF;
}
-->
</style></head>

<body bgcolor="#CCCCCC" background="fsw.png" style="background-attachment:fixed"><form action="event_reg_action.php" method="post">
<table width="800" border="0" cellpadding="0" cellspacing="0" align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="800" height="50" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="800" height="50"><div align="center"><strong><span class="style1">Register An Event : </span></strong></div></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="439" valign="top"><table width="100%" border="1" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
      <!--DWLayoutTable-->
      <tr>
        <td width="800" height="439" align="center" valign="top"><p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>${sessionScope["Exception"]}
              <% session.removeAttribute("Exception"); %>
            </p>
            <p>&nbsp;</p>          <table width="600" height="200" border="0" cellspacing="10" bgcolor="#CC0000">
              <tr>
                <td width="366"><div align="right"><strong><span class="style2">Name Of Event : </span></strong></div></td>
                <td width="300" bgcolor="#FFFFFF"><input name="event_name" type="text" id="event_name" size="50" placeholder="user-name for further login"></td>
              </tr>
              <tr>
                <td><div align="right"><strong><span class="style2">Organiser's Email  : </span></strong></div></td>
                <td bgcolor="#FFFFFF"><input name="event_email" type="text" id="event_email" size="50"></td>
              </tr>
              <tr>
                <td><div align="right"><strong><span class="style2">Rate Of A Share  : </span></strong></div></td>
                <td bgcolor="#FFFFFF"><input name="share_rate" type="text" id="share_rate" size="50"></td>
              </tr>
              <tr>
                <td><div align="right"><strong><span class="style2">Initial Share Count: </span></strong></div></td>
                <td bgcolor="#FFFFFF"><input name="share_count" type="text" id="share_count" size="50" value="500" disabled="disabled"></td>
              </tr>
              <tr>
                <td><div align="right"><strong><span class="style2">Password: </span></strong></div></td>
                <td><input name="password" type="password" id="password" size="50"></td>
              </tr>
              <tr>
                <td><div align="right"><strong><span class="style2">Confirm Password: </span></strong></div></td>
			    <td><input name="password2" type="password" id="password2" size="50"></td>
              </tr>
              <tr>
                <td colspan="2"><div align="center" bgcolor="#FFFFFF">
                  <input name="reset2" type="reset" id="reset2" value="Reset" style="width:120px; cursor:pointer; color:#990000;">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="event_reg_action.php">
                    <input name="register2" type="submit" id="register2" value="Register" style="width:120px; cursor:pointer; color:#990000;">
                  </a> </div></td>
              </tr>
              </table></td>
        </tr>
      
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
