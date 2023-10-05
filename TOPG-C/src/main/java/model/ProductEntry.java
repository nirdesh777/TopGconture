package model;

import java.io.*;		
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.*;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class product
 */
@WebServlet("/productEntry")
@MultipartConfig(	
			fileSizeThreshold = 1024 * 1024 * 1,
			maxFileSize = 1024 * 1024 * 10,
			maxRequestSize = 1024 * 1024 * 50
		)
public class ProductEntry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductEntry() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

        
        int prod_id = Integer.parseInt(request.getParameter("prod_id"));
        String prod_name = request.getParameter("prod_name");
        String category = request.getParameter("category");
        String brand = request.getParameter("brand");
        int price = Integer.parseInt(request.getParameter("price"));
        int stock_left = Integer.parseInt(request.getParameter("stock_left"));
		
        
        
		
        
        Part filePartProd = request.getPart("prod");       
        
        String uniqueFileProd = filePartProd + ".jpg";
        String uploadDirectoryProd = request.getServletContext().getRealPath("/") + "images/users/";
        Path imagePathProd = Paths.get(uploadDirectoryProd + uniqueFileProd);
        
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/top-couture";
            String dbuser = "root";	
            String dbpass = "";
            Connection con = DriverManager.getConnection(url, dbuser, dbpass);
            String query = "Insert into product(prod_id, prod_name, category, brand, price, stock_left, prodLink) value(?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement st = con.prepareStatement(query);
            st.setInt(1, prod_id);
            st.setString(2, prod_name);
            st.setString(3, category);
            st.setString(4, brand);
            st.setInt(5, price);
            st.setInt(6, stock_left);
            st.setString(7, uniqueFileProd);
            
            
    	    
            int result = st.executeUpdate();
            if(result > 0) {
            	Files.createDirectories(Paths.get(uploadDirectoryProd));
            	boolean createdProd = new File(uploadDirectoryProd + uniqueFileProd).createNewFile();
            	if (createdProd) {
            		Files.copy(filePartProd.getInputStream(), imagePathProd, StandardCopyOption.REPLACE_EXISTING);
            		 	
            	}
                response.sendRedirect("/TOPG-C/pages/adminPanel.jsp");
            }else {
                System.out.println("Data is not inserted");
            }



        }catch(SQLException ex){
            System.out.println(ex.getMessage());
            ex.printStackTrace();
        }catch(ClassNotFoundException e) {
            e.printStackTrace();
        }
	}

}