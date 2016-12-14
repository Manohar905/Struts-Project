<%@page session="true" %>
<%
	session = request.getSession(false);
	if (session.getAttribute("loggerAdmin") == null) {
		response.sendRedirect("index.jsp");
	} 
	else {
%>
<jsp:include page="header.jsp"></jsp:include>
<h1>Admin Home Page</h1>
<%
	}
%>