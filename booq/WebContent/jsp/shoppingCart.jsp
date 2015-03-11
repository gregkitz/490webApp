<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="booq.beans.Book"%>  
 <%@page import="booq.model.DBConnectionPool"%>  
 <%@page import="booq.beans.CartItem"%> 
 <%@page import="java.util.ArrayList"%>
 <%@page import="java.util.Iterator"%>
<!--<jsp:useBean id="connPool" scope="application"
  class="booq.model.DBConnectionPool"/>-->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/star-rating.min.css" media="all" rel="stylesheet" type="text/css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="js/star-rating.min.js" type="text/javascript"></script>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="description" content="">
   <meta name="author" content="">
   <link rel="icon" href="pics/bookIcon.ico">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shopping Cart</title>

<!-- Bootstrap core CSS -->
   <link href="css/bootstrap.min.css" rel="stylesheet">

   <!-- Custom styles for this template -->
   <link href="jumbotron.css" rel="stylesheet">
   <link href="css/small-business.css" rel="stylesheet">
   <link href="css/custom.css" rel="stylesheet">

   <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
   <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
   <script src="js/ie-emulation-modes-warning.js"></script>

   <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
   <!--[if lt IE 9]>
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   <![endif]-->
   
</head>
<body>
<jsp:include page="navBar.jsp" flush="true"/>
<%
//grab the passed parameters and save them to local variables

connPool = new DBConnectionPool();



String cartAction = request.getParameter("cartAction");
int bookID = -1;  
if (request.getParameter("bookID") != null){
	bookID = Integer.parseInt(request.getParameter("bookID"));
}
Book bookToInsert = null;
if (bookID > 0 ){
 bookToInsert = connPool.getBookDetails(bookID);
}
int quantity = -1; 
if (request.getParameter("quantity") != null){
Integer.parseInt(request.getParameter("quantity")); 
}
if (cartAction != null){
switch (cartAction) {
	case "addItem" : 
		CartItem purchaseInsert = new CartItem(quantity, bookToInsert); 
		System.out.println("From cart:" + quantity + bookToInsert.getId());
		ArrayList<CartItem> theShoppingCart = (ArrayList<CartItem>) session.getAttribute("cart"); 
		theShoppingCart.add(purchaseInsert); 
		session.setAttribute("cart", theShoppingCart); 
		break; 
	default: 
		break; 
}
}
System.out.println("cart should print here"); 
   if(session.getAttribute("cart") != null){ 
	   ArrayList<CartItem> theShoppingCart = (ArrayList<CartItem>) session.getAttribute("cart"); 
	   Iterator<CartItem> iterator = theShoppingCart.iterator(); 
	   CartItem item = null; 
	   if(iterator.hasNext()){
			
		} 
	   else {
		  %> Nothing in your cart! <%
	   }
	   while(iterator.hasNext()){
		   item = (CartItem) iterator.next();
		   %><%=item.getBook().getTitle()%><%
	   }
	   
	   
   }

%>



</body>
</html>