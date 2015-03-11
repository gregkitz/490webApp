<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Insert title here</title>
</head>
<body>
 
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/booq/MainServlet">booq</a>
        </div>
        
          <%
          HttpSession theSession = request.getSession();
          String email = (String) session.getAttribute("userEmail");
         String custIDstring = (String) session.getAttribute("customerIDstring"); 
         int custID = -2; 
         if(custIDstring != null) {
        	 
        	 custID = Integer.parseInt(custIDstring); 
        	 System.out.println("cust id in jsp" + custID); 
         }
         
        //  System.out.println("this is" + meow); 
          //Display username if already logged in 
          if (custID > 0) //login value is not null 
          {
        	  %>
        	  
        	  
        	  <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/booq/MainServlet">booq</a>
        </div>
       <div id="navbar" class="navbar-collapse collapse">  
        <form class="navbar-form navbar-left" method="post" action="/booq/MainServlet?action=search">
        <div class="form-group">
          <a href="/booq/MainServlet?action=cart"><img src="img/logo-big-shopping.png" width="50" height="50"> </a>
          <!-- Single button -->
<div class="btn-group">
  <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
    Action <span class="caret"></span>
  </button>
  
  <ul class="dropdown-menu" role="menu">
    <li><a href="/booq/MainServlet?action=browse">Browse</a></li>
    <li><a href="#">Statistics</a></li>
    <li><a href="#">Weekly deltas</a></li>
    <li class="divider"></li>
    <li><a href="#">Separated link</a></li>
  </ul>
</div>
          <input type="text" class="form-control" placeholder="Find your booq here" name="search">
        </div>
         
        <button type="submit" class="btn btn-default" name="action" value="search">Submit</button>
        </form>
        
        	
        	    
        	    <form class="navbar-form navbar-right"  method="get">
        	    <font color="white"> Signed in as:  <%=email%> </font>
            <input type="submit" class="btn btn-success" name="action" value="logout">
          </form>
        	    
        	    
      
        </div>
          
         
          </nav> 
        	  
       <% } 
          else { 
    	   
    	   if (custID == -1){
         	  %> Invalid credentials. <% }
 %>
        	 <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right" method="post" action="/booq/MainServlet?action=signup">
            <input type="submit" class="btn btn-success" name="action" value="signup">
          </form>
        	  
          <form class="navbar-form navbar-right"  method="post"  action="/booq/MainServlet?action=login">
            <div class="form-group">
              <input type="text" placeholder="Email" class="form-control" name="email" required>
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" class="form-control" name="password" required>
            </div>
            <input type="submit" class="btn btn-success" name="action" value="login">
          </form>
          
          <% } %>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>
</body>
</html>