<%@page session="true"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	session = request.getSession(false);
	if (session.getAttribute("loggerAdmin") == null) {
		response.sendRedirect("index.jsp");
	} else {
%>
<html>
<head>
<title>Display Users</title>
<link href="<s:url value="/css/style.css"/>" rel="stylesheet"
	type="text/css" />
</head>
<body bgcolor="">
<jsp:include page="header.jsp"></jsp:include>
<s:form action="admin/viewUser">
	<display:table id="user" name="user" pagesize="5" export="false"
		requestURI="viewUser">
		<display:column property="userid" title="User ID" paramId="userid"
			sortable="true" />
		<display:column property="firstname" title="First Name"
			sortable="true" />
		<display:column property="lastname" title="Last Name" sortable="true" />
		<display:column property="email" title="E-Mail" sortable="true" />
		<display:column property="country" title="Country" sortable="true" />
		<display:column property="zip" title="Zip Code" sortable="true" />
		<display:column property="state" title="State" sortable="true" />
		<display:column property="city" title="City" sortable="true" />
		<display:column property="address" title="Address" sortable="true" />
		<display:column property="phone" title="Telephone No" sortable="true" />
		<display:column property="fax" title="Fax No" sortable="true" />
		<display:column property="firstname" title="Delete" paramId="id"
			paramProperty="id" url="/admin/deleteUser.action" />
		<display:setProperty name="paging.banner.placement" value="bottom" />
	</display:table>
</s:form>
</body>
</html>
<%
	}
%>