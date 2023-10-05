<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Admin Panel</title>
</head>
<body>
    <h1>Product Admin Panel</h1>



    <h2>Edit Product</h2>
    <form action="http://localhost:8083/Advanced_cw/ProductUpdate" method="post">
        <label for="productId">Product ID:</label>
        <input type="text" id="productId" name="productId"><br>
        <label for="productName">Product Name:</label>
        <input type="text" id="productName" name="productName"><br>
        <label for="productPrice">Product Price:</label>
        <input type="text" id="productPrice" name="productPrice"><br>
        <input type="submit" value="Update">
        <input type="text" id="" name="qty"><br>

    </form>
</body>
</html>