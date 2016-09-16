<%-- 
    Document   : sell
    Created on : Feb 1, 2013, 4:31:40 PM
    Author     : ajay prem shankar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.ResultSet, AppPack.DBOperation, AppPack.User_Data_Table "%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <% ResultSet rs,rs1;
User_Data_Table udt;
int i=0,n=0;

     %>

<%
udt=(User_Data_Table)session.getAttribute("client");
n=udt.getEvent_id().size();

String s="select * from user_share_detail where id='"+udt.getId()+"'";
rs=DBOperation.getRecord(s);

%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Sale Your Shares</title>


<style type="text/css">
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
.style9 {
	color: #333333;
	font-weight: bold;
}
.style10 {font-size: large}
-->
</style></head>

<body bgcolor="#CCCCCC" background="fsw.png" style="background-attachment:fixed">
<table width="800" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="802" height="50" valign="top" align="center"><table width="100%" border="1" cellpadding="0" cellspacing="0" align="center"
	style="border-color:#CC0000; border-width:1px; border-style:dashed">
      <!--DWLayoutTable-->
      <tr>
        <td width="800" height="50"><table width="700" border="0" cellspacing="10" align="center" style="border-color:#CC0000; border-width:1px">
          <tr>
            <td width="254" scope="row"><div align="left"><strong><span class="style1">Sell Your  Shares </span></strong>....</div><td>
            <td width="191"><div align="center"><a href="user_home.php" >
              <input name="home" type="button" id="home" value="Home" style="width:120px; cursor:pointer; color:#990000;">
			  </a>
            </div></td>
            <td width="209"><div align="center"><a href="logout.php">
              <input name="logout" type="button" id="logout" value="Logout" style="width:120px; cursor:pointer; color:#990000;">
            </a>
			</div></td>
          </tr>
        </table></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="328" valign="top"><table width="100%" border="1" cellpadding="0" cellspacing="0" style="border-color:#CC0000; border-width:1px; border-style:dashed">
      <!--DWLayoutTable-->
      <tr>
        <td width="800" height="329" align="center" valign="top" style="vertical-align:top">
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <table width="228" border="0" cellspacing="10">
              <tr>
                <td width="206"><div align="center" class="style10"><span class="style9">Balance : <%= udt.getBalance() %></span></div></td>
              </tr>
            </table>
		    <p>&nbsp;</p>
		    <p>&nbsp;</p>
		    <p>${sessionScope["error"]}
		      <% session.removeAttribute("error"); %>
            </p>		  <form action="sale_shares_action.php" method="post">
              <table width="800" border="1" align="center" cellspacing="10" bordercolor="#CC0000" bgcolor="#CC0000" style="vertical-align:top; border-width:1px; border-color:#CC0000; border-style:groove;" >
                <tr>
                  <td width="156" scope="row" align="center"><div align="center"><strong><span class="style7">Name Of Event  </span></strong></div></td>
                <td width="172" align="center"><div align="center"><strong><span class="style7">No. Of Shares You Have </span></strong></div></td>
                <td width="177" align="center"><div align="center"><strong><span class="style2"><span class="style7">Rate</span> <span class="style3">(</span></span></strong><span class="style2"><span class="style5">in Detras </span></span><strong><span class="style2"><span class="style3">)</span></span></strong></div></td>
                <td width="142" align="center"><div align="center"><strong><span class="style7">Sell</span></strong></div></td>
                <td width="71" align="center"><div align="center"><strong><span class="style7">Total</span></strong></div></td>
              </tr>
                
                <% while(rs.next()){
         if(Integer.parseInt(rs.getString("share_count"))>0){

         String event_id=rs.getString("event_id");
         s="select * from event where event_id='"+event_id+"'";
         rs1=DBOperation.getRecord(s);
         
         if(rs1.next()){
         %>
                
                <tr>
                  
                  <td scope="row" align="center">
                    <div align="center">
                      <input name="event_id" type="text" id="event_id" size="20" value="<%= event_id %>" readonly style="text-align:center">
                  </div></td>
                  <td align="center">
                    <div align="center">
                      <input name="share_count" type="text" id="share_count" size="20" value="<%= rs.getString("share_count") %>" readonly>
                  </div></td>
                <td align="center">
                  <div align="center">
                    <input name="rate" type="text" id="rate" size="20" value="<%= rs1.getString("rate") %>" readonly>
                  </div></td>
                <td align="center"><div align="center">
                  <input name="sell_count" type="text" id="sell_count" value="0" size="5" maxlength="3">
                  <span class="style8">shares</span></div></td>
                <td align="center"><div align="center">
                  <input name="total" type="text" value=".." size="10" readonly>
                  </div></td>
              </tr>
                <% }
         }
         }%>
                
                <tr scope="row"><td colspan="4"><div align="right" class="style6">Grand Total: </div></td>
                <td><div align="center">
                  <input name="total2" type="text" value=".." size="10" readonly>
                  </div></td>
              </tr>
                <tr>
                  <td scope="row" colspan="4"><div align="right">
                    <input name="reset" type="reset" id="reset" value="Reset" style="width:120px; cursor:pointer; color:#990000;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <input name="sale" type="submit" id="sale" style="width:120px; cursor:pointer; color:#990000;" value="Sale">
                  </div></td>
                <td>&nbsp;</td>
              </tr>
              </table>
          </form></td>
        </tr>
      
    </table></td>
  </tr>
</table>

</body>
</html>
