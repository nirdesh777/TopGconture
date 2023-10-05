<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
   <title>Shopping Cart</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
   <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" rel="stylesheet" />
   <link href="../css/addToCart.css" rel="stylesheet">
   <link rel="stylesheet" type="text/css" href="../scripts/addToCart.js">
   
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
                <a href="Login.jsp" class="cart" id="nav-icons"><i class="fa fa-user" style="position:relative; left:18px"></i></a>
				

 <div class="search-container">
  <form action="/search" method="get">
    
    <input class="search expandright" id="searchright" type="search" name="q" placeholder="Search">
    <label class="button searchbutton" for="searchright"><span class="mglass">&#9906;</span></label>
  </form>
</div>



            </div>
        </div>
        

    </nav>

   <section>
      <div class="container">
         <h2 class="px-5 p-2" style= "position:relative; top:30px; left:60px"><b>My Cart</b></h2>
         <div class="cart">
            <div class="col-md-12 col-lg-10 mx-auto">
               <div class="cart-item">
                  <div class="row">
                     <div class="col-md-7 center-item">
                        <img src="satin.jpg" alt="">
                        <h5>Satin Dress</h5>
                     </div>

                     <div class="col-md-5 center-item">
                        <div class="input-group number-spinner">
                           <button id="phone-minus" class="btn btn-default"><i class="fas fa-minus"></i></button>
                           <input id="phone-number" type="number" min="0" class="form-control text-center" value="1">
                           <button id="phone-plus" class="btn btn-default"><i class="fas fa-plus"></i></button>
                        </div>
                        <h5>$ <span id="phone-total">86.56</span> </h5>
                        <img src="images/remove.png" alt="" class="remove-item">
                     </div>
                  </div>
               </div>

               <div class="cart-item">
                  <div class="row">
                     <div class="col-md-7 center-item mx-auto">
                        <img src="dress7.jpg" alt="">
                        <h5>Beige Men's Shirt</h5>
                     </div>
                     <div class="col-md-5 center-item">
                        <div class="input-group number-spinner">
                           <button id="case-minus" class="btn btn-default"><i class="fas fa-minus"></i></button>
                           <input id="case-number" type="number" min="0" class="form-control text-center" value="1">
                           <button  id="case-plus" class="btn btn-default"><i class="fas fa-plus"></i></button>

                        </div>
                        <h5>$ <span id="case-total">1200</span> </h5>
                        <img src="images/remove.png" alt="" class="remove-item">
                     </div>
                  </div>
               </div>

               <div class="cart-item">
                  <div class="row g-2">

                     <div class="col-6">
                        <h5>Subtotal: </h5>
                        <h5>Tax:</h5>
                        <h5>Total:</h5>
                     </div>

                     <div class="col-6 status">
                        <h5>$<span id="sub-total">1,278</span></h5>
                        <h5>$<span id="tax-amount">0</span></h5>
                        <h5>$<span id="total-price">1,278</span></h5>
                     </div>
                     
                  </div>
               </div>
               <div class="col-md-12 pt-4 pb-4">
                  <a href = "purchaseForm.jsp"><button type="button" class="btn btn-success check-out">Check Out</button></a>
               </div>
            </div>
         </div>
      </div>
   </section>
   <script src="cart.js"></script>
</body>
</html>