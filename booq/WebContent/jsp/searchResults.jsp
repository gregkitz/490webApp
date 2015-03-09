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
<link rel="stylesheet" href="/booq/css/bootstrap.css" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Results</title>
</head>
<body>

<% 
  String search = request.getParameter("search"); 
   //String search = "Greg"; 
  if (search != null) {

%>
<% 
connPool = new DBConnectionPool();

ArrayList<Book> books = connPool.searchBooks(search); 
Iterator<Book> iterator = books.iterator(); 

Book book = (Book) iterator.next(); 
//Book book;
%>

<h2> 
<%while (iterator.hasNext()) {
  book = iterator.next(); %>
  <%=book.getTitle()%>
<br>
<%=book.getAuthor() %>
<br>
<%=book.getPrice() %>
<br>
<%=book.getDescription()%> 
<br> <br>

<% }

} %>

</h2>
</body>
</html>
