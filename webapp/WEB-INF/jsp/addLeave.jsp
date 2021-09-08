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
    
    <style>
        textarea {
            resize: none;
        }
    </style>

</head>

<body>

    <%
	
		Employee e=null;
	
		//Checking for null values
		if(session.getAttribute("userObj")==null)
		{
			response.sendRedirect("login.html");
		}
		else
		{
			e=(Employee) session.getAttribute("userObj");
		}
	
	%>

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
						<a class="nav-link ms-1 me-1" aria-current="page" href="index.html">Home</a>
						<a class="nav-link ms-1 me-3" href="contactUs.html">Contact Us</a>
						<a class="btn btn-primary me-3" href="Dashboard"> Hello, <%= e.getEmpName() %> </a>
						<a class="btn btn-primary me-3" href="Logout"> <i class="fas fa-sign-out-alt"></i> Logout </a>
					</div>
				</div>
			</div>
		</nav>
	</div>
	<!-- End of Navigation Div -->

    <!-- Add Leave Form Div -->
    <div class="container pt-4">
        <div class="row m-5 justify-content-center">
            <h1 class="text-center pb-3">Add Leave</h1>
            <hr>
            <form required id="form" class="border border-dark m-2 mt-4 col-md-10 text-left">
                <div class="row">
                    <div class="col-md-6">
                        <div class="m-3 me-1">
                            <label for="empCode" class="form-label ps-2">Employee Code</label>
                            <select type="select" class="form-select" required id="empCode">
                                <option value="none" selected>-- select one --</option>
                                <option value="Mrs.">Mrs.</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="m-3">
                            <label for="reason" class="form-label ps-2">Reason for leave</label>
                            <input type="text" class="form-control" required id="reason" placeholder="Reason">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="m-3">
                            <label for="description" class="form-label ps-2">Description</label><br>
                            <textarea class="form-control" required id="description" rows="5" placeholder="Description"></textarea>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="m-3">
                            <label for="fDate" class="form-label ps-2">From Date</label>
                            <input type="date" class="form-control" required id="fDate">
                        </div>
                        <div class="m-3">
                            <label for="tDate" class="form-label ps-2">To Date</label>
                            <input type="date" class="form-control" required id="tDate">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="m-3 me-1">
                            <label for="status" class="form-label ps-2">Leave Status</label>
                            <select type="select" class="form-select" required id="status">
                                <option value="none" selected>-- select one --</option>
                                <option value="pending">Pending</option>
                                <option value="Approved">Approved</option>
                                <option value="rejected">Rejected</option>
                            </select>
                        </div>
                    </div>                    
                </div>
                <div class="row">
                    <div class="col-md-6 d-flex flex-row-reverse">
                        <div class="m-3 me-1">
                            <input type="submit" class="btn btn-primary" value="Apply Leave">
                        </div>
                    </div>
                    <div class="col-md-6 d-flex">
                        <div class="m-3 me-1">
                            <input type="reset" class="btn btn-primary" value="Reset Form">
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- End of Add Leave Form Div -->

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