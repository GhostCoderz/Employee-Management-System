<%@page import="pojo.Salary"%>
<%@page import="java.util.List"%>
<%@page import="dao.SalaryDAO"%>
<%@page import="dao.EmployeeDAO"%>
<%@page import="pojo.Employee"%>
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
</head>

<body>

    <%
	
		Employee emp=null;
	
		//Checking for null values
		if(session.getAttribute("userObj")==null)
		{
			response.sendRedirect("login.jsp");
		}
		else
		{
			emp=(Employee) session.getAttribute("userObj");
			String str[]=emp.getEmpName().split(" ");
			String firstName=str[0];
	
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
						<a class="btn btn-primary me-3" href="Dashboard"> Hi, <%= firstName %> </a>
						<a class="btn btn-primary me-3" href="Logout"> <i class="fas fa-sign-out-alt"></i> Logout </a>
					</div>
				</div>
			</div>
		</nav>
	</div>
	<!-- End of Navigation Div -->
	<%
	
			SalaryDAO sdao=new SalaryDAO();
			List<Salary> salList=sdao.getAllSalary(emp.getId());
	
	%>

	<!-- Salary Report div -->
	<div class="container pt-4">
        <div class="row align-self-center  justify-content-center mt-5 mb-3" required id="login">
          <h1 class="text-center pb-2">Salary Report</h1>
		  <form class="d-flex col-md-8 mb-3">
			<input class="form-control me-2" type="search" placeholder="Search by name" aria-label="Search" name="nameSearch">
			<div class="col-md-4 me-3">
				<input class="form-control me-2" type="search" placeholder="Search by id" aria-label="Search" name="idSearch">
			</div>
			<button class="btn btn-outline-success m" type="submit">Search</button>
		  </form>
          <hr>
        </div>
		<table class="table table-striped table-dark table-hover text-center">
			<thead>
				<tr>
					<td>Sr. no</td>
					<td>Month</td>
					<td>Year</td>
                    <td>Amount</td>
				</tr>
			</thead>
			<tbody>
			
			<%
			
					if(salList==null)
					{
						
			%>						
					
					<tr>
					<td colspan="4">No records found</td>
					</tr>
						
			<%						
						
					}
					else
					{
						for(int i=0;i<salList.size();i++)
						{
							
							Salary s=salList.get(i);
			
			%>
			
				<tr>
					<td><%=i+1 %></td>
					<td><%=s.getMonth() %></td>
					<td><%=s.getYear() %></td>
                    <td><%=s.getAmount() %></td>
				</tr>
				
			<%
			
						}
					}
				}
			
			%>
				
			</tbody>
		</table>
	</div>
	<!-- End of Salary Report div -->

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