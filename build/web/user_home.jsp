<%-- 
    Document   : user_home
    Created on : Feb 1, 2013, 2:49:53 AM
    Author     : ajay prem shankar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="AppPack.User_Data_Table, AppPack.DBOperation, java.sql.ResultSet" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

   
   <%
   int total=0,n=0;
   User_Data_Table udt=((User_Data_Table)session.getAttribute("client"));
   n=udt.getEvent_id().size();
   String q="select * from user_share_detail where id='"+udt.getId()+"'";
   ResultSet rs=DBOperation.getRecord(q);

   %>





<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>HOME <%= udt.getName() %></title><style type="text/css">
<!--
.style1 {
	font-family: "Courier New", Courier, monospace;
	font-size: xx-large;
	color: #990000;
}
.style2 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: large;
}
.style3 {
	font-size: large;
	color: #FFFFFF;
}
.style5 {
	font-size: small;
	color: #CCCCCC;
}
.style7 {
	font-size: x-large;
	color: #FFFFFF;
}
.style8 {color: #FFFFFF}
-->
</style></head>

<body bgcolor="#CCCCCC" background="fsw.png" style="background-attachment:fixed">
<table width="800" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="800" height="50" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="800" height="50"><table width="700" border="0" cellspacing="10" align="center">
          <tr>
              <td width="529"><div align="left"><strong><span class="style1">Welcome <%= udt.getName().toUpperCase() %> </span></strong></div></td>
            <td width="137"><div align="center">
			<a href="logout.php" >
              <input name="logout" type="submit" id="logout" value="Logout" style="width:120px; height:40px; cursor:pointer; font-size:x-large; color:#990000;">
			  </a>
            </div></td>
          </tr>
        </table></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="27">&nbsp;</td>
  </tr>
  <tr>
    <td height="434" valign="top"><table width="100%" border="1" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="800" height="434" align="center" valign="top" style="vertical-align:top"><p>&nbsp;</p>
          <p>${sessionScope["error"]}
              <% session.removeAttribute("error"); %>
            </p>
          <p>&nbsp;</p>
          <table width="700" height="70" border="0" align="center" cellspacing="10" style="vertical-align:top; background-color:#CC0000;" >
              <tr>
                <td width="101"><div align="right"><span class="style2">You Have  : </span></div></td>
                <td width="301"><div align="left">
                  <input name="textfield" type="text" size="15" disabled="disabled"
                     value="<%= udt.getBalance() %>">
                  <em><strong><span class="style3"> Dextras Remaining... </span></strong></em>
                </div></td>
                <td width="120"><div align="center">
                  <a href="buy.php">
                    <input name="buy" type="button" id="buy" value="Buy" style="width:120px; cursor:pointer; color:#990000;">
                    </a>
                </div></td>
                <td width="120"><div align="center">
                  <a href="sale.php">
                    <input name="sale" type="button" id="sale" value="Sale" style="width:120px; cursor:pointer; color:#990000;">
                    </a>
                </div></td>
              </tr>
            </table>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <table width="700" border="1" cellspacing="10" bgcolor="#CC0000" style="border-color:#CC0000">
              <tr>
                <th width="119" scope="row"><div align="center"><span class="style8">Event Name  </span></div></th>
                <th width="190" scope="row"><strong><span class="style8">No. of Shares You Have </span></strong></th>
                <th width="184" scope="row"><div align="center"><span class="style8">Rate per Share </span>(<span class="style5">in Dextras </span>)</div></th>
                <th width="139" scope="row"><div align="center"><span class="style8">Total </span>(<span class="style5">in Dextras </span>)</div></th>
              </tr>
              <%
            
            while(rs.next()){
                if(Integer.parseInt(rs.getString("share_count"))>0){
                %>
              <tr style="background-color:#FFFFFF">
                <th scope="row"><%=rs.getString("event_id") %></th>
                <th><%=rs.getString("share_count") %></th>
                <th><%=rs.getString("rate") %></th>
                <th scope="row">
                  <% total+=Integer.parseInt(rs.getString("share_count"))*Integer.parseInt(rs.getString("rate")); %>
                  <%=Integer.parseInt(rs.getString("share_count"))*Integer.parseInt(rs.getString("rate")) %>                </th>
              </tr>
              <%
            
            }
            }
            %>
              <tr>
                <th scope="row" colspan="3"><div align="right"><strong><span class="style7">Total Share Valuation  : </span></strong></div></th>
                <th scope="row" style="background-color:#FFFFFF">
                  <%= total%>                </th>
              </tr>
          </table>          <p>&nbsp;</p></td>
        </tr>
      
    </table></td>
  </tr>
</table>
</body>
</html>
