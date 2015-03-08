package booq.model;

package userMgmt.business;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userMgmt.user.User;

public class userUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		User user = new User();
		user.setUsername(request.getParameter("username"));
		user.setUsername(request.getParameter("name"));
		user.setUsername(request.getParameter("email"));
		
		UserDB dbConn = new UserDB();
		int i = dbConn.updateUser(user);
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doPost(request, response);
	}

}