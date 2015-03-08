package booq.model;
package userMgmt.business;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userMgmt.user.User;

public class UserDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String username= request.getParameter("username");
		
		UserDB dbConn = new UserDB();
		
		int i = dbConn.deleteUser(username);
		if(i > 0){
				response.sendRedirect("../index.jsp");
		}else{
			response.sendRedirect("signUpError.html");
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doPost(request, response);
	}

}
