<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="booq.beans.Book"%>  
jsp:useBean id="dataManager" scope="application"
  class="booq.model.DBConnectionPool"/>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/booq/css/bootstrap.css" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Results</title>
</head>
<body>

<% 
  String search = request.getParameter("search"); 
  if (search != NULL) {

%>

ArrayList 
</body>
</html>