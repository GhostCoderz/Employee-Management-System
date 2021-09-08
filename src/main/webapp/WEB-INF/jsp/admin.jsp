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
	<link rel="stylesheet" href="style.css">
	<link rel="apple-touch-icon" sizes="180x180" href="assets/favicon_io1/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon_io1/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/favicon_io1/favicon-16x16.png">
    <link rel="manifest" href="assets/favicon_io1/site.webmanifest">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
</head>

<body>

	<%
	
		Employee emp=null;
	
		//Checking for null values
		if(session.getAttribute("userObj")==null)
		{
			response.sendRedirect("/login");
		}
		else
		{
			emp=(Employee) session.getAttribute("userObj");
			String str[]=emp.getEmpName().split(" ");
			String firstName=str[0];
	
	%>

    <!-- Navigation Div -->
	<div id="navigation">
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
				 <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
					<div class="navbar-nav">
						<a class="nav-link ms-1 me-1" aria-current="page" href="/home">Home</a>
						<a class="nav-link ms-1 me-3" href="/contactUs">Contact Us</a>
						<a class="btn btn-primary me-3" href="Dashboard"> Hello, <%= firstName %> </a>
						<a class="btn btn-primary me-3" href="Logout"> <i class="fas fa-sign-out-alt"></i> Logout </a>
					</div>
				</div>
			</div>
		</nav>
	</div>
	<!-- End of Navigation Div -->
	
	<%
	
		}
		
	%>

    <!-- AdminDash div -->
    <div class="adminDash">
        <div class="col-12">
            <div class="row m-5 p-5 justify-content-center">
                <div class="card text-white bg-dark m-3" style="max-width: 18rem;">
                    <div class="card-header">Add new</div>
                    <div class="card-body">
                        <h5 class="card-title">Employee</h5>
                        <p class="card-text">Here you can add a new employee with their details. This will open a form for you.</p>
                        <a href="addEmployee.jsp" class="btn btn-primary text-right">Open</a>
                    </div>
                </div>
                <div class="card text-white bg-dark m-3" style="max-width: 18rem;">
                    <div class="card-header">Add new</div>
                    <div class="card-body">
                        <h5 class="card-title">Salary</h5>
                        <p class="card-text">Here you can add a salary record. This will open a form for you.</p>
                            <a href="addSalary.jsp" class="btn btn-primary text-right">Open</a>
                    </div>
                </div>
                <!-- <div class="card text-white bg-dark m-3" style="max-width: 18rem;">
                    <div class="card-header">Add new</div>
                    <div class="card-body">
                        <h5 class="card-title">Leave</h5>
                        <p class="card-text">Here you can add a leave for an employee. This will open a form for you.</p>
                            <a href="addLeave.html" class="btn btn-primary text-right">Open</a>
                    </div>
                </div> -->
                <div class="card text-white bg-dark m-3" style="max-width: 18rem;">
                    <div class="card-header">Reports</div>
                    <div class="card-body">
                        <h5 class="card-title">Employee</h5>
                        <p class="card-text">Here you can view all the employee records and get details about each employee.</p>
                            <a href="EmployeeReport" class="btn btn-primary text-right">Open</a>
                    </div>
                </div>
                <div class="card text-white bg-dark m-3" style="max-width: 18rem;">
                    <div class="card-header">Reports</div>
                    <div class="card-body">
                        <h5 class="card-title">Salary</h5>
                        <p class="card-text">Here you can view all the employee's salary recods and get details about each salary.</p>
                            <a href="AdminSalaryReport" class="btn btn-primary text-right">Open</a>
                    </div>
                </div>
                <!-- <div class="card text-white bg-dark m-3" style="max-width: 18rem;">
                    <div class="card-header">Reports</div>
                    <div class="card-body">
                        <h5 class="card-title">Leave</h5>
                        <p class="card-text">Here you can view all the employee's leave recods and get details about each leave.</p>
                            <a href="leaveReport.html" class="btn btn-primary text-right">Open</a>
                    </div>
                </div> -->
                <div class="card text-white bg-dark m-3" style="max-width: 18rem;">
                    <div class="card-header">Profile</div>
                    <div class="card-body">
                        <h5 class="card-title">Update Profile</h5>
                        <p class="card-text">Here you can update your user details to get the full benefits.</p>
                            <a href="updateProfile.jsp?id=<%=emp.getId() %>" class="btn btn-primary text-right">Open</a>
                    </div>
                </div>
                <div class="card text-white bg-dark m-3" style="max-width: 18rem;">
                    <div class="card-header">Profile</div>
                    <div class="card-body">
                        <h5 class="card-title">Change Password</h5>
                        <p class="card-text">Here you can change your password to keep your account safe.</p>
                            <a href="changePassword.jsp" class="btn btn-primary text-right">Open</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End of AdminDash div -->

    <jsp:include page="footer.html"></jsp:include>


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