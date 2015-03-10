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
    <link href="../css/bootstrap.css" rel="stylesheet" />
    
    <!-- FONTAWESOME STYLE CSS -->
    <link href="../css/font-awesome.min.css" rel="stylesheet" />
    
    <!-- CUSTOM STYLE CSS -->
    <link href="../css/style.css" rel="stylesheet" />   
     
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
                      <form action = "completeSignup">
                        <div>Your Name</div>
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-circle-o-notch"  ></i></span>
                            <input type="text" class="form-control" value="Name" />
                        </div>
              <div>Username</div>
              <div class="form-group input-group">
                  <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                  <input type="text" class="form-control" value="Username" />
              </div>
                            <div>Email</div>
                            <div class="form-group input-group">
                                <span class="input-group-addon">@</span>
                                <input type="text" class="form-control" value="Email" />
                            </div>
                            <div>Password</div>
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                                <input type="password" class="form-control" />
                            </div>
                            <a href="#" class="btn btn-success ">Sign Up!</a>
                      </form>
                  </div>
              </div>
          </div>
      </div>
    </div>

    <!-- CORE JQUERY  -->
    <script src="../js/jquery.js"></script>
    
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="../js/bootstrap.js"></script>
</body>
</html>


<!--private int id;
  private String name;
  private String email;
  private String stAddr;
  private String city;
  private String state;
  private String country;
  private String zip;
  private String apptNo;-->