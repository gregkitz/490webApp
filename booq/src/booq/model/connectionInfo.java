package booq.model;

import java.io.IOException;
import java.io.PrintWriter;
//import java.sql.Connection;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import booq.model.DBConnectionPool;

import com.mysql.jdbc.Connection;

@WebServlet("/connectionInfo")
public class connectionInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//String driver = "org.gjt.mm.mysql.Driver";
	String url = "jdbc:mysql://127.0.0.1:3306/CSS490Server";
	String username = "root";
	String passwd = "1234";

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			DBConnectionPool connPool = new DBConnectionPool(url, username, passwd);
			Connection conn = (Connection) connPool.getConnection();
			
			PrintWriter out = response.getWriter();
			
			if (conn != null) {
				out.println("Success");
			} else {
				out.println("Failed");
			}
		} catch (Exception e) { e.printStackTrace(); }
	}

}



