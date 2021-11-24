<%@page import="com.vrs.vo.Vehicle"%>
<%@page import="com.vrs.vo.Insurance"%>
<%@page import="com.vrs.vo.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<h2 class="heading">List of All vehicle insurance</h2>
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
<p class="para">If you want to <button id="addNewUser">Add a new User</button> then click on add user button.</p>

<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="text">
  <tr align="center" id="listTableHeader"> 
   <td width="100">Source</td>
   <td width="100">Category</td>
   <td width="100">Plate number</td>
   <td width="120">Manufacture</td>
   <td width="120">Color</td>
   <td>Insurance Holder</td>
   <td width="120">Action</td>
  </tr>
<%
	List<Vehicle> vehicles = (List<Vehicle>)request.getAttribute("vehicles");
	if(vehicles.size() > 0){
		for(Vehicle v : vehicles) {	
%>
  <tr class="row1"> 
   <td><%=v.getSource()%></td>
   <td><%=v.getCategory()%></td>
   <td><%=v.getPlateNumber()%></td>
   <td><%=v.getManufacture()%></td>
   <td><%=v.getColor()%></td>
   <td><a href="user.vrs?action=viewUser&userId=<%=v.getUser().getId()%>"><%=v.getUser().getName()%></a></td>
   <td><a href="javascript:deleteVehicle('<%=v.getId()%>')">Delete</a> / 
   	  <a href="vehicle.vrs?action=viewVehicle&vehId=<%=v.getId()%>">Edit</a>
   </td>
  </tr>
<%
		}//for
	}//if
	else {
%>
  <tr> 
   <td colspan="5">&nbsp;No user vehicle record found.</td>
  </tr>
<%
	}//else
%>
</table>