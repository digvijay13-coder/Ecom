<%@page import="java.util.Set"%>
<%@page import="com.MainApp.Entity.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TrendMart</title>
<link rel="icon" type="image/png" href="./in-img/logo.png" >
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
	crossorigin="anonymous"></script>


</head>
<body class="bg-white">
	<%
	String utoken = (String) session.getAttribute("utoken");
	if (utoken != null) {
	%>
	
	
	<!-- Nav Bar Start -->
	
	<%
	Set<String> s =(Set<String> )request.getAttribute("categories");
	%>
	
	


<nav class="navbar fixed-top navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="home"><img alt="loading" width="50px" src="./in-img/logo.png"> Hello, <%=utoken%></a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
      data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
      aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">

      <!-- Left side: Categories -->
      <ul class="navbar-nav mb-2 mb-lg-0">
        <li class="nav-item">
          <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button"
              data-bs-toggle="dropdown" aria-expanded="false">
              Categories
            </button>
            <ul class="dropdown-menu">
            <li class="border" ><a class="dropdown-item" href="/remove-filter">Remove Filter</a></li>
              <%
                for(String c : s) {
              %>
              <li><a class="dropdown-item" href="/filter?category=<%=c%>"><%= c %></a></li>
              <%
                }
              %>
              
            </ul>
          </div>
        </li>
        <li class="nav-item ms-2">
          <a class="btn btn-info nav-link active" aria-current="page" href="read-cart?uname=<%=utoken%>">Cart</a>
        </li>
      </ul>

      <!-- Right side: Search and Logout -->
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item me-3">
          <form class="d-flex" role="search" action="#">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
        </li>
        
        <li class="nav-item">
          <a class="btn btn-outline-danger" aria-current="page" href="user-logout">Logout</a>
        </li>
      </ul>

    </div>
  </div>
</nav>
<!-- Nav Bar end -->


<!-- Display Main slide start -->

<section class="container" style="margin-top: 8rem" >

<div>

<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="./in-img/img1.jpg" height="500" class="d-block w-100" alt="loading...">
   <div class="carousel-caption d-none d-md-block">
         <button class="btn btn-outline-light">See</button>
      </div>
    </div>
 <div class="carousel-item " data-bs-interval="7000">
      <img src="./in-img/img2.jpg" height="500" class="d-block w-100" alt="loading...">
       <div class="carousel-caption d-none d-md-block">
         <button class="btn btn-outline-light">See</button>
      </div>
    </div>
     <div class="carousel-item" data-bs-interval="7000">
      <img src="./in-img/img3.jpg" height="500" class="d-block w-100" alt="loading...">
       <div class="carousel-caption d-none d-md-block">
         <button class="btn btn-outline-light">See</button>
      </div>
    </div>
     <div class="carousel-item " data-bs-interval="1000">
      <img src="./in-img/img4.jpg" height="500" class="d-block w-100" alt="loading...">
       <div class="carousel-caption d-none d-md-block">
         <button class="btn btn-outline-light">See</button>
      </div>
     
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

</div>

</section>

<!-- Display Main slide start -->

<!-- Product Display Start -->
<%
List<Product> l =(List<Product>) request.getAttribute("lap");

%>

<section class="container mt-5">
<div class="row" >
<h2>>> Trending Products</h2>
<%
for(Product p:l)
{
	%>
	
	<div class="col-md-4 g-3">
	
	<div class="card  p-3" style="width: 18rem;">
	
	<h4 class="card-title"><%=p.getPname() %></h4>
	<a href="product-details?pid=<%=p.getPid()%>">
  <img height="200" src="/images/<%=p.getPimageName()%>" class="card-img-top" alt="loading...">
  </a>
  <div class="card-body">
  <h4 class="card-title"><%=p.getPprice() %></h4>
	<form action="add-cart" method="post">
	
	<input type="hidden" name="pid" value="<%=p.getPid() %>" >
	<input type="hidden" name="aname" value="<%=p.getAdminName() %>">
	<input type="hidden" name="uname" value="<%=utoken %>">	  
		<button class="btn btn-sm btn-outline-info" >Add to Cart</button>
		</form>
  </div>
		
	</div>

</div>

	
	
	
	
	<% 
}
%>
</div>

</section>



<!-- Product Display End -->



<!-- Display Footer Start -->
<section class="footer">
<footer class="bg-dark text-white mt-3 pt-2 pb-2">
  <div class="container text-center text-md-left">
    <div class="row">
      <!-- Brand & Slogan -->
      <div class="col-md-4">
      <img alt="loading" width="70" src="./in-img/logo.png">
        <h5 class="text-uppercase">TrendMart</h5>
        <p>Trendy. Affordable. Yours. Shop smarter, live better.</p>
      </div>

      <!-- Quick Links -->
      <div class="col-md-4">
        <h5 class="text-uppercase">Quick Links</h5>
        <ul class="list-unstyled">
          <li><a href="#" class="text-white text-decoration-none">Home</a></li>
          <li><a href="#" class="text-white text-decoration-none">Shop</a></li>
          <li><a href="#" class="text-white text-decoration-none">About Us</a></li>
          <li><a href="#" class="text-white text-decoration-none">Contact</a></li>
        </ul>
      </div>

      <!-- Contact Info -->
      <div class="col-md-4">
        <h5 class="text-uppercase">Get in Touch</h5>
        <p>Email: support@trendmart.com</p>
        <p>Phone: +91 98765 43210</p>
        <p>Mon - Sat: 9am - 6pm</p>
      </div>
    </div>
  </div>
  <div class="text-center mt-3">
    <small>© 2025 TrendMart. All rights reserved.</small>
    <br>
      <small>Made with ❤️ for shoppers like you.</small>
  </div>
</footer>

</section>

<!-- Display Footer Start -->
	<%
	} else {
	response.sendRedirect("userlogin.jsp");
	session.setAttribute("msg", "login and then access User home");
	}
	%>
	
	
</body>
</html>