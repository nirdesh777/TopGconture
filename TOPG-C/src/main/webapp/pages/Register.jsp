<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="https://kit.fontawesome.com/c697a669aa.js" ></script>
	<meta name="keywords" content="clothes, clothing, fashion, style">
	<link rel="stylesheet" href="../css/Register.css">
	 <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  
  <title>Register Page</title>
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
    
    <div class="wrapper">
    <div class="title">
      Registration Form
    </div>
     <form action = "${pageContext.request.contextPath}/Register" method="post" enctype="multipart/form-data" >
    <div class="form">
       <div class="inputfield">
          <label>Full Name</label>
          <input type="text" name="fullName" required>
       </div>  
       
        <div class="inputfield">
          <label for="role">Role</label>
          <input type="text" id="role" name="role" required>
       </div> 
        
        
       
       <div class="inputfield">
         <label for="address">Address</label>
        <input type="text" id="address" name="address" required>
       </div>
       
       <div class="inputfield">
         <label for="phone">Phone</label>
        <input type="tel" id="phone" name="phone" required>
       </div>
       
       <div class="inputfield">
         <label for="email">Email</label>
        <input type="email" id="email" name="email" required>
       </div>
        
        <div class="inputfield">
         <label for="username">Username</label>
        <input type="text" id="username" name="username" required>
       </div>
       
       <div class="inputfield">
          <label for="password">Password</label>
          <input type="password" id="password" name="password" required>
       </div>  
       
       <div class="inputfield">
         <label for="part">Profile Picture</label>
        <input type="file" id="image" name="image" accept = "image/" required>
       </div>
       

		<div class="inputfield">
        	<button type="submit" class="btn"> Register </button>
      	</div>
      	</div>
       </form>
       <p class="forgot" align = "center">Already have an account? <a href = "Login.jsp">Sign in</a></p>
    </div>
</body>
</html>