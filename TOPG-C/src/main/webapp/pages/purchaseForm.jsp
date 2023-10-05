<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/purchaseForm.css">
<script src="https://kit.fontawesome.com/c697a669aa.js" ></script>
<title>Insert title here</title>
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
    <div class = "formdiv">
    <form action="process_form.php" method="POST" enctype="multipart/form-data">
        <h2>ORDER FORM</h2>
     
        <label for="customer_name"><span>Customer Name:</span> <input type="text" id="customer_name" name="customer_name" required><br></label>
        

        <label for="address"><span>Address:</span> <input type="text" id="address" name="address" required><br></label>
        

        <label for="product_name"><span>Product Name:</span> <input type="text" id="product_name" name="product_name" required><br></label>
        

        <label for="quantity"><span>Quantity:</span><input type="number" id="quantity" name="quantity" required><br></label>
        
        <label for="customer_contactnum"><span>Customer Contact Number:</span><input type="number" id="customer_contactnum" name="customer_contactnum" required><br></label>
        

       
        

        <div class="inputfield">
        	<button type="submit" class="btn"> Purchase </button>
      	</div>
    </form>
</div>
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