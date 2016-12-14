<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page session="true"%>
<html>
<head>
<title>Admin Login</title>
<s:head />
<link href="<s:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />
</head>
<body>
<s:actionerror />
<h1 align="center">Please login</h1>
<center><s:form action="adminlogin">
	<s:textfield key="userid" />
	<s:password key="password" />
	<s:submit value="Login" />
</s:form></center>
</body>
</html>