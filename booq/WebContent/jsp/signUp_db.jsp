<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII" import="java.io.*,java.util.*, javax.servlet.*"%>
<jsp:useBean id="user" class="userMgmt.user.User"/>
<jsp:useBean id="userDB" class="userMgmt.business.UserDB"/>
<jsp:setProperty name="user" property="*"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
<style type="text/css">
	img{	
		width: 50%;
		height: 50%;
	}
</style>
</head>
<body>
<jsp:getProperty name="user" property="username"/>
<%
 int no = userDB.registerUser(user);

%>
</body>
</html>