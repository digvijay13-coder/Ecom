<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin_Login-TrendMart</title>
<link rel="icon" type="image/png" href="./in-img/logo.png" >
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
	crossorigin="anonymous">
</head>
<body class="bg-white">


	<section>

<img width="200" style="position: fixed; top: 0; left: 0; z-index: 1000;" alt="Logo" src="./in-img/logo.png">

		<div class="container w-25 bg-light border rounded-3 p-3"
			style="margin-top: 7rem;">
						<%
String msg = (String)session.getAttribute("msg");
if(msg != null && !msg.trim().isEmpty())
{
	

%>
<p class="text-center text-lead bg-danger text-white border rounded-3"><%=msg %></p>
<%
}
session.removeAttribute("msg");
%>
			<h1 class="text-center text-danger display-6">Admin Login</h1>
			<form action="admin-login" method="post">
				<div class="row g-3">
					<div class="col col-md-12">
						<label for="aname" class="form-label">Enter username</label> <input
							class="form-control" type="text" name="name" id="aname">
					</div>
					<div class="col col-md-12">
						<label for="apass" class="form-label">Enter Password</label> <input
							class="form-control" type="text" name="pass" id="apass">
					</div>
					<div class="col col-md-6 offset-md-4">
						<button class="btn btn-success">Login</button>
					</div>
				</div>
			</form>
		</div>
	</section>

</body>
</html>