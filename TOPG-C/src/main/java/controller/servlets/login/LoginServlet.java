package controller.servlets.login;



import java.io.IOException;	
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.dbconnection.dbConnection;
import resources.MyConstants;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("username");
		String pwd = request.getParameter("password");
		
		dbConnection connection = new dbConnection();
		
		Boolean isUserRegistered = connection.isUserRegistered(MyConstants.CHECK_LOGIN_INFO, user, pwd);
		if(isUserRegistered != null && isUserRegistered){
			HttpSession session = request.getSession();
			session.setAttribute("username", user);
			session.setAttribute("LoggedIn", true );
			//setting session to expiry in 30 mins
			session.setMaxInactiveInterval(30*60);

			Cookie userName = new Cookie("user", user);
			
			userName.setMaxAge(30*60);
			response.addCookie(userName);
			System.out.println(request.getContextPath());
			String query="Select role from user  where username = '"+user+"';";
			int isAdmin=connection.isAdmin(user);
			System.out.println(isAdmin);
			if(query.equals("Admin")) {
				response.sendRedirect(request.getContextPath()+"/pages/adminPanel.jsp");
			}
		
		    response.sendRedirect(request.getContextPath()+"/pages/Home.jsp");
		}else{
			// set error message
		    request.setAttribute("errorMessage", "Invalid username or password");
		    // forward request to login page
		    response.sendRedirect(request.getContextPath()+"/pages/Login.jsp?error=1");
		    

		}
	}

}