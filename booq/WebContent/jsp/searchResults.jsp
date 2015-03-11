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
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="pics/bookIcon.ico">
     <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="jumbotron.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<link rel="stylesheet" href="/booq/css/bootstrap.css" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Results</title>
</head>
<body>
<jsp:include page="navBar.jsp" flush="true"/>
            <!-- Main jumbotron for a primary marketing message or call to action -->
   
    
    
<% 
  String search = request.getParameter("search"); 
   //String search = "Greg"; 
  if (search != null) {

%>
<% 
connPool = new DBConnectionPool();

ArrayList<Book> books = connPool.searchBooks(search); 
Iterator<Book> iterator = books.iterator(); 

Book book; 

if(iterator.hasNext()){
	book = (Book) iterator.next(); 
}
//Book book;
%>
<br><br><br>


<div class="container">
	<div class="row">
		
		<%while (iterator.hasNext()) {
		  book = iterator.next(); %>
		  
		<h3> 
		  <a href="/booq/MainServlet?action=itemDetails&bookResult=<%=book.getId() %>" >
		  	<%=book.getTitle()%>
		  </a>
		</h3>
		<p>
		<%=book.getAuthor() %>
		<br>
		<%=book.getPrice() %>
		<br>
		<%=book.getDescription()%> 
		<br><hr>
		 
		<% }
		
		} %>
		</p>
	</div>
</div>

 <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="s/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
