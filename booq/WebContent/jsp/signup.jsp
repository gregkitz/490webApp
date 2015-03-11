<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    
    <!-- FONTAWESOME STYLE CSS -->
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    
    <!-- CUSTOM STYLE CSS -->
    <link href="css/style.css" rel="stylesheet" />   
     
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    
<title>Signup</title>
</head>
<body>
<jsp:include page="navBar.jsp" flush="true"/>

 

	<div class="container">
        <div class="row pad-top ">
            <div class="col-md-12">
                <h2>Sign Up Page</h2>
            </div>
        </div>
        <div class="row  pad-top">
           	<div class="panel panel-default">
         		<div class="panel-heading">
           			<strong>   Sign Up! </strong>  
         		</div>
                <div class="panel-body">
                	<form method="post" action="/booq/MainServlet?action=completeSignup">
                    	<div class="col-md-6 col-sm-8 col-xs-10">
                       		<div>Your Name</div>
                       		<div class="form-group input-group">
                           		<span class="input-group-addon"><i class="fa fa-circle-o-notch"  ></i></span>
                           		<input type="text" class="form-control" name="Name" id="Name" />
                       		</div>
		                    <div>Email</div>
		                    <div class="form-group input-group">
		                        <span class="input-group-addon">@</span>
		                        <input type="text" class="form-control" name="Email" id="Email" />
		                    </div>
	                        <div>Password</div>
	                        <div class="form-group input-group">
	                            <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
	                            <input type="password" class="form-control" name="Password" id="Password" />
	                        </div>
							<div>Street Address</div>
			                <div class="form-group input-group">
			                    <span class="input-group-addon"><i class="fa fa-home"  ></i></span>
			                    <input type="text" class="form-control" name="Street Address" id="Street Address" />
			                </div>
			                <div>Appt.</div>
			                <div class="form-group input-group">
			                    <span class="input-group-addon"><i class="fa fa-home"  ></i></span>
			                    <input type="text" class="form-control" name="Appt." id="Appt." />
			                </div>
			                <div>City</div>
			                <div class="form-group input-group">
			                    <span class="input-group-addon"><i class="fa fa-home"  ></i></span>
			                    <input type="text" class="form-control" name="City" id="City" />
			                </div>
                		</div>
                
		                <div>State</div>
		                <div class="form-group input-group">
		                    <span class="input-group-addon"><i class="fa fa-home"  ></i></span>
		                    <input type="text" class="form-control" name="State" id="State"/>
		                </div>
		                <div>Country</div>
		                <div class="form-group input-group">
		                    <span class="input-group-addon"><i class="fa fa-home"  ></i></span>
		                    <input type="text" class="form-control" name="Country" id="Country" />
		                </div>
		                <div>Zip</div>
		                <div class="form-group input-group">
		                    <span class="input-group-addon"><i class="fa fa-home"  ></i></span>
		                    <input type="text" class="form-control" name="Zip" id="Zip" />
		                </div>
		                <div>Credit Card Name</div>
		                <div class="form-group input-group">
		                    <span class="input-group-addon"><i class="fa fa-credit-card"  ></i></span>
		                    <input type="text" class="form-control" name="ccName" id="ccName" />
		                </div>
		                <div>Credit Card Number</div>
		                <div class="form-group input-group">
		                    <span class="input-group-addon"><i class="fa fa-credit-card"  ></i></span>
		                    <input type="text" class="form-control" name="ccNumber" id="ccNumber" />
		                </div>
		                <div>Credit Card Exp. Date</div>
		                <div class="form-group input-group">
		                    <span class="input-group-addon"><i class="fa fa-credit-card"  ></i></span>
		                    <input type="text" class="form-control" name="ccExp. Date" id="ccExp. Date" />
		                </div>
                		<div id="warning" class="feedback"></div>
                        <input type="submit" class="btn btn-success" name="action" value="complete signup" id="submit">					
					</form>
				</div>
			</div>
		</div>
	</div>

	
	<!-- Validation Check -->
	<script>
   		var elMsg = document.getElementById('warning');
		 
		function loginCheck(){
	        if(document.getElementById('Name').value==""){
	                elMsg.textContent= "Please enter your name";
	                document.getElementById('Name').focus();
	                return false;
	        }
	        if(document.getElementById('Email').value==""){
	        	elMsg.textContent = "Please enter your email";
                document.getElementById('Email').focus();
                return false;
	        }
	        if(document.getElementById('Password').value==""){
	              	elMsg.textContent = "Please enter your password";
	                document.getElementById('Password').focus();
	                return false;
	        }
	        if(document.getElementById('Street Address').value==""){
	        	elMsg.textContent = "Please enter your street address";
                document.getElementById('Street Address').focus();
                return false;
	        }
	        if(document.getElementById('City').value==""){
	        	elMsg.textContent = "Please enter your city";
                document.getElementById('City').focus();
                return false;
	        }
	        if(document.getElementById('State').value==""){
	        	elMsg.textContent = "Please enter your state";
                document.getElementById('State').focus();
                return false;
	        }
	        if(document.getElementById('Country').value==""){
	        	elMsg.textContent = "Please enter your country";
                document.getElementById('Country').focus();
                return false;
	        }
	        if(document.getElementById('Zip').value==""){
	        	elMsg.textContent = "Please enter your zip";
                document.getElementById('Zip').focus();
                return false;
	        }
	        if(document.getElementById('ccName').value==""){
	        	elMsg.textContent = "Please enter your credit card name";
                document.getElementById('ccName').focus();
                return false;
	        }
	        if(document.getElementById('ccNumber').value==""){
	        	elMsg.textContent = "Please enter your credit card number";
                document.getElementById('ccNumber').focus();
                return false;
	        }
	        if(document.getElementById('ccExp. Date').value==""){
	        	elMsg.textContent = "Please enter your credit card expiration date";
                document.getElementById('ccExp. Date').focus();
                return false;
	        }
		}
		
		var elSubmit = document.getElementById('submit');
		elSubmit.onclick =loginCheck;
	</script>

    <!-- CORE JQUERY  -->
    <script src="../js/jquery.js"></script>
    
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="../js/bootstrap.js"></script>
</body>
</html>


