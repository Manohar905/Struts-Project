<%@page session="true" %>
<%
	if (session.getAttribute("loggedUser") == null) {
		response.sendRedirect("./resources/errorPage.jsp");
	} else {
%>
<jsp:include page="header.jsp"/>
<h1 align="center">Home Page</h1>
<%
	}
%>