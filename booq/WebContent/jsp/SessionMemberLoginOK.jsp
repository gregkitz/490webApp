<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<jsp:useBean id="userDB" class="userMgmt.business.UserDB" />
<jsp:useBean id="user" class="userMgmt.user.User" />
<jsp:setProperty name="user" property="*" />
<%

if(userDB.passwdCheck(user.getUsername(), user.getPasswd())){
	session.setAttribute("username", user.getUsername());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
</head>
<body>
	<script>
		alert("Welcome <%=user.getUsername()%>");
		window.location.href="SessionLoginConform.jsp";
	</script>
<%}else{ %>
	<script>
		alert("Login Failed");
		window.location.href="SessionMemberLogin.jsp";
	</script>
<%} %>
</body>
</html>