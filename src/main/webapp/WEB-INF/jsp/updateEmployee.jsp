<%@page import="com.ghostcoderz.ems.dao.EmployeeDAO"%>
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
    <style>
        #address
        {
        	resize: none;
        }
    </style>

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
						<a class="btn btn-primary me-3" href="Dashboard"> Hi, <%= emp.getEmpName() %> </a>
						<a class="btn btn-primary me-3" href="Logout"> <i class="fas fa-sign-out-alt"></i> Logout </a>
					</div>
				</div>
			</div>
		</nav>
	</div>
	<!-- End of Navigation Div -->
	
	<%
	
		if(request.getParameter("id")==null)
		{
			response.sendRedirect("Dashboard");
		}
		else
		{
			int id=Integer.parseInt(request.getParameter("id"));
			EmployeeDAO edao=new EmployeeDAO();
			Employee e=edao.getEmployeeById(id);
			String str[]=e.getEmpName().split(" ");
			String firstName=str[0];
			String lastName=str[1];
	
	%>

    <!-- Add Employee Form Div -->
    <div class="container pt-4">
        <div class="row m-5 justify-content-center">
            <h1 class="text-center pb-3">Update Employee</h1>
            <hr>
            <form required id="form" class="border border-dark m-2 mt-4 col-md-10 text-left">
                <div class="row">
                    <div class="col-md-2">
                        <div class="m-3 me-1">
                            <label for="salutation" class="form-label ps-2">Salutation</label>
                            <input type="text" class="form-control" required id="salutation" placeholder="First Name" value="<%=e.getSalutation() %>" disabled>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="m-3">
                            <label for="FName" class="form-label ps-2">First Name</label>
                            <input type="text" class="form-control" required id="FName" placeholder="First Name" value="<%=firstName %>" disabled>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="m-3">
                            <label for="LName" class="form-label ps-2">Last Name</label>
                            <input type="text" class="form-control" required id="LName" placeholder="Last Name" value="<%=lastName %>" disabled>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="m-3">
                            <label for="status" class="form-label ps-2">Status</label>
                            <select class="form-select" required id="status">
                                <option value="<%=e.getStatus() %>" selected><%=e.getStatus() %></option>
                                <option value="intern">Intern</option>
                                <option value="manager">Manager</option>
                                <option value="hr">HR</option>
                                <option value="software-eng">Software Engineer</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="m-3">
                            <label for="department" class="form-label ps-2">Department</label>
                            <select class="form-select" required id="department">
                                <option   value="<%=e.getDept() %>" selected><%=e.getDept() %></option>
                                <option value="manage">Management</option>
                                <option value="busiDev">Business Development</option>
                                <option value="sales">Sales & Marketing</option>
                                <option value="operation">Operations</option>
                                <option value="custSupp">Customer Support</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4 ">
                        <div class="form-check m-3">
                            <label for="gender" class="form-label" >Gender</label><br>
                            <input type="text" class="form-control" required id="gender" value="<%=e.getGender() %>" disabled>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="m-3 col-md-8">
                            <label for="dob" class="form-label ps-2">Date Of Birth</label><br>
                            <input type="date" class="form-control"  value="<%=e.getDob() %>" required id="dob" disabled>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="m-3">
                            <label for="Email" class="form-label ps-2">Email</label>
                            <input type="email" class="form-control" required id="Email" aria-describedby="emailHelp" value="<%=e.getEmail() %>">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="m-3">
                            <label for="mobNo" class="form-label ps-2">Mobile No.</label><br>
                            <input type="number" class="form-control" required id="mobNo"  value="<%=e.getEmpNum() %>" disabled>
                        </div>
                    </div>                    
                    <div class="col-md-4">
                        <div class="m-3">
                            <label for="address" class="form-label ps-2">Address</label><br>
                            <textarea class="form-control" required id="address" rows="2" disabled><%=e.getStatus() %></textarea>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="m-3">
                            <label for="city" class="form-label ps-2">City</label><br>
                            <input type="text" class="form-control" required id="city" value="<%=e.getAddr().getCity() %>" disabled>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="m-3">
                            <label for="state" class="form-label ps-2">State</label><br>
                            <input type="text" class="form-control" required id="state" value="<%=e.getAddr().getState() %>" disabled>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="m-3">
                            <label for="country" class="form-label ps-2">Nationality</label><br>
                            <select class="form-select"required id="country" disabled>
                                <option value="<%=e.getAddr().getCity() %>" selected><%=e.getAddr().getCountry() %></option>
                                <option value="afghan">Afghan</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="m-3">
                            <label for="pin" class="form-label ps-2">Pincode</label><br>
                            <input type="number" class="form-control" required id="pin" value="<%=e.getAddr().getPincode() %>" disabled>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 d-flex flex-row-reverse">
                        <div class="m-3 me-1">
                            <input type="submit" class="btn btn-primary" value="Update Employee">
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
    <!-- End of Add Employee Form Div -->
    
    <%
    
		}
    
    %>

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