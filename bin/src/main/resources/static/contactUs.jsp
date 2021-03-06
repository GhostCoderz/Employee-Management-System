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
						<a class="nav-link ms-1 me-1" href="#aboutUs">About Us</a>
						<a class="nav-link ms-1 me-3" href="contactUs.html">Contact Us</a>
						<a class="btn btn-primary me-3 px-4" href="login.jsp"> Login </a>
					</div>
				</div>
			</div>
		</nav>
	</div>
	<!-- End of Navigation Div -->

    <!-- Contact Us Form Div -->
    <div class="container pt-4">
        <div class="row m-5 justify-content-center">
          <h1 class="text-center pb-3">Contact Us</h1>
          <hr>
            <form required id="form" class="m-3 mt-4 col-md-10 text-center" onfocus="insertBorder()" action="ContactUs" method="POST" >
                <div class="row">
                    <div class="col-lg-12 mb-3">
                        <h1 class="text-center pb-2">Contact Us Form</h1>
                    </div>
                    <div required id="msg" class="mb-3 col-lg-6 p-3">
                        <img src="assets/image/Team1.jpeg" class="img-fluid rounded" alt="Image" width="300px"><br><br>
						<div class="info">
							<h1>Contact us here</h1>
							<h5>- EMP Team</h5>
						</div>
                    </div>
                    <div class="col-lg-6">
                        <div class="m-3 pe-4">
                            <label for="Name" class="form-label">Name</label>
                            <input type="text" class="form-control" required id="Name" placeholder="Name" name="name">
                        </div>
                        <div class="m-3 pe-4">
                            <label for="Email" class="form-label">Email</label>
                            <input type="email" class="form-control" required id="Email" aria-describedby="emailHelp" name="email" placeholder="Empolyee Id">
                        </div>
                        <div class="m-3 pe-4">
                            <label for="Message" class="form-label">Message</label>
                            <textarea rows="5" class="form-control" required id="Message" placeholder="Message name="message"></textarea>
                        </div>
                        <div class="text-center pe-4">
                            <button type="submit" class="btn btn-primary mt-3 ">Submit</button>
                        </div>
                    </div>
                </div>
              </form>
        </div>
    </div>
    <!-- End of Contact Us Form Div -->

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