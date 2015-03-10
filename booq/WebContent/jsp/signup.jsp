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
    
<title>Sign up for an account!</title>
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
          <a class="navbar-brand" href="#">booq</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right" action="signup">
            <input type="submit" class="btn btn-success" value="Sign up">
          </form>
          <form class="navbar-form navbar-right" action="login" method="post">
            <div class="form-group">
              <input type="text" placeholder="Email" class="form-control" name="email" required>
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" class="form-control" name="password" required>
            </div>
            <input type="submit" class="btn btn-success" value="Sign In">
          </form>
          
        </div><!--/.navbar-collapse -->
      </div>
    </nav>

	<div class="container">
        <div class="row pad-top ">
            <div class="col-md-12">
                <h2>Sign Up Page</h2>
            </div>
        </div>
        <div class="row  pad-top">
          	<div class="col-md-8 col-sm-6 col-xs-10">
              	<div class="panel panel-default">
            		<div class="panel-heading">
              			<strong>   Sign Up! </strong>  
            		</div>
                    <div class="panel-body">
                      	<form action = "completeSignup" method="post">
	                        <div>Your Name</div>
	                        <div class="form-group input-group">
	                            <span class="input-group-addon"><i class="fa fa-circle-o-notch"  ></i></span>
	                            <input type="text" class="form-control" id="Name" />
	                        </div>
                            <div>Email</div>
                            <div class="form-group input-group">
                                <span class="input-group-addon">@</span>
                                <input type="text" class="form-control" id="Email" />
                            </div>
                            <div>Password</div>
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                                <input type="password" class="form-control" id="Password" />
                            </div>
                            <div>Street Address</div>
			                <div class="form-group input-group">
			                    <span class="input-group-addon"><i class="fa fa-home"  ></i></span>
			                    <input type="text" class="form-control" id="Street Address" />
			                </div>
			                <div>Appt.</div>
			                <div class="form-group input-group">
			                    <span class="input-group-addon"><i class="fa fa-home"  ></i></span>
			                    <input type="text" class="form-control" id="Appt." />
			                </div>
			                <div>City</div>
			                <div class="form-group input-group">
			                    <span class="input-group-addon"><i class="fa fa-home"  ></i></span>
			                    <input type="text" class="form-control" id="City" />
			                </div>
			                <div>State</div>
			                <div class="form-group input-group">
			                    <span class="input-group-addon"><i class="fa fa-home"  ></i></span>
			                    <input type="text" class="form-control" id="State"/>
			                </div>
			                <div>Country</div>
			                <div class="form-group input-group">
			                    <span class="input-group-addon"><i class="fa fa-home"  ></i></span>
			                    <input type="text" class="form-control" id="Country" />
			                </div>
			                <div>Zip</div>
			                <div class="form-group input-group">
			                    <span class="input-group-addon"><i class="fa fa-home"  ></i></span>
			                    <input type="text" class="form-control" id="Zip" />
			                </div>
			                <div>Credit Card Name</div>
			                <div class="form-group input-group">
			                    <span class="input-group-addon"><i class="fa fa-credit-card"  ></i></span>
			                    <input type="text" class="form-control" id="ccName" />
			                </div>
			                <div>Credit Card Number</div>
			                <div class="form-group input-group">
			                    <span class="input-group-addon"><i class="fa fa-credit-card"  ></i></span>
			                    <input type="text" class="form-control" id="ccNumber" />
			                </div>
			                <div>Credit Card Exp. Date</div>
			                <div class="form-group input-group">
			                    <span class="input-group-addon"><i class="fa fa-credit-card"  ></i></span>
			                    <input type="text" class="form-control" id="ccExp. Date" />
			                </div>
			                <div id="warning" class="feedback"></div>
                            <input type="submit" class="btn btn-success" value="Sign Up!" id="submit">
							<!--id, email, cName, passwd, addrId, ccName, ccNumber, ccExpire
								id, streetAddr, city, state, country, zip, apptNo -->
						</form>
					</div>
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


