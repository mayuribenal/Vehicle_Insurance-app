<%@page import="com.vrs.vo.Insurance"%>
<%@page import="com.vrs.vo.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<h2 class="heading">List of All vehicle Insurance details</h2>
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
   <td width="140">Provider</td>
   <td width="140">Ins. Number</td>
   <td width="140">Ins. Valid date</td>
   <td>Insurance Holder</td>
   <td width="120">Action</td>
  </tr>
<%
	List<Insurance> insurances = (List<Insurance>)request.getAttribute("insurances");
	if(insurances.size() > 0){
		for(Insurance ins : insurances) {	
%>
  <tr class="row1"> 
   <td><%=ins.getProvider()%></td>
   <td><%=ins.getInsuranceNumber()%></td>
   <td><%=ins.getInsuranceValidDate()%></td>
   <td><a href="user.vrs?action=viewUser&userId=<%=ins.getUser().getId()%>"><%=ins.getUser().getName()%></a></td>
   <td><a href="javascript:deleteInsurance('<%=ins.getId()%>')">Delete </a> / 
   	  <a href="insurance.vrs?action=viewIns&insId=<%=ins.getId()%>">Edit </a>
   </td>
  </tr>
<%
		}//for
	}//if
	else {
%>
  <tr> 
   <td colspan="5">&nbsp;No user insurance record found.</td>
  </tr>
<%
	}//else
%>
</table>