<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%
String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
<link rel="stylesheet" href="css/c06.css" />
</head>
<body>
<form action="SessionMemberLoginOK.jsp" method="post">
	<fieldset>
		<legend class="legend_text"> Your Login Info</legend>
		<div><span class="star">*</span><label> Username : </label>
			<%if(username == null) username= ""; %>
			<input type="text" name="username" id="username" required="required" value="<%=username%>"/></div>
		<div><span class="star">*</span><label>  Password: </label>
			<input type="password" name="passwd" id="passwd"  required="required"/></div>
		<div id="warning" class="feedback"></div>
		<input type="submit" value="Sign Up" id="submit"/>
	</fieldset>
</form>		
<script>
   		var elMsg = document.getElementById('warning');
		 
		function loginCheck(){
	        if(document.getElementById('username').value==""){
	                elMsg.textContent= "Pleaes enter your username";
	                document.getElementById('username').focus();
	                return false;
	        }
	        if(document.getElementById('passwd').value==""){
	              	elMsg.textContent = "Please enter your password";
	                document.getElementById('passwd').focus();
	                return false;
	        }
		}
		
		var elSubmit = document.getElementById('submit');
		elSubmit.onclick =loginCheck;
</script>
</body>
</html>