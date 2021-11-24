<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vehicle Registration System</title>
<link href="resources/css/admin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/vrs.js"></script>
<style>
	body {background-color:#999999; text-align: left !important;}
	span {font-size:11px !important;font-family:verdana !important;}
</style>
</head>
<body>

<table width="900" border="0" align="center" cellpadding="0" cellspacing="1" class="graybox">
	<tr style="background-color:#FFFFFF">
    	<td colspan="2">
    		<jsp:include page="${template.header}" />
    	</td>
  	</tr>
  	<tr>
    	<td width="150" valign="top" class="navArea">
      		<jsp:include page="${template.menu}" />
    	</td>
    	<td width="750" valign="top" class="contentArea">
		
			<table width="100%" border="0" cellspacing="0" cellpadding="20">
	        <tr>
	        	<td>
					<jsp:include page="${template.body}" />
	        	</td>
	        </tr>
	      	</table>
      	</td>
	</tr>
   	<tr>
	<td class="contentArea" style="border-top:#999999 thin dashed;padding:20px;" colspan="2">
		<jsp:include page="${template.footer}" />
	</td>
  </tr>
</table>

</body>
</html>