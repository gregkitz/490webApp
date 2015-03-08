//TO DO: 
// SESSIONS: LOGIN AND CART. WILL NEED ORDER OBJECT TO STORE IN THE SESSION ALSO SOME FORM OF USER AUTHENTICATION AND SESSION ID
// TO KEEP A LOGGED IN "STATE" 
// THIS CAN DISPATCH DIFFERENTLY IF THERE IS A

package booq;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

//import booq.model.DBConnectionPool;

@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MainServlet() {
        super();
    }

    public void init(ServletConfig config) throws ServletException {
        System.out.println("*** initializing controller servlet.");
        super.init(config);
        
        /*String url = config.getInitParameter("dbUrl");
        String username = config.getInitParameter("username");
        String passwd = config.getInitParameter("password");
        
        try {
        	DBConnectionPool connPool = new DBConnectionPool(url, username, passwd);
        	System.out.println("connection created"); 
        } catch (Exception e){ e.printStackTrace(); }*/
    }
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String url = "/jsp/index.jsp"; //default homepage
	   HttpSession session = request.getSession(); 
	   String productCode = "bookTest"; 
	   session.setAttribute("productCode", productCode); 
	    
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
