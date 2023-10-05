<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="https://kit.fontawesome.com/c697a669aa.js" ></script>
	<meta name="keywords" content="clothes, clothing, fashion, style">
	<link rel="stylesheet" href="../css/Login.css">
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
    <div class="main">
    <p class="sign" align="center">Log in</p>
    
    <form class="form1" action="${pageContext.request.contextPath}/LoginServlet" method = "post">
    
      <input class="un" type="text" placeholder="Username" name="username">
      <input class="pass" type="password" placeholder="Password" name="password">
      
      <button type = "submit" class = "submit">Sign in</button>
      <p class="forgot" align = "center">Don't have an account? <a href = "Register.jsp">Sign up</a></p>
      </form>        
                
    </div>
</body>
</html>