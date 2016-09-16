<%-- 
    Document   : group_reg
    Created on : Feb 1, 2013, 3:54:35 AM
    Author     : ajay prem shankar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Team Registration</title>
<script>
    function validate(){
        var id=document.forms["group_reg_form"]["id"].value;
        var name1=document.forms["group_reg_form"]["name1"].value;
        var email1=document.forms["group_reg_form"]["email1"].value;
        var password=document.forms["group_reg_form"]["password"].value;
        var confirm=document.forms["group_reg_form"]["confirm_password"].value;
        if(id=="" || name1=="" ||email1=="" || password=="" || confirm==""){
            alert("fill All Required Fields Fisrt ..")
        }
        else if(password!=confirm){
            alert("Password and Confirm Password Must Be Same..");
        }
    }

</script>


<style type="text/css">
<!--
.style1 {
	font-size: 40px;
	color:#990000;
	background-color:#FFFFFF;
	font-weight: bold;
}
.style3 {font-size: large}
.style4 {color: #FFFFFF}
.style5 {color: #0000FF}
.style7 {color: #0000FF; font-size: x-small; }
.style8 {font-size: x-small}
.style9 {color: #FFFFFF; font-size: x-small; }
-->
</style>
</head>

<body bgcolor="#CCCCCC" background="fsw.png" style="background-attachment:fixed" >
<table width="800" border="1" cellpadding="0" cellspacing="0" align="center" bgcolor="#FFFFFF">
  <!--DWLayoutTable-->
  <tr>
    <td width="800" height="50" valign="top"><table width="100%" border="1" cellpadding="0" cellspacing="0" bgcolor="#CC0000">
      <!--DWLayoutTable-->
      <tr>
        <td width="800" height="50"><div align="center" class="style1">Register Your Group: </div></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="550" align="center">
	<form action="group_reg_action.php" method="post" name="group_reg_form" onsubmit="validate()">
	<p>&nbsp;</p>
	<p>         <p>${sessionScope["error"]}
              <% session.removeAttribute("error"); %>
</p>
	<table width="700" height="300" border="0" cellspacing="10" bgcolor="#CC0000" style="font-size:large">
      <tr>
        <td width="185" class="style3"><div align="right"><strong><span class="style4">Group Name : </span></strong></div></td>
        <td width="349" bgcolor="#FFFFFF"><input name="id" type="text" id="id" size="50"></td>
        <td width="120" bgcolor="#CC0000"><div align="left"><em><span class="style9">Your UserName For Login </span></em><span class="style8">(<em><strong><span class="style5">REQUIRED</span></strong></em></span>)</div></td>
      </tr>
      <tr>
        <td><div align="right"><strong><span class="style4">Name Of Member 1: </span></strong></div></td>
        <td bgcolor="#FFFFFF"><input name="name1" type="text" id="name1" size="50"></td>
        <td bgcolor="#CC0000"><div align="left"><em><strong><span class="style7">(REQUIRED)</span></strong></em></div></td>
      </tr>
      <tr>
        <td><div align="right"><strong><span class="style4">Email Of Member 1: </span></strong></div></td>
        <td bgcolor="#FFFFFF"><input name="email1" type="text" id="email1" size="50"></td>
        <td bgcolor="#CC0000"><em><strong><span class="style7">(REQUIRED)</span></strong></em></td>
      </tr>
      <tr>
        <td><div align="right"><strong><span class="style4">Name Of Member 2: </span></strong></div></td>
        <td bgcolor="#FFFFFF"><input name="name2" type="text" id="name2" size="50"></td>
        <td bgcolor="#CC0000"><em><strong><span class="style7">(OPTIONAL)</span></strong></em></td>
      </tr>
      <tr>
        <td><div align="right"><strong><span class="style4">Email Of Member 2: </span></strong></div></td>
        <td bgcolor="#FFFFFF"><input name="email2" type="text" id="email2" size="50"></td>
        <td bgcolor="#CC0000"><em><strong><span class="style7">(OPTIONAL)</span></strong></em></td>
      </tr>
      <tr>
        <td><div align="right"><strong><span class="style4">Password : </span></strong></div></td>
        <td bgcolor="#FFFFFF"><input name="password" type="password" id="password" size="50"></td>
        <td bgcolor="#CC0000"><em><strong><span class="style7">(REQUIRED)</span></strong></em></td>
      </tr>
      <tr>
        <td><div align="right"><strong><span class="style4">Confirm Password : </span></strong></div></td>
        <td bgcolor="#FFFFFF"><input name="confirm_password" type="password" id="confirm_password" size="50" onblur="validate()"></td>
        <td bgcolor="#CC0000"><em><strong><span class="style7">(REQUIRED)</span></strong></em></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td bgcolor="#FFFFFF">

          <div align="left">
            <input name="reset" type="reset" id="reset" value="reset" style="width:100px; cursor:pointer">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input name="register" type="submit" id="register" value="Register" style="width:120px; cursor:pointer">
            </div></td><td bgcolor="#CC0000">&nbsp;</td>
      </tr>
    </table>
	</form>
	</td>
  </tr>
</table>
</body>
</html>
