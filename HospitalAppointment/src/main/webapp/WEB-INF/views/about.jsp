<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

.header {
	background-color: #333;
	color: #fff;
	text-align: center;
	padding: 10px;
	position: relative;
}

/* Style for SignIn and SignUp buttons */
.header button {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 5px 10px;
	cursor: pointer;
	position: absolute;
	top: 10px;
}

.open-button {
	background-color: #555;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	opacity: 0.8;
	position: fixed;
	bottom: 23px;
	right: 28px;
	width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	border: none;
	background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus
	{
	background-color: #ddd;
	outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
	background-color: #04AA6D;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	width: 100%;
	margin-bottom: 10px;
	opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
	background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
	opacity: 1;
}

/* Adjust the right position for SignUp button */
.header button.signup {
	right: 30px;
	margin-top: 30px;
}

.header button.signin {
	right: 130px;
	margin-top: 30px;
}

/* Add spacing between the buttons */
.header button+button.signup {
	margin-left: 10px;
}

/* Hospital section */
.hospital {
	text-align: center;
	padding: 20px;
}

.facility {
	display: flex;
	justify-content: flex-start;
	align-items: center;
	margin-bottom: 20px;
}

.facility img {
	max-width: 40%;
	height: auto;
	border-radius: 5px;
	margin-right: 20px;
}

.facility p {
	font-size: 18px;
	color: #333;
	text-align: left;
}
</style>
<meta charset="ISO-8859-1">
<title>MSB Hospital</title>
</head>
<body>
	<div class="header">
		<h1>MSB Hospital</h1>

		<button class="signin" onclick="openForm()">LogIn</button>
		<button class="signup">Register</button>
	</div>

	<div class="hospital">
		<h2>Why Choose MSB Healthcare?</h2>
		<p>Established by Dr Prathap C Reddy in 1983, Apollo Healthcare
			has a robust presence across the healthcare ecosystem. From routine
			wellness & preventive health care to innovative life-saving
			treatments and diagnostic services, Apollo Hospitals has touched more
			than 200 million lives from over 120 countries.</p>
		<div class="facility">
			<img src="images/facility1.jpg" alt="Facility 1">
			<p>It has been brought to our notice that some people have
				received emails purporting to offer money for kidney donation and
				misusing the name of Apollo Hospitals.The public in general and
				kidney patients in particular are hereby cautioned that these are
				fake phishing emails and that these mails are neither sent by Apollo
				Hospitals nor is Apollo Hospitals involved in any such scheme. These
				fraudulent and suspicious emails are only a scheme to extract
				payments from gullible individuals by misleading them using the
				names of reputed hospitals.</p>
		</div>
		<div class="facility">
			<p>I added a new section with the class hospital to contain the
				images and descriptions.Inside the hospital section, there are three
				facility divs, each containing an image and a description. You can
				replace "facility1.jpg", "facility2.jpg", and "facility3.jpg" with
				the paths to your actual images and customize the descriptions as
				needed.Each facility's image is styled to be responsive with rounded
				corners, and there is some spacing between the images and
				descriptions.t</p>

			<img src="images/facility2.jpg" alt="Facility 2">
		</div>
		<div class="facility">
			<img src="images/facility3.png" alt="Facility 3">
			<p>I added a new section with the class hospital to contain the
				images and descriptions.Inside the hospital section, there are three
				facility divs, each containing an image and a description. You can
				replace "facility1.jpg", "facility2.jpg", and "facility3.jpg" with
				the paths to your actual images and customize the descriptions as
				needed.Each facility's image is styled to be responsive with rounded
				corners, and there is some spacing between the images and
				descriptions.t</p>
		</div>
	</div>

<center>
	<div class="form-popup" id="myForm">
		<form action="/action_page.php" class="form-container">
			<h1>Login</h1>

			<label for="email"><b>Email</b></label> <input type="text"
				placeholder="Enter Email" name="email" required> <label
				for="psw"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="psw" required>

			<button type="submit" class="btn">Login</button>
			<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
		</form>
	</div>
	</center>

	<script>
		function openForm() {
			document.getElementById("myForm").style.display = "block";
		}

		function closeForm() {
			document.getElementById("myForm").style.display = "none";
		}
	</script>
</body>
</html>
