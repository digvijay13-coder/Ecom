<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <h1>Product Info</h1>
    <div>
        <img src="images/${product.pimageName}" width="200" height="200"/>
        <p><strong>Name:</strong> ${product.pname}</p>
        <p><strong>Category:</strong> ${product.pcategory}</p>
        <p><strong>Price:</strong> ₹${product.pprice}</p>
        <p><strong>Description:</strong> ${product.pdesc}</p>
    </div>
</body>
</html>