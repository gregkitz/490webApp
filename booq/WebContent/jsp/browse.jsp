<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="booq.beans.Book"%>  
<%@page import="booq.model.DBConnectionPool"%>     
 <!--<jsp:useBean id="connPool" scope="application"
  class="booq.model.DBConnectionPool"/>-->   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Browse books</title>
</head>
<body>
<% 
connPool = new DBConnectionPool();

//ArrayList<Book> books = connPool.searchBooks(search); 
//Iterator<Book> iterator = books.iterator(); 

String[] genres = connPool.getGenres(); 
connPool.test(); 
//String theGenre = (String) iterator.next(); 
//Book book;
%>
 
<h2> 
<%
int i = 0;

if (genres[0] == null) { %> null <%} 

while (genres[i] != null) {
  %>
  <%=genres[i]%>
<% 
i++;
}%>



</body>
</html>