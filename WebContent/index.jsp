<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="resources/css/admin.css" rel="stylesheet" type="text/css">

<link href="resources/spry/textfieldvalidation/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<script src="resources/spry/textfieldvalidation/SpryValidationTextField.js" type="text/javascript"></script>

<link href="resources/spry/passwordvalidation/SpryValidationPassword.css" rel="stylesheet" type="text/css" />
<script src="resources/spry/passwordvalidation/SpryValidationPassword.js" type="text/javascript"></script>
<title>Vehicle Registration System</title>
<style>
span {font-size:11px !important;font-family:verdana !important;}
</style>
</head>
<body>
<body style="background-color:#ECECEC;margin-top:50px;">
<table width="900" border="0" align="center" cellpadding="0" cellspacing="1" class="graybox">
 <tr style="background-color:#FFFFFF"> 
  <td><img src="images/vehicle-header.jpg" /></td>
 </tr>
 <tr> 
  <td valign="top"> 
  <table width="100%" border="0" cellspacing="0" cellpadding="20">
    <tr> 
     <td class="contentArea">
       <p>&nbsp;</p>
       <table width="350" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#336699" class="entryTable">
        <tr id="entryTableHeader"> 
         <td>:: Admin Login ::</td>
        </tr>
        <tr> 
         <td class="contentArea"> 
         <%
			Boolean success = (Boolean)request.getAttribute("success");
			if(null != success){
				if(!success){
			%>
				<div class="errorMessage" style="width:95%"><%=(String)request.getAttribute("message")%></div>
			<%
				}
			}
		%>

		 <form action="login.vrs?action=login" method="post">
		  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="text">
           <tr align="center"> 
            <td colspan="3">&nbsp;</td>
           </tr>
           <tr class="text"> 
            <td width="100" align="right">User Name</td>
            <td width="10">:</td>
            <td align="left">
            <span id="sprytextfield1" style="text-align:left;">
            	<input name="name" type="text" class="box" id="name" size="30" maxlength="20">
             	<br/>
	            <span class="textfieldRequiredMsg">Username is required.</span>
	            <span class="textfieldMinCharsMsg">Username must have at least 4 characters.</span>
			  	<span class="textfieldMaxCharsMsg">Username must have at max 10 characters.</span>
			</span>
            </td>
           </tr>
           <tr> 
            <td width="100" align="right">Password</td>
            <td width="10">:</td>
            <td align="left">
            <span id="sprypassword1" style="text-align:left;">
            	<input name="password" type="password" class="box" id="password" size="30">
            	<br/>
             	<span class="passwordRequiredMsg">Password is required.</span>
			  	<span class="passwordMinCharsMsg">Password must have at least 6 characters.</span>
			  	<span class="passwordMaxCharsMsg">Password must have at max 10 characters.</span>
			</span>
            </td>
           </tr>
		   
           <tr> 
            <td colspan="2">&nbsp;</td>
            <td align="left"><input name="btnLogin" type="submit" id="btnLogin" value="Login Now ! "></td>
           </tr>
          </table>
          
          </form>
          </td>
        </tr>
       </table>
       <p>&nbsp;</p>
      </td>
    </tr>
   </table></td>
 </tr>
</table>
<p>&nbsp;</p>
</body>

<script>
<!--
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "none", {minChars:4, maxChars: 10, validateOn:["blur", "change"]});
var sprypassword1 = new Spry.Widget.ValidationPassword("sprypassword1", {minChars:6, maxChars: 10, validateOn:["blur", "change"]});
//-->
</script>
</html>