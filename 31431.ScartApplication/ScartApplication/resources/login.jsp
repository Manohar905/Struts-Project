<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<jsp:include page="../index.jsp"></jsp:include>
<title>User Login Page</title>
<link href="<s:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />
<s:head />
</head>
<h3 align="center">Please Login</h3><br clear="all"/>
<center><s:actionerror/>
<s:form action="loginsuccess">
	<s:textfield name="userId" label="Login ID"></s:textfield>
	<s:password name="password" label="Password"></s:password>
	<s:submit value="Login"></s:submit>
</s:form></center>
</html>