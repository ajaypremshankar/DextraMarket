<%-- 
    Document   : faculty_reg
    Created on : Feb 1, 2013, 4:04:41 AM
    Author     : ajay prem shankar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Faculty Registration</title>
<style>
.style1 {font-size: 40px;
color:#990000;
background-color:#FFFFFF;
}
.style2 {
	font-size: large;
	color: #FFFFFF;
}
.style5 {color: #0000FF}
.style8 {font-size: x-small}
.style9 {color: #FFFFFF; font-size: x-small; }
</style>

<script>
    function validate(){
        var name=document.forms["group_reg_form"]["name"].value;
        var email=document.forms["group_reg_form"]["email"].value;
        var password=document.forms["group_reg_form"]["password"].value;
        var confirm=document.forms["group_reg_form"]["confirm_password"].value;
        if(name=="" ||email=="" || password=="" || confirm==""){
            alert("fill All Required Fields Fisrt ..")
        }
        else if(password!=confirm){
            alert("Password and Confirm Password Must Be Same..");
        }
    }

</script>

</head>

<body bgcolor="#CCCCCC" background="fsw.png" style="background-attachment:fixed"><form action="faculty_reg_action.php" method="post" onsubmit="validate()">
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <!--DWLayoutTable-->
  <tr>
    <td width="800" height="52" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="border-width:1px; border-style:dashed">
      <!--DWLayoutTable-->
      <tr>
        <td width="800" height="50" class="style1"><div align="center"><strong>Register As Faculty : </strong></div></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="468" align="center" valign="top"><table width="100%" border="1" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="800" height="468" align="center" valign="top"><p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>                    
            <p>${sessionScope["error"]}
              <% session.removeAttribute("error"); %>
            </p>
            <p>&nbsp;</p>          <table width="700" height="200" border="0" align="center" cellspacing="10" bgcolor="#CC0000">
              <tr>
                <td width="158"><div align="right"><strong><span class="style2">Name : </span></strong></div></td>
                <td width="335" bgcolor="#FFFFFF"><input name="name" type="text" id="name" size="50"></td>
                <td width="95"><span class="style8">(<em><strong><span class="style5">REQUIRED</span></strong></em></span>)</td>
              </tr>
              <tr>
                <td><div align="right"><strong><span class="style2">Email : </span></strong></div></td>
                <td bgcolor="#FFFFFF"><input name="email" type="text" id="email" size="50"></td>
                <td><span class="style8"><em><span class="style9">Your UserName For Login </span></em>(<em><strong><span class="style5">REQUIRED</span></strong></em></span>)</td>
              </tr>
              <tr>
                <td><div align="right"><strong><span class="style2">Password : </span></strong></div></td>
                <td bgcolor="#FFFFFF"><input name="password" type="password" id="password" size="50"></td>
                <td><span class="style8">(<em><strong><span class="style5">REQUIRED</span></strong></em></span>)</td>
              </tr>
              <tr>
                <td><div align="right"><strong><span class="style2">Confirm Password  : </span></strong></div></td>
                <td bgcolor="#FFFFFF"><input name="confirm_password" type="password" id="confirm_password" size="50"></td>
                <td><span class="style8">(<em><strong><span class="style5">REQUIRED</span></strong></em></span>)</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td bgcolor="#FFFFFF"><div align="left">
                  <input name="reset" type="reset" id="reset" value="reset" style="width:120px; cursor:pointer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input name="register" type="submit" id="register" value="Register" style="width:150px; cursor:pointer">
                  </div></td>
                <td>&nbsp;</td>
              </tr>
              </table></td>
          </tr>
      
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
