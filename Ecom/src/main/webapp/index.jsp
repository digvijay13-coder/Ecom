<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trend Mart</title>
<link rel="icon" type="image/png" href="./in-img/logo.png">

<!-- Bootstrap 5 CSS -->
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
    crossorigin="anonymous">

<style>
    body {
        background-color: #f8f9fa;
    }
    .logo {
        width: 80px;
    }
    .card a {
        text-decoration: none;
        color: white;
    }
    .card a:hover {
        color: white;
    }
</style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-light bg-white shadow-sm mb-4">
    <div class="container">
        <a class="navbar-brand d-flex align-items-center" href="#">
            <img src="./in-img/logo.png" alt="Logo" class="logo me-2">
            <span class="fw-bold fs-4">Trend Mart</span>
        </a>
    </div>
</nav>

<!-- Main Section -->
<div class="container d-flex justify-content-center align-items-center" style="min-height: 70vh;">
    <div class="row g-4 text-center w-100">

        <!-- Admin Card -->
        <div class="col-md-6 d-flex">
            <div class="card shadow p-4 w-100 h-100 d-flex flex-column justify-content-between">
                <h4 class="mb-3">Admin Portal</h4>
                <a href="adminregister.jsp" class="btn btn-primary mt-auto">Go to Admin Login</a>
            </div>
        </div>

        <!-- User Card -->
        <div class="col-md-6 d-flex">
            <div class="card shadow p-4 w-100 h-100 d-flex flex-column justify-content-between">
                <h4 class="mb-3">User Portal</h4>
                <a href="userregister.jsp" class="btn btn-success mt-auto">Go to User Login</a>
            </div>
        </div>

    </div>
</div>

<!-- Footer -->
<footer class="text-center text-muted py-3">
    &copy; 2025 Trend Mart. All rights reserved.
</footer>

</body>
</html>
