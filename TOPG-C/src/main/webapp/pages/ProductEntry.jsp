<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="keywords" content="clothes, clothing, fashion, style">
	<link rel="stylesheet" href="../css/ProductEntry.css">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="https://kit.fontawesome.com/c697a669aa.js" ></script>
	<title> Product </title>
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
      Product Form
    </div>
    <form method="post" action="${pageContext.request.contextPath}/productEntry" enctype = "multipart/form-data" >
    <div class="form">
        
        <div class="inputfield">
         <label for="prod">Product Picture</label>
        <input type="file" id="image" name="prod" accept = "image/" required>
       </div>
       
        <div class="inputfield">
          <label>Product ID</label>
          <input type="text" name="prod_id" required>
       </div>  
       
       
       <div class="inputfield">
          <label>Product Name</label>
          <input type="text" name="prod_name" required>
       </div>  
              
       
      <div class="inputfield">
          <label>Product Brand</label>
          <input type="text" name="brand" required>
       </div> 
       
        <div class="inputfield">
          <label>Product Category</label>
          <input type="text" name="category" required>
       </div>
       
        
      <div class="inputfield">
          <label>Product Price</label>
          <input type="text" class="input" name="price" required>
       </div> 


       <div class="inputfield">
          <label>Stock Left</label>
          <input type="text" class="input" name = "stock_left" required>
       </div> 

              
      <div class="inputfield">
        	<button type="submit" class="btn"> Add Product </button>
      	</div>
      	
    </div>
    </form>
</div>

</body>
</html>