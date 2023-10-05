
<%@ page session = "true" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../css/Home.css">
    <link rel="stylesheet" type="text/css" href="../scripts/Home.js">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/c697a669aa.js"></script>
    <script>
		function logout() {
			 // Submit the logout form
			document.getElementById("logoutForm").submit();
		}
	</script>
    <title>TOP-G COUTURE</title>
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

    <!-- for main div -->

    <div class="main-div">
        <div class="main-div-01">
            
            <h1 class="wel">ZARA</h1> 
            <h1 class="wel-01" style="left: 20px;">OUTSHINE YOURSELF.</h1>
            
            <p class="info-main" style="text-align: justify;">Your clothes should be an extension of your personality, a reflection of your inner self. With every stitch and fabric choice, let your unique style speak volumes. Wear your story with pride, and let your fashion do the talking.</p>

            <div class="btns-div">
                
                
       
					
					<% if (session != null && session.getAttribute("username") != null) { %>
  <!-- user is logged in, show logout button -->
  <form id="logoutForm" action="${pageContext.request.contextPath}/LogoutServlet" method="post">
    <button type="submit" class = "lmore" id="main-btn" onclick="logout()">Logout</button>
  </form>
<% } else { %>
  <!-- user is not logged in, show login button -->
  <form action="${pageContext.request.contextPath}/pages/Login.jsp" method="get">
    <button type="submit" class = "lmore" id="main-btn">Login</button>
  </form>
<% } %>
               
            </div>

        </div>
        <div><img src="Images/dress3.png" style="position:relative; height: 390px; width: 300px; left:400px; bottom: 0px;" ></div>
        <div class="main-div-02"></div>
    </div>

     <!-- product -->

     <section class="product"> 
        <h2 class="product-category">Best selling</h2>

       
        <div class="product-container">
           
            <button class="pre-btn"><img src="images/arrow.png  " alt=""></button>
            <button class="nxt-btn"><img src="images/arrow.png" alt=""></button>
    
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">10% off</span>

                    <img src="Images/dress10.jpeg" class="product-thumb" alt="">
                    
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Floral Print Shirt Set</h2>

                    <span class="price">$100</span><span class="actual-price">$110</span>
               <div  class="buy-main"> <a href="" class="buy-a-main">Add to cart</a></div>

                </div>
            </div>

            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">5% off</span>

                    <img src="Images/satin.jpg" class="product-thumb" alt="">
                
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Satin Dress</h2>
                    <span class="price">$76</span><span class="actual-price">$80</span>
            <div  class="buy-main"><a href="" class="buy-a-main">Add to cart</a></div>

                </div>
            </div>

            <div class="product-card">
                <div class="product-image">
                    <img src="Images/hat.jpg" class="product-thumb" alt="" >
                    
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Men's Hat</h2>
                    <span class="price">$30</span>
              <div class="buy-main">  <a href="" class="buy-a-main">Add to cart</a></div>

                </div>
            </div>

            <div class="product-card">
                <div class="product-image">
                    <img src="Images/db.jpg" class="product-thumb" alt="">
                    
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Women's Suit</h2>
                    <span class="price">$3000</span>
               <div  class="buy-main"> <a href="" class="buy-a-main">Add to cart</a></div>

                </div>
            </div>

            <div class="product-card">
                <div class="product-image">
                    <img src="Images/jb.jpg" class="product-thumb" alt="">
                   
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Leather Coat</h2>
                    <span class="price">$6000</span>
               <div class="buy-main"> <a href="" class="buy-a-main">Add to cart</a></div>

                </div>
            </div>

            <div class="product-card">
                <div class="product-image">
                    <img src="Images/rl.jpg" class="product-thumb" alt="">
                    
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Overcoat</h2>
                    <span class="price">$8000</span>
               <div  class="buy-main"> <a href="" class="buy-a-main">Add to cart</a></div>

                </div>
            </div>

            <div class="product-card">
                <div class="product-image">
                    <img src="Images/bb.jpg" class="product-thumb" alt="">
                    
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Linen Dress for kid</h2>
                    <span class="price">$100</span>
              <div  class="buy-main">  <a href="" class="buy-a-main">Add to cart</a></div>
                    
                </div>
            </div>

            <div class="product-card">
                <div class="product-image">
                    <img src="Images/kurtha.jpg" class="product-thumb" alt="">
                    
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Kurtha Set</h2>
                    <span class="price">$40</span><br>
               <div  class="buy-main"> <a href="" class="buy-a-main">Add to cart</a></div>

                </div>

            </div>

        </div>
    </section>
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