<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
</head>
<body>
<%
	Enumeration en = session.getAttributeNames();

	while(en.hasMoreElements()){
		String name = (String) en.nextElement();
		String value = (String) session.getAttribute(name);
		
%>
		session name: <%=name %><br/>
		session value: <%=value %><br/>
<%
	}

%>

</body>
</html>