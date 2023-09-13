<html>
<head>
<title>
Add Data
</title>
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
			<div class="card">
				<div class="card-body">
		<form action="submit" method="get">
		<div class="form-group">
    <label for="exampleInputPassword1">Name</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="name" placeholder="Name" required>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword2">Last Name</label>
    <input type="text" class="form-control" name="lname" id="exampleInputPassword2" placeholder="Last Name" required>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword3">Age</label>
    <input type="text" class="form-control" name="age" id="exampleInputPassword3" placeholder="Age" required>
  </div>
   <div class="form-group">
    <label for="exampleInputPassword4">Eduation</label>
    <input type="text" class="form-control" name="edu" id="exampleInputPassword4" placeholder="Education" required>
  </div>
  <div class="text-center">
  <input class="btn btn-primary" type="submit" value="Submit">
  </div>
  
	</form>
	</div>
	</div>
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

