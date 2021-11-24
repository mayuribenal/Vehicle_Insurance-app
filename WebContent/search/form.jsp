<%@page import="com.vrs.vo.User"%>
<%@page import="com.vrs.vo.Insurance"%>
<%@page import="com.vrs.vo.Vehicle"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<h2 class="heading">Search</h2>
<div class="errorMessage" id="blankMsg" style="width:90%;height:20px;">You can't leave all search field blank. Please insert values.</div>
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
<p class="para">Search Users, Vehicles or Insurance details here.</p>

<form action="search.vrs?action=search" method="post" >
  <table width="550" border="0" cellpadding="5" cellspacing="1" class="entryTable">
    <tr id="listTableHeader">
      <th  colspan="2" >Search User, Vehicle Details</th>
    </tr>
    <tr>
      <td width="200" height="20" class="label"><strong>User Name</strong></td>
      <td height="20" class="content"><input name="name" id="username" type="text" size="30" maxlength="30" /></td>
    </tr>
    <tr>
      <td width="200" height="20" class="label"><strong>Licence No.</strong></td>
      <td height="20" class="content"><input name="licence" id="vlicence" type="text" size="20" maxlength="20" /></td>
    </tr>
    <tr>
      <td width="200" height="20" class="label"><strong>Plate No.</strong></td>
      <td height="20" class="content"><input name="plateNumber" id="vplateNo" type="text" size="20" maxlength="30" /></td>
    </tr>
    <tr>
      <td height="20">&nbsp;</td>
      <td height="20"><input type="button" id="search" value="Search Now !" /></td>
    </tr>
	</table>
</form>

<script type="text/javascript">
$(document).ready(function(){
  $('div#blankMsg').hide();
	$('#search').click(function(){
    var username = $('#username');
    var vlicence = $('#vlicence');
    var vplateNo = $('#vplateNo');
    if(username.val() == "" && vlicence.val() == "" && vplateNo.val() == "" ) {
      $('div#blankMsg').show(200);
      return false;
    }
    var form = $('form')[0];
    form.submit();
  });
});//ready
</script>


<%
	User user = (User)request.getAttribute("search");
	if(null != user) {
%>
<h2 class="heading">Search Results</h2>
<table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" class="text">
  <tr> 
  <td>
  
  <table width="300" border="0" cellpadding="5" cellspacing="1" class="entryTable">
    <tr id="listTableHeader">
      <th  colspan="2">Owner Details</th>
    </tr>
    <tr>
      <td width="100" height="20" class="label"><strong>User Name</strong></td>
      <td height="20" class="content"><a href="user.vrs?action=viewUser&userId=<%=user.getId()%>"><%=user.getName()%></a></td>
    </tr>
     <tr>
      <td width="100" height="20" class="label"><strong>Gender</strong></td>
      <td height="20" class="content"><%=user.getGender()%></td>
    </tr>
     <tr>
      <td width="100" height="20" class="label"><strong>Nationality</strong></td>
      <td height="20" class="content"><%=user.getNationality()%></td>
    </tr>
    <tr>
      <td width="100" height="20" class="label"><strong>Licence No.</strong></td>
      <td height="20" class="content"><%=user.getLicence()%></td>
    </tr>
  </table>
  <br/>
  <%
    Insurance ins = user.getInsurance();
    if(null != ins) {
  %>
  <table width="300" border="0" cellpadding="5" cellspacing="1" class="entryTable">
    <tr id="listTableHeader">
      <th  colspan="2">Insurance Details</th>
    </tr>
    <tr>
      <td width="150" height="20" class="label"><strong>Insurance Provider</strong></td>
      <td height="20" class="content"><a href="insurance.vrs?action=viewUserIns&userId=<%=user.getId()%>"><%=ins.getProvider()%></a></td>
    </tr>
     <tr>
      <td width="150" height="20" class="label"><strong>Insurance Number</strong></td>
      <td height="20" class="content"><%=ins.getInsuranceNumber()%></td>
    </tr>
     <tr>
      <td width="150" height="20" class="label"><strong>Valid Date</strong></td>
      <td height="20" class="content"><%=ins.getInsuranceValidDate()%></td>
    </tr>
  </table>
  <% } %>
  </td>
  
  <td>
  <%
    Vehicle v = user.getVehicle();
    if(null != v){
  %>
  <table width="350" border="0" cellpadding="5" cellspacing="1" class="entryTable">
    <tr id="listTableHeader">
      <th  colspan="2">Vehicle Details</th>
    </tr>
    <tr>
      <td width="150" height="20" class="label"><strong>Source</strong></td>
      <td height="20" class="content"><a href="vehicle.vrs?action=viewUserVeh&userId=<%=user.getId()%>"><%=v.getSource()%></a></td>
    </tr>
     <tr>
      <td width="150" height="20" class="label"><strong>Category</strong></td>
      <td height="20" class="content"><%=v.getCategory()%></td>
    </tr>
     <tr>
      <td width="150" height="20" class="label"><strong>Plate Number</strong></td>
      <td height="20" class="content"><%=v.getPlateNumber()%></td>
    </tr>
    <tr>
      <td width="150" height="20" class="label"><strong>Manufacture</strong></td>
      <td height="20" class="content"><%=v.getManufacture()%></td>
    </tr>
    <tr>
      <td width="150" height="20" class="label"><strong>Type</strong></td>
      <td height="20" class="content"><%=v.getType()%></td>
    </tr>
    <tr>
      <td width="150" height="20" class="label"><strong>Color</strong></td>
      <td height="20" class="content"><%=v.getColor()%></td>
    </tr>
    <tr>
      <td width="150" height="20" class="label"><strong>Registration Date</strong></td>
      <td height="20" class="content"><%=v.getRegistrationDate()%></td>
    </tr>
    <tr>
      <td width="150" height="20" class="label"><strong>Pending Files</strong></td>
      <td height="20" class="content"><%=v.getPendingFines()%></td>
    </tr>
  </table>
  <% } %>
  
  </td>
  </tr>   
</table>
<%
	}
%>
