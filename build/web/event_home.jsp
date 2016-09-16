<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Home- Event Organizer</title>
<style type="text/css">
<!--
.style1 {	font-size: xx-large;
	color: #CC0000;
}
.style2 {	font-size: large;
	color: #FFFFFF;
}
-->
</style>
</head>
<%@page import="AppPack.Event_Data" %>
<% Event_Data ed=(Event_Data)session.getAttribute("client");
%>
<body bgcolor="#CCCCCC" background="fsw.png" style="background-attachment:fixed">
<table width="800" border="1" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="800" height="50" valign="top"><table width="100%" border="1" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="658" height="50" valign="top"><div align="center"><strong><span class="style1">Welcome <%= ed.getEvent_id().toUpperCase() %> </span></strong></div></td>
        <td width="142" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <tr>
            <td width="142" height="50"><div align="center"> <a href="logout.php">
              <input name="logout" type="submit" id="logout" value="Logout" style="width:120px; height:40px; cursor:pointer; font-size:x-large; color:#990000;">
            </a> </div></td>
          </tr>
        </table>        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="538" align="center" valign="top"><p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <table width="500" height="150" border="0" cellspacing="10" bgcolor="#CC0000">
        <!--DWLayoutTable-->
        <tr>
          <td width="204" height="35" valign="top"><div align="right"><strong><span class="style2">Name Of Event : </span></strong></div></td>
          <td width="261" valign="top"><div align="center">
            <input name="event_name" type="text" id="event_name" size="30" disabled="disabled"
        value="<%= ed.getEvent_id() %>" >
          </div></td>
        </tr>
        <tr>
          <td height="35" valign="top"><div align="right"><strong><span class="style2">Shares Remaining  : </span></strong></div></td>
          <td valign="top"><div align="center">
            <input name="shares_remaining" type="text" id="shares_remaining" size="30" disabled="disabled"
        value="<%= ed.getShare_remaining() %>">
          </div></td>
        </tr>
        <tr>
          <td height="40" valign="top"><div align="right"><strong><span class="style2">Current Rate : </span></strong></div></td>
          <td valign="top"><div align="center">
            <input name="rate" type="text" id="rate" size="30" disabled="disabled"
        value="<%= ed.getRate() %>">
          </div></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p>${sessionScope["error"]}
        <% session.removeAttribute("error"); %>
      </p>
      <p>&nbsp;</p>
      <form action="change_share_rate_action.php" method="post">
        <table width="500" border="0" cellspacing="10" bgcolor="#CC0000">
          <tr>
            <td width="166"><div align="right"><strong><span class="style2">Set New Rate  : </span></strong></div></td>
          <td width="300"><input name="new_rate" type="text" id="new_rate" size="50" maxlength="3"></td>
        </tr>
          <tr>
            <td>&nbsp;</td>
          <td><div align="center" bgcolor="#FFFFFF">
            <input name="reset2" type="reset" id="reset2" value="Reset" style="width:120px; cursor:pointer; color:#990000;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input name="change_rate" type="submit" id="change_rate" value="Change Rate" style="width:120px; cursor:pointer; color:#990000;">
            </div></td>
        </tr>
        </table>
    </form>      <p>&nbsp;</p></td>
  </tr>
</table>
</body>
</html>
