<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<h2 class="heading">Edit Vehicle details for user vehicle</h2>
<%
Boolean success = (Boolean)request.getAttribute("success");
if(null != success){
	if(success){
%>
	<div class="errorMessage"><%=(String)request.getAttribute("message")%></div>
<%
	}
}
%>

<p class="para">View list of all users and click on <a href="#">Vehicle</a> to view user's vehicle details or click on <a href="#">Insurance</a> to view user's insurance details.</p>

<link href="resources/spry/textfieldvalidation/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<script src="resources/spry/textfieldvalidation/SpryValidationTextField.js" type="text/javascript"></script>

<link href="resources/spry/selectvalidation/SpryValidationSelect.css" rel="stylesheet" type="text/css" />
<script src="resources/spry/selectvalidation/SpryValidationSelect.js" type="text/javascript"></script>

<form action="vehicle.vrs?action=add" method="post" >
    <table width="550" border="0" cellpadding="5" cellspacing="1" class="entryTable">
      <tr id="listTableHeader">
        <th  colspan="2" >Add Vehicle Details</th>
      </tr>
	  
	  <tr>
	  	<input type="hidden" name="userId" value="<%=request.getParameter("userId") %>" />
        <td width="200" height="30" class="label"><strong>Source</strong></td>
        <td height="30" class="content">		
        <span id="sprytf_src">
            <input name="source" type="text" size="30" maxlength="20" />
            <br/>
             <span class="textfieldRequiredMsg">Source is required.</span>
			<span class="textfieldMinCharsMsg">Source must specify at least 4 characters.</span>
			<span class="textfieldMaxCharsMsg">Source must have at max 10 characters.</span>
		</span>
		</td>
      </tr>
      
	  <tr>
        <td width="200" height="30" class="label"><strong>Category</strong></td>
        <td height="30" class="content">
        <span id="sprytf_cat">
            <input name="category" type="text" size="30" maxlength="20" />
             <br/>
             <span class="textfieldRequiredMsg">Category is required.</span>
			<span class="textfieldMinCharsMsg">Category must specify at least 4 characters.</span>
			<span class="textfieldMaxCharsMsg">Category must have at max 20 characters.</span>
		</span>
		</td>
      </tr>	  
	  
	  <tr>
        <td width="200" height="30" class="label"><strong>Plate Number</strong></td>
        <td height="30" class="content">
        <span id="sprytf_pla">
            <input name="plateNumber" type="text" size="20" maxlength="20" />
             <br/>
             <span class="textfieldRequiredMsg">Plate Number is required.</span>
			<span class="textfieldMinCharsMsg">Plate Number must specify at least 4 characters.</span>
			<span class="textfieldMaxCharsMsg">Plate Number must have at max 20 characters.</span>
		</span>
		</td>
      </tr>
      
      <tr>
        <td width="200" height="30" class="label"><strong>Manufacture</strong></td>
        <td height="30" class="content">
        <span id="sprytf_man">
            <input name="manufacture" type="text" size="20" maxlength="20" />
             <br/>
             <span class="textfieldRequiredMsg">Manufacture is required.</span>
			<span class="textfieldMinCharsMsg">Manufacture must specify at least 4 characters.</span>
			<span class="textfieldMaxCharsMsg">Manufacture must have at max 20 characters.</span>
		</span>
		</td>
      </tr>
      
      <tr>
        <td width="200" height="30" class="label"><strong>Type</strong></td>
        <td height="30" class="content">
        <span id="sprytf_typ">
          <select name="type" style="width:200px;">
            <option value="" selected="selected">All Vehicle Types</option>
            <option value="hatchback">Hatchback</option>
            <option value="sedans">Sedans</option>
            <option value="muv">MUV</option>
            <option value="suv">SUV</option>
            <option value="luxury">Luxury</option>
            <option value="hybrids">Hybrids</option>
            <option value="minivans">Minivans</option>
            <option value="convertibles">Convertibles</option>
            <option value="coupe">Coupe</option>
          </select>
      
             <br/>
            <span class="selectRequiredMsg">Type is required.</span>
		
		</span>
		</td>
      </tr>
      
      <tr>
        <td width="200" height="30" class="label"><strong>Color</strong></td>
        <td height="30" class="content">
        <span id="sprytf_col">
            <input name="color" type="text" size="20" maxlength="20" />
             <br/>
             <span class="textfieldRequiredMsg">Color is required.</span>
			<span class="textfieldMinCharsMsg">Color must specify at least 3 characters.</span>
			<span class="textfieldMaxCharsMsg">Color must have at max 20 characters.</span>
		</span>
		</td>
      </tr>
      
      <tr>
        <td width="200" height="30" class="label"><strong>Registration Date</strong></td>
        <td height="30" class="content">
        <span id="sprytf_reg">
            <input name="registrationDate" type="text" size="20" maxlength="20" />&nbsp;<small>Format: dd-mm-yyyy</small>
             <br/>
             <span class="textfieldRequiredMsg">Registration Date is required.</span>
		</span>
		</td>
      </tr>
      
      <tr>
        <td width="200" height="30" class="label"><strong>Pending Fines</strong></td>
        <td height="30" class="content">
        <span id="sprytf_pen">
            <input name="pendingFines" type="text" size="30" maxlength="20" />
             <br/>
             <span class="textfieldRequiredMsg">Pending Fines is required.</span>
			<span class="textfieldMinCharsMsg">Pending Fines must specify at least 6 characters.</span>
		</span>
		</td>
      </tr>
      
      <tr>
        <td height="30">&nbsp;</td>
        <td height="30"><input type="submit" value="Add Vehicle Detail" /></td>
      </tr>
	</table>
</form>

<script type="text/javascript">
<!--
var sprytf_src = new Spry.Widget.ValidationTextField("sprytf_src", 'none', {minChars:4, maxChars: 30, validateOn:["blur", "change"]});
var sprytf_cat = new Spry.Widget.ValidationTextField("sprytf_cat", 'none', {minChars:4, maxChars: 20, validateOn:["blur", "change"]});
var sprytf_pla = new Spry.Widget.ValidationTextField("sprytf_pla", 'none', {minChars:4, maxChars: 20, validateOn:["blur", "change"]});

var sprytf_man = new Spry.Widget.ValidationTextField("sprytf_man", 'none', {minChars:4, maxChars: 20, validateOn:["blur", "change"]});
var sprytf_typ = new Spry.Widget.ValidationSelect("sprytf_typ");
var sprytf_col = new Spry.Widget.ValidationTextField("sprytf_col", 'none', {minChars:3, maxChars: 20, validateOn:["blur", "change"]});

var sprytf_pen = new Spry.Widget.ValidationTextField("sprytf_pen", 'none', {minChars:4, maxChars: 20, validateOn:["blur", "change"]});
var sprytf_pen = new Spry.Widget.ValidationTextField("sprytf_reg", 'date', {format:"dd-mm-yyyy", useCharacterMasking: true, validateOn:["blur", "change"]});
//-->
</script>