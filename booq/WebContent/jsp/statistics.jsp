<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="booq.beans.Customer" %>
<%@ page import="booq.beans.Order" %>
<%@page import="booq.model.DBConnectionPool"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<jsp:useBean id="connPool" scope="application" class="booq.model.DBConnectionPool"/>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Profile</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/landing-page.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" />   

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<jsp:include page="navBar.jsp" flush="true"/>
<body>

<%
ArrayList<Order> orders;
connPool = new DBConnectionPool();
orders = connPool.getOrders();
Iterator<Order> iterator = orders.iterator();
Order order;

%>

<br><br><br>
	
	<div class="container">
        <div class="row pad-top ">
            <div class="col-md-12">
                <h2>Order Statistics</h2>
            </div>
        </div>
        <div class="row  pad-top">
           	<div class="panel panel-default">
         		<div class="panel-heading">
           			<strong>By order</strong>  
         		</div>
                <div class="panel-body">
                    	<% while (iterator.hasNext()) {
                    		order = iterator.next();	
                    	%>
                    	<div class="col-md-6 col-sm-8 col-xs-10">
<table class="table">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
                       		
                       		<div>
                       			<strong>ID =</strong><%=order.getId()%>
                       		</div>
                       		<br>
                       		<div>
                       			<strong>Email: </strong><br>
                       		</div>
                       		<br>
                       		<div>
                       			<strong>Address: </strong> <br>
                       				
                       		</div>
                		</div>
		                <div>
                       		<strong>Credit Card Information: </strong><br>
                       		Name:<br>
                       		Number: <br>
                       		Expiration Date: 
                       	</div>
                       	<%
                    	}
                       	%>
				</div>
			</div>
		</div>
	</div>
	
	    <!-- jQuery -->
     <script src="js/jquery.js"></script> -->

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script> -->

</body>
</html>