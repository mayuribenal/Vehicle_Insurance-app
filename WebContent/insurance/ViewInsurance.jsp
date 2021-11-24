<%@page import="com.vrs.vo.Insurance"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<h2 class="heading">View Insurance details for user vehicle</h2>
<p class="para">View list of all users and click on <a href="#">Vehicle</a> to view user's vehicle details or click on <a href="#">Insurance</a> to view user's insurance details.</p>

<link href="resources/spry/textfieldvalidation/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<script src="resources/spry/textfieldvalidation/SpryValidationTextField.js" type="text/javascript"></script>

<link href="resources/spry/passwordvalidation/SpryValidationPassword.css" rel="stylesheet" type="text/css" />
<script src="resources/spry/passwordvalidation/SpryValidationPassword.js" type="text/javascript"></script>

<link href="resources/spry/selectvalidation/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
<script src="resources/spry/selectvalidation/SpryValidationSelect.js" type="text/javascript"></script>
<%
	Insurance ins = (Insurance)request.getAttribute("insurance");
%>
<form action="insurance.vrs?action=edit" method="post" >
    <table width="550" border="0" cellpadding="5" cellspacing="1" class="entryTable">
      <tr id="listTableHeader">
        <th  colspan="2" >Add Insurance Details</th>
      </tr>
      <tr>
      	<input type="hidden" name="userId" value="<%=ins.getUser().getId()%>" />
      	<input type="hidden" name="insId" value="<%=ins.getId()%>" />
        <td width="200" height="30" class="label"><strong>User Name</strong></td>
        <td height="30" class="content">
            <input name="name" type="text" size="30" maxlength="30"  value="<%=ins.getUser().getName()%>" readonly="readonly"/>
		</td>
      </tr>
	  
	  <tr>
        <td width="200" height="30" class="label"><strong>Insurance Provider</strong></td>
        <td height="30" class="content">		
        <span id="sprytf_inc">
            <input name="provider" type="text" size="30" maxlength="20" value="<%=ins.getProvider()%>" />
            <br/>
         <span class="textfieldRequiredMsg">Insurance Provider is required.</span>
			<span class="textfieldMinCharsMsg">Insurance Provider must specify at least 6 characters.</span>
		</span>
		</td>
      </tr>
      
	  <tr>
        <td width="200" height="30" class="label"><strong>Insurance Number</strong></td>
        <td height="30" class="content">
        <span id="sprytf_number">
            <input name="insuranceNumber" type="text" size="30" maxlength="20"  value="<%=ins.getInsuranceNumber()%>" />
             <br/>
             <span class="textfieldRequiredMsg">Insurance Number is required.</span>
			<span class="textfieldMinCharsMsg">Insurance Number must specify at least 6 characters.</span>
		</span>
		</td>
      </tr>	  
	  
	  <tr>
        <td width="200" height="30" class="label"><strong>Insurance Valid date</strong></td>
        <td height="30" class="content">
        <span id="sprytf_date">
            <input name="insuranceValidDate" type="text" size="16" maxlength="20" value="<%=ins.getInsuranceValidDate()%>"  />&nbsp;<small>Format: dd-mm-yyyy</small>
             <br/>
             <span class="textfieldRequiredMsg">Valid date is required.</span>
			 <span class="textfieldInvalidFormatMsg">Invalid date format.</span>
		</span>
		</td>
      </tr>
	  	  
      <tr>
        <td height="30">&nbsp;</td>
        <td height="30"><input type="submit" value="Edit Insurance Detail" /></td>
      </tr>
	</table>
</form>

<script type="text/javascript">
<!--
var sprytf_inc = new Spry.Widget.ValidationTextField("sprytf_inc", 'none', {minChars:6, maxChars: 30, validateOn:["blur", "change"]});
var sprytf_number = new Spry.Widget.ValidationTextField("sprytf_number", 'none', {minChars:6, maxChars: 20, validateOn:["blur", "change"]});
var sprytf_date = new Spry.Widget.ValidationTextField("sprytf_date", 'date', {format:"dd-mm-yyyy", useCharacterMasking: true, validateOn:["blur", "change"]});

//-->
</script>