//TO DO: 
// SESSIONS: LOGIN AND CART. WILL NEED ORDER OBJECT TO STORE IN THE SESSION ALSO SOME FORM OF USER AUTHENTICATION AND SESSION ID
// TO KEEP A LOGGED IN "STATE" 
// THIS CAN DISPATCH DIFFERENTLY IF THERE IS A

package booq;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import booq.model.DBConnectionPool;

import com.mysql.jdbc.Connection;

@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MainServlet() {
        super();
    }

    public void init(ServletConfig config) throws ServletException {
        System.out.println("*** initializing controller servlet.");
        super.init(config);
        
        String url = config.getInitParameter("dbUrl");
        String username = config.getInitParameter("username");
        String passwd = config.getInitParameter("password");
        
        try {
        	DBConnectionPool connPool = new DBConnectionPool(url, username, passwd);
        } catch (Exception e){}
		//Connection conn = (Connection) connPool.getConnection();
    }
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String url = "/jsp/index.jsp"; //default homepage
	    
	    String action = request.getParameter("action");
	    if (action != null) {
	    	switch (action) {
	    	case "signup":
	    		url = "/jsp/signup.jsp";
	    		break;
	    	case "login":
	    		url = "/jsp/login.jsp";
	    		break;
	    	case "search":
	    		url = "/jsp/searchResults.jsp";
	    		break;
	    	}
	    }
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
	    rd.forward(request, response);
	}

}
