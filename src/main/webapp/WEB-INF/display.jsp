<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style type="text/css">
.bg-custom{
		background:#283593 !important;
}
.navbar .nav-item .nav-link{
	font-size:20px;
	color:white;
}
.navbar .nav-item:hover .nav-link{
	background:white;
	color:black;
	border-radius:10px;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link " href="index">Add_Student</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="display">View</a></li>

			</ul>
			
		</div>
	</nav>
<div class="container p-2">
<div class="col-md-8 offset-md-2">

<% int sr=1; %>
<table  class="table table-striped table-bordered">
 <thead>
<tr>
<th scope="col">Sr No.</th>
<th scope="col">Name</th>
<th scope="col">Last Name</th>
<th scope="col">Age</th>
<th scope="col">Education</th>
<th class="text-center" colspan="2" scope="col">Action</th>
</tr>
 </thead>
<c:forEach items="${list}" var="list">
<tbody>
<tr>
<th><%= sr++ %></th>
<td>${list.name}</td>
<td>${list.lname}</td>
<td>${list.age}</td>
<td>${list.edu}</td>
<td><a href="edit/${list.id}"><button type="button" class="btn btn-warning">Edit</button></a></td>
<td><a href="delete/${list.id}"><button type="button" class="btn btn-danger">Delete</button></a></td>

</tr>
</tbody>
</c:forEach>

</table>
</div>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

</html>