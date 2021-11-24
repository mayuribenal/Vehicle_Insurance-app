<%@page import="com.vrs.vo.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<h2 class="heading">List of All users</h2>
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
   <td width="120">User Name</td>
   <td width="100">Gender</td>
   <td width="120">Nationality</td>
   <td width="120">Licence No.</td>
   <td width="180">Details</td>
   <td width="100">Action</td>
  </tr>
<%
	List<User> users = (List<User>)request.getAttribute("users");
	if(users.size() > 0){
		for(User user : users) {	
%>
  <tr class="row1"> 
   <td><a href="user.vrs?action=viewUser&userId=<%=user.getId()%>"><%=user.getName()%></a></td>
   <td><%=user.getGender()%></td>
   <td><%=user.getNationality()%></td>
   <td><%=user.getLicence()%></td>
   <td align="center">
   		<a href="insurance.vrs?action=viewUserIns&userId=<%=user.getId()%>">Insurance</a>&nbsp;/
   		&nbsp;<a href="vehicle.vrs?action=viewUserVeh&userId=<%=user.getId()%>">Vehicle</a>
   </td>
   <td align="center"><a href="javascript:deleteUser('<%=user.getId()%>')">Delete</a></td>
  </tr>
<%
		}//for
	}//if
	else {
%>
  <tr> 
   <td colspan="5">&nbsp;No user record found.</td>
  </tr>
<%
	}//else
%>
</table>