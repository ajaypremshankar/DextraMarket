<%-- 
    Document   : buy
    Created on : Feb 1, 2013, 5:13:38 PM
    Author     : ajay prem shankar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.ResultSet, AppPack.DBOperation, AppPack.User_Data_Table "%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

   <%! ResultSet rs;
    User_Data_Table udt;
    int i=0,n=0;

     %>

<%
    String s="select * from event";
    rs=DBOperation.getRecord(s);
    udt=(User_Data_Table)session.getAttribute("client");
    n=udt.getEvent_id().size();
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Buy More Shares</title><style type="text/css">
<!--
.style1 {
	font-size: large;
	color: #CC0000;
}
.style2 {color: #CC0000}
.style3 {color: #0000FF}
.style5 {color: #0000FF; font-size: small; }
.style6 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: x-large;
}
.style7 {color: #FFFFFF}
.style8 {font-size: large; color: #FFFFFF; }
.style10 {font-size: large}
.style9 {	color: #333333;
	font-weight: bold;
}
-->
</style></head>

<body bgcolor="#CCCCCC" background="fsw.png" style="background-attachment:fixed"><form action="buy_shares_action.php" method="post">
<table width="800" border="1" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="802" height="50" valign="top" align="center"><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center"
	style="border-color:#CC0000; border-width:1px; border-style:dashed">
      <!--DWLayoutTable-->
      <tr>
        <td width="800" height="50"><table width="700" border="1" cellspacing="10" align="center" style="border-color:#CC0000; border-width:1px">
          <tr>
            <th width="254" scope="row"><div align="left"><strong><span class="style1">Buy More  Shares </span></strong>....</div></th>
            <td width="191">
              <div align="right">
			  <a href="user_home.php" >
                <input name="home" type="button" id="home" value="Home" style="width:120px; cursor:pointer; color:#990000;">
                </a>				</div></td>
            <td width="209">
              <div align="right">
			  <a href="logout.php">
                <input name="logout" type="button" id="logout" value="Logout" style="width:120px; cursor:pointer; color:#990000;">
                </a>				</div></td>
          </tr>
        </table></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="603" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="border-color:#CC0000; border-width:1px; border-style:dashed">
      <!--DWLayoutTable-->
      <tr>
        <td width="800" height="600" align="center" valign="top" style="vertical-align:top">
          <p>&nbsp;</p>
		      <p>&nbsp;</p>
		      <table width="200" border="0" cellspacing="10">
                <tr>
                    <td><div align="center" class="style10"><span class="style9">Balance : <%= udt.getBalance() %></span></div></td>
                </tr>
              </table>
		      <p>&nbsp;</p>
		      <p>&nbsp;</p>
		      <p>${sessionScope["error"]}
		        <% session.removeAttribute("error"); %>
	          </p>		  <table width="800" border="0" align="center" cellspacing="10" bgcolor="#CC0000" style="vertical-align:top; border-width:1px; border-color:#CC0000; border-style:groove;">
	            <tr>
	              <th width="143" scope="row"><div align="center"><strong><span class="style7">Name Of Event  </span></strong></div></th>
                  <td width="178"><div align="center"><strong><span class="style7">No. Of Shares Available </span></strong></div></td>
                  <td width="144"><div align="center"><strong><span class="style2"><span class="style7">Rate</span> <span class="style3">(</span></span></strong><span class="style2"><span class="style5">in Detras </span></span><strong><span class="style2"><span class="style3">)</span></span></strong></div></td>
                  <td width="153"><div align="center"><strong><span class="style7">Buy</span></strong></div></td>
                  <td width="110"><div align="center"><strong><span class="style7">Total</span></strong></div></td>
                </tr>
	            <% while(rs.next()){ %>
	            <tr>
	              <th scope="row">
                  <input name="event_id" type="text" id="event_id" size="20" value="<%= rs.getString("event_id") %>" readonly></th>
                  <td><div align="center">
                    <input name="share_remaining" type="text" id="share_remaining" size="20" value="<%= rs.getString("share_remaining") %>" readonly>
                  </div></td>
                  <td><div align="center">
                    <input name="rate" type="text" id="rate" size="20" value="<%= rs.getString("rate") %>" readonly>
                  </div></td>
                  <td><div align="center">
                    <input name="count" type="text" id="count" size="5" value="0">
                  <span class="style8">shares</span></div></td>
                  <td><div align="center">
                    <input name="total" type="text" size="10" readonly>
                  </div></td>
                </tr>
	            <% } %>
	            <tr>
	              <th scope="row" colspan="4"><div align="right" class="style6">Grand Total: </div></th>
                  <td>&nbsp;</td>
                </tr>
	            <tr>
	              <th scope="row" colspan="4"><div align="right">
		              <input name="reset" type="reset" id="reset" value="Reset" style="width:120px; cursor:pointer; color:#990000;">
		              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		              
		              <input name="buy" type="submit" id="buy" value="Buy" style="width:120px; cursor:pointer; color:#990000;">
	              </div></th>
                  <td>&nbsp;</td>
                </tr>
              </table></td>
          </tr>
      <tr>
        <td height="1"></td>
          </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
