<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%
	String username = (String)session.getAttribute("username");
	if(username.equals("")){
%>
			<script>
				alert("Login Failed");
				window.location.href="SessionMemberLogin.jsp";
			</script>
<%	}%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
<link rel="stylesheet" href="css/c06.css" />
</head>
<body>
<table width="75%" border="1">
	<tr>
		<td><h2>Welcome <%=username %>!!</h2>
		<a href="SessionLogOut.jsp"><h3>Log Out</h3></a></td>
	</tr>
</table>
</body>
</html>