<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="https://kit.fontawesome.com/c697a669aa.js" ></script>
	<meta name="keywords" content="clothes, clothing, fashion, style">
	<link rel="stylesheet" href="../css/Product.css">
	 <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  
  <title>Login Page</title>
</head>

<body>
<nav>
        <div class="nav-div">
            <h1 class="LOGO">TOP-G COUTURE</h1>
            <ul class="nav-links">
                <li><a href="Home.jsp" class="Home.jsp" id="link">Home</a></li>
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
    
			<form action="Product.jsp" method="get">
		    <label for="sort"></label>
		    <select id="sort" name="sort">
		    <option value="name">Name</option>
		    <option value="price">Price</option>
		    
		    </select>
		    <input type="submit" value="Sort">
		</form>
        <%
String sortParam = request.getParameter("sort");
String sortQuery = "";

if (sortParam != null && !sortParam.isEmpty()) {
if (sortParam.equals("name")) {
    sortQuery = "ORDER BY prod_name";
} else if (sortParam.equals("price")) {
    sortQuery = "ORDER BY price";
} 
}
       	   try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/top-couture";
            Connection con = DriverManager.getConnection(url, "root", "");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT prod_name, price, prodLink FROM product " + sortQuery);
            
            while (rs.next()) {
                
                String productName = rs.getString("prod_name");
                int productPrice = rs.getInt("price");
                String image = rs.getString("prodLink"); 
                
        %>
       	  
       
   
  <div class="card">

       
<div class="image">

   <img src="<%= image %>">
</div>
<div class="title">
 <h1><%= productName %></h1> 

</div>
<div class="des">
 <p>$<%= productPrice %></p>
<button>Add to Cart</button>
<i class="fa fa-shopping-cart" style="position:relative; left:10px"></i> 

</div>

    
</div>
 
<% 
	}
      rs.close();
            stmt.close();
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        %>
<!--cards -->




<footer class="footer">
  	 <div class="container">
  	 	<div class="row">
  	 		<div class="footer-col">
  	 			<h4>company</h4>
  	 			<ul>
  	 				<li><a href="#">about us</a></li>
  	 				<li><a href="#">our services</a></li>
  	 				<li><a href="#">privacy policy</a></li>
  	 				<li><a href="#">affiliate program</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>get help</h4>
  	 			<ul>
  	 				<li><a href="#">FAQ</a></li>
  	 				<li><a href="#">shipping</a></li>
  	 				<li><a href="#">returns</a></li>
  	 				<li><a href="#">order status</a></li>
  	 				<li><a href="#">payment options</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>online shop</h4>
  	 			<ul>
  	 				<li><a href="#">Traditional Dress</a></li>
  	 				<li><a href="#">Formal Dress</a></li>
  	 				<li><a href="#">Hat</a></li>
  	 				<li><a href="#">Floral Dress</a></li>
  	 			</ul>
  	 		</div>
  	 		<div class="footer-col">
  	 			<h4>follow us</h4>
  	 			<div class="social-links">
  	 				<a href="#"><i class="fab fa-facebook-f"></i></a>
  	 				<a href="#"><i class="fab fa-twitter"></i></a>
  	 				<a href="#"><i class="fab fa-instagram"></i></a>
  	 				<a href="#"><i class="fab fa-linkedin-in"></i></a>
  	 			</div>
  	 		</div>
  	 	</div>
  	 </div>
  </footer>

</body>
</html>