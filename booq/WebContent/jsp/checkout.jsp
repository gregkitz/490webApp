<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="booq.beans.CartItem"%>
     <%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="navBar.jsp" flush="true"/>
<br><br><br><br>
<h2>Thank you for your purchase for: <%=session.getAttribute("cartTotal") %></h2>
<%session.removeAttribute("cart") ;%><%
ArrayList<CartItem> shoppingCart  = new ArrayList<CartItem>(); 
if (session.getAttribute("cart") == null){
	session.setAttribute("cart", shoppingCart); 
}

%>
</body>
</html>