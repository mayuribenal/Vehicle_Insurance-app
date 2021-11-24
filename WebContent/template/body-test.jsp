<%@ page import="com.demo.controller.beans.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h4>Welcome, You Login Successfully.!</h4>
User name : <c:out value="${requestScope.usr.uname}"  /> <br/>
User Password  : <c:out value="${requestScope.usr.pwd}" /><br/>
<hr/>
Now test Name :  <%=((User)request.getAttribute("user")).getUname() %>
Now test Pwd :  <%=((User)request.getAttribute("user")).getPwd() %>
<a href="index.jsp">Go back</a> To Login Again.