<%@page import="java.util.Iterator"%>
<%@page import="com.ghostcoderz.ems.entity.Employee"%>
<%@page import="java.util.List"%>
<%@page import="dao.EmployeeDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
	
	<%
	
		EmployeeDAO edao=new EmployeeDAO();
		List<Employee> empList=edao.getAllEmployee();
		
		for (Iterator<Employee> iterator = empList.iterator(); iterator.hasNext();) {
		    Employee emp = iterator.next();
		    if(emp.getStatus().equals("Admin")) {
		        iterator.remove();
		    }
		}
	
	%>

	<!-- Add Salary Form Div -->
    <div class="container pt-4">
        <div class="row m-5 justify-content-center">
            <h1 class="text-center pb-3">Add Salary</h1>
            <hr>
            <form required id="form" class="m-2 mt-4 col-md-10 text-left" action="AddSalary" method="POST">
                <div class="row">
                    <div class="col-md-6">
                        <div class="m-3 me-1">
                            <label for="empId" class="form-label ps-2">Employee Code</label>
                            <select type="select" class="form-select" required id="empId" name="empId">
                                <option value="none" selected>-- select one --</option>
                                <%
                                
                                	for(Employee e:empList)
                                	{
                                		
                                %>
                                
                                <option value="<%=e.getId()%>"><%=e.getId()%></option>
                                	
                                <%
                                		
                                	}
                                
                                %>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="m-3">
                            <label for="month" class="form-label ps-2">Month</label>
                            <select type="select" class="form-select" required id="month" name="month">
                                <option selected value=''>--Select Month--</option>
								<option value='Janaury'>Janaury</option>
								<option value='February'>February</option>
								<option value='March'>March</option>
								<option value='April'>April</option>
								<option value='May'>May</option>
								<option value='June'>June</option>
								<option value='July'>July</option>
								<option value='August'>August</option>
								<option value='September'>September</option>
								<option value='October'>October</option>
								<option value='November'>November</option>
								<option value='December'>December</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="m-3">
                            <label for="year" class="form-label ps-2">Year</label>
                            <select type="select" class="form-select" required id="year" name="year">
                                <option value=''>--Select Year--</option>
								<option selected value='2020'>2020</option>
                            </select>
                        </div>                        
                    </div>    
					<div class="col-md-6">
						<div class="m-3">
							<label for="amount" class="form-label ps-2">Amount to be paid</label>
							<input type="number" class="form-control" required id="amount" name="amount">
						</div> 
					</div>           
                </div>
                <div class="row">
                    <div class="col-md-6 d-flex flex-row-reverse">
                        <div class="m-3 me-1">
                            <input type="submit" class="btn btn-primary" value="Save Salary">
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
    <!-- End of Add Salary Form Div -->
    
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