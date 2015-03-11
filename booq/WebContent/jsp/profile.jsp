<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="booq.beans.Customer" %>
<%@ page import="booq.model.SignupQueries" %>
<%@page import="booq.model.DBConnectionPool"%>
<jsp:useBean id="connPool" scope="application" class="booq.model.DBConnectionPool"/>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Landing Page - Start Bootstrap Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/landing-page.css" rel="stylesheet">

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

<%
	HttpSession theSession = request.getSession();
	String email = (String) session.getAttribute("userEmail");
	String custIDstring = (String) session.getAttribute("customerIDstring"); 
	int custID = -2; 
	if(custIDstring != null) { 
		custID = Integer.parseInt(custIDstring); 
		System.out.println("cust id in jsp" + custID); 
	}
	//Display if already logged in 
	Customer c;
	if (custID > 0) //login value is not null 
	{
		connPool = new DBConnectionPool();
		c = connPool.getCustomer(custID);
%>
	<h2><%=c.getName()%></h2>
	
<%
}
%>
	

<body>

</body>
</html>