package controller.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import controller.dbconnection.dbConnection;
import model.User;
import resources.MyConstants;


@WebServlet(asyncSupported = true, urlPatterns = { "/Register" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
	maxFileSize = 1024 * 1024 * 10, // 10MB
	maxRequestSize = 1024 * 1024 * 50)
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fullName = request.getParameter("fullName");
		String role = request.getParameter("role");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String  username = request.getParameter("username");
		String  password = request.getParameter("password");
		Part imagePart = request.getPart("image");	
		User userModel = new User(fullName, role, address, phone, email, username, password, imagePart);
		
	    String savePath = MyConstants.IMAGE_DIR_SAVE_PATH;
	    String fileName = userModel.getImageUrlFromPart();
	    if(!fileName.isEmpty() && fileName != null)
    		imagePart.write(savePath + fileName);
		
		dbConnection con = new dbConnection();
	
		int result = con.registerUser(MyConstants.USER_REGISTER, userModel);
		
		if(result == 1) {
			request.setAttribute("registerMessage", "Successfully Registered");
			//request.getRequestDispatcher("/pages/Login.jsp").forward(request, response);
			response.sendRedirect("/TOPG-C/pages/Login.jsp");
		}else if(result == -1) {
			request.setAttribute("registerMessage", "User Already Exists");
			request.getRequestDispatcher("/pages/Register.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/pages/Register.jsp").forward(request, response);
		}
		
	}

}
