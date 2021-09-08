<!DOCTYPE html>
<%@page import="pojo.Employee"%>
<%@page import="dao.EmployeeDAO"%>
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
        textarea{
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
			response.sendRedirect("login.html");
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

    <!-- Add Employee Form Div -->
    <div class="container pt-4">
        <div class="row m-5 justify-content-center">
            <h1 class="text-center pb-3">Add Employee</h1>
            <hr>
            <form required id="form" class="m-2 mt-4 col-md-10 text-left" action="AddEmployee" method="POST" >
                <div class="row">
                    <div class="col-md-12 mb-3">
                        <h1 class="text-center pb-2">Add Employee Form</h1>
                    </div>
                    <div class="col-md-2">
                        <div class="m-3 me-1">
                            <label for="salutation" class="form-label ps-2">Salutation</label>
                            <select class="form-select" required id="salutation" name="salutation">
                                <option value="Mr.">Mr.</option>
                                <option value="Mrs.">Mrs.</option>
                                <option value="Miss">Miss</option>
                                <option value="Ms.">Ms.</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="m-3">
                            <label for="FName" class="form-label ps-2">First Name</label>
                            <input type="text" class="form-control" required id="FName" placeholder="First Name" name="fname">
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="m-3">
                            <label for="LName" class="form-label ps-2">Last Name</label>
                            <input type="text" class="form-control" required id="LName" placeholder="Last Name" name="lname">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="m-3">
                            <label for="status" class="form-label ps-2">Status</label>
                            <select class="form-select" required id="status" name="status">
                                <option value="none" selected>-- select one --</option>
                                <option value="Intern">Intern</option>
                                <option value="Manager">Manager</option>
                                <option value="HR">HR</option>
                                <option value="Software Engineer">Software Engineer</option>
                            </select>
                            </div>
                        </div>
                    <div class="col-md-4">
                        <div class="m-3">
                            <label for="department" class="form-label ps-2">Department</label>
                            <select class="form-select" required id="department" name="deptName">
                                <option value="none" selected>-- select one --</option>
                                <option value="Management">Management</option>
                                <option value="Business Development">Business Development</option>
                                <option value="Sales & Marketing">Sales & Marketing</option>
                                <option value="Operations">Operations</option>
                                <option value="Customer Support">Customer Support</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4 ">
                        <div class="form-check m-3">
                            <label class=" form-label" >Gender</label><br>
                            <label class="form-check-label p-2"> <input type="radio" class="form-check-input me-2" name="gender" value="Male" checked>Male</label>
                            <label class="form-check-label p-2 ms-3"><input type="radio" class="form-check-input" name="gender" value="Female">Female</label>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="m-3 col-md-8">
                            <label for="dob" class="form-label ps-2">Date Of Birth</label><br>
                            <input type="date" class="form-control" required id="dob" name="dob">
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="m-3">
                            <label for="Email" class="form-label ps-2">Email</label>
                            <input type="email" class="form-control" required id="Email" aria-describedby="emailHelp"
                                placeholder="Email" name="email">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="m-3">
                            <label for="mobNo" class="form-label ps-2">Mobile No.</label><br>
                            <input type="number" class="form-control" required id="mobNo" placeholder="Mobile" name="empNum">
                        </div>
                    </div>                    
                    <div class="col-md-4">
                        <div class="m-3">
                            <label for="address" class="form-label ps-2">Address</label><br>
                            <textarea class="form-control" required id="address" rows="2" placeholder="Address" name="street"></textarea>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="m-3">
                            <label for="city" class="form-label ps-2">City</label><br>
                            <input type="text" class="form-control" required id="city" placeholder="City" name="city">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="m-3">
                            <label for="state" class="form-label ps-2">State</label><br>
                            <input type="text" class="form-control" required id="state" placeholder="State" name="state">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="m-3">
                            <label for="country" class="form-label ps-2">Nationality</label><br>
                            <select class="form-select"required id="country" name="country">
                                <option value="none" selected>-- Select one --</option>
                                <option value="afghan">Afghan</option>
                                <option value="albanian">Albanian</option>
                                <option value="algerian">Algerian</option>
                                <option value="american">American</option>
                                <option value="andorran">Andorran</option>
                                <option value="angolan">Angolan</option>
                                <option value="antiguans">Antiguans</option>
                                <option value="argentinean">Argentinean</option>
                                <option value="armenian">Armenian</option>
                                <option value="australian">Australian</option>
                                <option value="austrian">Austrian</option>
                                <option value="azerbaijani">Azerbaijani</option>
                                <option value="bahamian">Bahamian</option>
                                <option value="bahraini">Bahraini</option>
                                <option value="bangladeshi">Bangladeshi</option>
                                <option value="barbadian">Barbadian</option>
                                <option value="barbudans">Barbudans</option>
                                <option value="batswana">Batswana</option>
                                <option value="belarusian">Belarusian</option>
                                <option value="belgian">Belgian</option>
                                <option value="belizean">Belizean</option>
                                <option value="beninese">Beninese</option>
                                <option value="bhutanese">Bhutanese</option>
                                <option value="bolivian">Bolivian</option>
                                <option value="bosnian">Bosnian</option>
                                <option value="brazilian">Brazilian</option>
                                <option value="british">British</option>
                                <option value="bruneian">Bruneian</option>
                                <option value="bulgarian">Bulgarian</option>
                                <option value="burkinabe">Burkinabe</option>
                                <option value="burmese">Burmese</option>
                                <option value="burundian">Burundian</option>
                                <option value="cambodian">Cambodian</option>
                                <option value="cameroonian">Cameroonian</option>
                                <option value="canadian">Canadian</option>
                                <option value="cape verdean">Cape Verdean</option>
                                <option value="central african">Central African</option>
                                <option value="chadian">Chadian</option>
                                <option value="chilean">Chilean</option>
                                <option value="chinese">Chinese</option>
                                <option value="colombian">Colombian</option>
                                <option value="comoran">Comoran</option>
                                <option value="congolese">Congolese</option>
                                <option value="costa rican">Costa Rican</option>
                                <option value="croatian">Croatian</option>
                                <option value="cuban">Cuban</option>
                                <option value="cypriot">Cypriot</option>
                                <option value="czech">Czech</option>
                                <option value="danish">Danish</option>
                                <option value="djibouti">Djibouti</option>
                                <option value="dominican">Dominican</option>
                                <option value="dutch">Dutch</option>
                                <option value="east timorese">East Timorese</option>
                                <option value="ecuadorean">Ecuadorean</option>
                                <option value="egyptian">Egyptian</option>
                                <option value="emirian">Emirian</option>
                                <option value="equatorial guinean">Equatorial Guinean</option>
                                <option value="eritrean">Eritrean</option>
                                <option value="estonian">Estonian</option>
                                <option value="ethiopian">Ethiopian</option>
                                <option value="fijian">Fijian</option>
                                <option value="filipino">Filipino</option>
                                <option value="finnish">Finnish</option>
                                <option value="french">French</option>
                                <option value="gabonese">Gabonese</option>
                                <option value="gambian">Gambian</option>
                                <option value="georgian">Georgian</option>
                                <option value="german">German</option>
                                <option value="ghanaian">Ghanaian</option>
                                <option value="greek">Greek</option>
                                <option value="grenadian">Grenadian</option>
                                <option value="guatemalan">Guatemalan</option>
                                <option value="guinea-bissauan">Guinea-Bissauan</option>
                                <option value="guinean">Guinean</option>
                                <option value="guyanese">Guyanese</option>
                                <option value="haitian">Haitian</option>
                                <option value="herzegovinian">Herzegovinian</option>
                                <option value="honduran">Honduran</option>
                                <option value="hungarian">Hungarian</option>
                                <option value="icelander">Icelander</option>
                                <option value="indian">Indian</option>
                                <option value="indonesian">Indonesian</option>
                                <option value="iranian">Iranian</option>
                                <option value="iraqi">Iraqi</option>
                                <option value="irish">Irish</option>
                                <option value="israeli">Israeli</option>
                                <option value="italian">Italian</option>
                                <option value="ivorian">Ivorian</option>
                                <option value="jamaican">Jamaican</option>
                                <option value="japanese">Japanese</option>
                                <option value="jordanian">Jordanian</option>
                                <option value="kazakhstani">Kazakhstani</option>
                                <option value="kenyan">Kenyan</option>
                                <option value="kittian and nevisian">Kittian and Nevisian</option>
                                <option value="kuwaiti">Kuwaiti</option>
                                <option value="kyrgyz">Kyrgyz</option>
                                <option value="laotian">Laotian</option>
                                <option value="latvian">Latvian</option>
                                <option value="lebanese">Lebanese</option>
                                <option value="liberian">Liberian</option>
                                <option value="libyan">Libyan</option>
                                <option value="liechtensteiner">Liechtensteiner</option>
                                <option value="lithuanian">Lithuanian</option>
                                <option value="luxembourger">Luxembourger</option>
                                <option value="macedonian">Macedonian</option>
                                <option value="malagasy">Malagasy</option>
                                <option value="malawian">Malawian</option>
                                <option value="malaysian">Malaysian</option>
                                <option value="maldivan">Maldivan</option>
                                <option value="malian">Malian</option>
                                <option value="maltese">Maltese</option>
                                <option value="marshallese">Marshallese</option>
                                <option value="mauritanian">Mauritanian</option>
                                <option value="mauritian">Mauritian</option>
                                <option value="mexican">Mexican</option>
                                <option value="micronesian">Micronesian</option>
                                <option value="moldovan">Moldovan</option>
                                <option value="monacan">Monacan</option>
                                <option value="mongolian">Mongolian</option>
                                <option value="moroccan">Moroccan</option>
                                <option value="mosotho">Mosotho</option>
                                <option value="motswana">Motswana</option>
                                <option value="mozambican">Mozambican</option>
                                <option value="namibian">Namibian</option>
                                <option value="nauruan">Nauruan</option>
                                <option value="nepalese">Nepalese</option>
                                <option value="new zealander">New Zealander</option>
                                <option value="ni-vanuatu">Ni-Vanuatu</option>
                                <option value="nicaraguan">Nicaraguan</option>
                                <option value="nigerien">Nigerien</option>
                                <option value="north korean">North Korean</option>
                                <option value="northern irish">Northern Irish</option>
                                <option value="norwegian">Norwegian</option>
                                <option value="omani">Omani</option>
                                <option value="pakistani">Pakistani</option>
                                <option value="palauan">Palauan</option>
                                <option value="panamanian">Panamanian</option>
                                <option value="papua new guinean">Papua New Guinean</option>
                                <option value="paraguayan">Paraguayan</option>
                                <option value="peruvian">Peruvian</option>
                                <option value="polish">Polish</option>
                                <option value="portuguese">Portuguese</option>
                                <option value="qatari">Qatari</option>
                                <option value="romanian">Romanian</option>
                                <option value="russian">Russian</option>
                                <option value="rwandan">Rwandan</option>
                                <option value="saint lucian">Saint Lucian</option>
                                <option value="salvadoran">Salvadoran</option>
                                <option value="samoan">Samoan</option>
                                <option value="san marinese">San Marinese</option>
                                <option value="sao tomean">Sao Tomean</option>
                                <option value="saudi">Saudi</option>
                                <option value="scottish">Scottish</option>
                                <option value="senegalese">Senegalese</option>
                                <option value="serbian">Serbian</option>
                                <option value="seychellois">Seychellois</option>
                                <option value="sierra leonean">Sierra Leonean</option>
                                <option value="singaporean">Singaporean</option>
                                <option value="slovakian">Slovakian</option>
                                <option value="slovenian">Slovenian</option>
                                <option value="solomon islander">Solomon Islander</option>
                                <option value="somali">Somali</option>
                                <option value="south african">South African</option>
                                <option value="south korean">South Korean</option>
                                <option value="spanish">Spanish</option>
                                <option value="sri lankan">Sri Lankan</option>
                                <option value="sudanese">Sudanese</option>
                                <option value="surinamer">Surinamer</option>
                                <option value="swazi">Swazi</option>
                                <option value="swedish">Swedish</option>
                                <option value="swiss">Swiss</option>
                                <option value="syrian">Syrian</option>
                                <option value="taiwanese">Taiwanese</option>
                                <option value="tajik">Tajik</option>
                                <option value="tanzanian">Tanzanian</option>
                                <option value="thai">Thai</option>
                                <option value="togolese">Togolese</option>
                                <option value="tongan">Tongan</option>
                                <option value="trinidadian or tobagonian">Trinidadian or Tobagonian</option>
                                <option value="tunisian">Tunisian</option>
                                <option value="turkish">Turkish</option>
                                <option value="tuvaluan">Tuvaluan</option>
                                <option value="ugandan">Ugandan</option>
                                <option value="ukrainian">Ukrainian</option>
                                <option value="uruguayan">Uruguayan</option>
                                <option value="uzbekistani">Uzbekistani</option>
                                <option value="venezuelan">Venezuelan</option>
                                <option value="vietnamese">Vietnamese</option>
                                <option value="welsh">Welsh</option>
                                <option value="yemenite">Yemenite</option>
                                <option value="zambian">Zambian</option>
                                <option value="zimbabwean">Zimbabwean</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="m-3">
                            <label for="pin" class="form-label ps-2">Pincode</label><br>
                            <input type="number" class="form-control" required id="pin" placeholder="Pincode" name="pin">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 d-flex flex-row-reverse">
                        <div class="m-3 me-1">
                            <input type="submit" class="btn btn-primary" value="Add Employee">
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
					<p class="ps-4 footerLink">
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