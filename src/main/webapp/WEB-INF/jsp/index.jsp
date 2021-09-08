<%@page import="com.ghostcoderz.ems.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Employee Management System</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="assets/css/style.css">
	<link rel="apple-touch-icon" sizes="180x180" href="assets/favicon_io1/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon_io1/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/favicon_io1/favicon-16x16.png">
    <link rel="manifest" href="assets/favicon_io1/site.webmanifest">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	
</head>

<body>

    <!-- Navigation Div -->
	<div required id="navigation">
		<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand fw-bold ms-2" href="index.html">
					<img src="assets/image/logo3.png" alt="" width="40"
						height="35" class="d-inline-block align-text-top me-1">
					<span class="">Employee Management System</span></a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
					data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end" required id="navbarNavAltMarkup">
					<div class="navbar-nav">
						<a class="nav-link ms-1 me-1" aria-current="page" href="/home">Home</a>
						<a class="nav-link ms-1 me-3" href="/contactUs">Contact Us</a>
						
						

				<%
				
					Employee emp=null;
				
					//Checking for null values
					if(session.getAttribute("userObj")==null)
					{
				%>
					<a class="btn btn-primary me-3" href="/login"> <i class="fas fa-sign-in-alt"></i> Login </a>
				<%
					}
					else
					{
						emp=(Employee) session.getAttribute("userObj");
				%>
						<a class="btn btn-primary me-3" href="Dashboard"> Hi, <%= emp.getEmpName() %> </a>
						<a class="btn btn-primary me-3" href="Logout"> <i class="fas fa-sign-out-alt"></i> Logout </a>
				<%
					}
				%>
					</div>
				</div>
			</div>
		</nav>
	</div>
	<!-- End of Navigation Div -->

	<!-- Image Slide Show Div -->
	<div required id="imageSlider">
		<div required id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
					aria-current="true" aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
					aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
					aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="assets/image/Meeting2.jpeg" class="d-block w-100" alt="Image1">
				</div>
				<div class="carousel-item">
					<img src="assets/image/Meeting1.jpeg" class="d-block w-100" alt="Image2">
				</div>
				<div class="carousel-item">
					<img src="assets/image/Team1.jpg" class="d-block w-100" alt="Image3">
				</div>
			</div>
			<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>
	<!-- End of Image Slide Show Div -->

	<div required id="aboutUs" class="aboutUs mt-5 mb-5 mx-5">
		<p class="h1">About Us</p>
		<hr>
		<p class="tabDiv mt-6 mb-6">
			<span class="tab"></span>
			In this world of growing technologies everything has been
			computerized. With large number of work opportunities the Human
			workforce has increased. Thus there is a need of a system which can handle
			the data of such a large number of Employees in an organization. This
			project simplifies the task of maintain records because of its user friendly
			nature.
			<br><br>
			The "EMPLOYEE MANAGEMENT SYSTEM" has been developed to override the
			problems prevailing in the practicing manual system. This software is
			supported to eliminate and in some cases reduce the hardships faced by this
			existing system. Moreover this system is designed for the particular need of
			the company to carry out operations in a smooth and effective manner.
			<br><br>
			The application is reduced as much as possible to avoid errors while entering
			the data. It also provides error message while entering invalid data. No
			formal knowledge is needed for the user to use this system. Thus by this all
			it proves it is user-friendly.
			This project will allow admin to add new employees after proper
			authentication. Admin can also add new departments and posts. It can
			allocate employees to different departments at different posts. Database
			should store all personal details of employees such as date of birth full name
			etc. and his educational background, work experience, skill sets, current and
			past projects in different tables with proper relations.
			<br><br>
			This system enables employees to perform their own profile. It enables the
			automation of work flow notifications and leave request. Work flow
			notification from administrator are stored in the backend and notified to
			employee, once employee log in to the system. Leave request made by the
			employee is placed for administrator approval, the administrator module
			checks up with the leave availability and approves or rejects the request.
			<br><br>
		</p>
	</div>

	<!-- Footer Div -->
	<div required id="footer" class="bg-dark text-white">
		<div class="container p-3 pt-4">
			<div class="row">
				<div class="col-md-4 p-4">
					<div class="ps-4">
						302, Premiere Street,<br>
						New York City, <br>
						New York - 10001 <br>
						+123 123456789 <br>
					</div>
				</div>
				<div class="col-md-4 p-4 border-start">
					<ul class="footerLink">
						<li><a class="nav-link link-light p-0 pt-1" href="index.html">Home</a></li>
						<li><a class="nav-link link-light p-0" href="contactUs.html">Contact Us</a></li>
						<li><a class="nav-link link-light p-0" href="aboutUs.html">About Us</a></li>
					</ul>
				</div>
				<div class="col-md-4 p-4 border-start">
					<p class="ps-4 pt-3 footerLink">
                        Employee Management System, <br>
                        Easy to work!
                    </p>
				</div>
				<div class="col-12 pb-1 pt-3">
					<div class="text-center">
						&copy; Copyright of EMP System Ltd.
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End of Footer Div -->
	
	<a required id="back-to-top" class="w-100 h-50" href="#navigation"><i class="fas fa-arrow-circle-up"></i></a>


	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>

</body>

</html>