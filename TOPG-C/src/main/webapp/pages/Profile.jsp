<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@page session = "false" %>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%
    HttpSession session = request.getSession();
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("Login.jsp");
    } else {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/top-couture";
            Connection con = DriverManager.getConnection(url, "root", "");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM user WHERE username='" + username + "'");
            if (rs.next()) {
                String userName = rs.getString("username");
                String fullname = rs.getString("fullName");
                String email = rs.getString("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href = "../css/Profile.css">
<script src="https://kit.fontawesome.com/c697a669aa.js" ></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Profile</title>
</head>
<body>
<nav>
        <div class="nav-div">
            <h1 class="LOGO">TOP-G COUTURE</h1>
            <ul class="nav-links">
                <li><a href="Home.jsp" class="Home" id="link">Home</a></li>
                <li><a href="Product.jsp" class="product" id="link" >Product</a></li>
                <li><a href="" class="blog" id="link">Blog</a></li>
                <li><a href="" class="contact" id="link">Contact</a></li>
            </ul>

            <div class="nav-icons-div">

    
               
                <a href="addToCart.jsp" class="wishlist" id="nav-icons"><i class="fa fa-cart-shopping" style="position:relative; left:0px"></i></a>
                <a href="Profile.jsp" class="cart" id="nav-icons"><i class="fa fa-user" style="position:relative; left:18px"></i></a>
				

 <div class="search-container">
  <form action="/search" method="get">
    
    <input class="search expandright" id="searchright" type="search" name="q" placeholder="Search">
    <label class="button searchbutton" for="searchright"><span class="mglass">&#9906;</span></label>
  </form>
</div>



            </div>
        </div>
        

    </nav>


<div class="card">
  <img src="Images/111black.png" alt="John" style="width:100%">
  <h1><%=username %></h1>
  <p class="title"><%=email %></p>
  <p><%=fullname %></p>
  <p><button>Update info</button></p>
</div>


</body>
</html>
<%
            }
            rs.close();
            stmt.close();
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
%>