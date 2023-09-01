<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DoctorDetails</title>
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
}

.product-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	max-width: 900px;
	margin: 20px auto;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.product {
	width: 30%;
	margin-bottom: 20px;
	padding: 10px;
	border: 1px solid #ccc;
	text-align: center;
	background-color: #fff;
	transition: transform 0.2s, box-shadow 0.2s;
}

.product:hover {
	transform: translateY(-5px);
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	color: #797;
}

.product img {
	max-width: 60%;
	height: auto;
}

.product h3 {
	margin-top: 10px;
	font-size: 18px;
	color: #333;
}

.product p {
	color: #777;
}
</style>
</head>
<body>
	<div class="header">
		<h1>MSB Hospital</h1>
	</div>
	<%
	String doc_name = request.getParameter("name");
	String doc_id = request.getParameter("id");
	String doc_img = request.getParameter("img");
	String doc_spec = request.getParameter("spec");
	String doc_exp = request.getParameter("exp");
	String doc_qual = request.getParameter("qual");
	%>
    <center><br><br><br>
	<div class="product">
		<img src="images/<%=doc_img%>" alt=<%=doc_name%>>
		<h3>
			Name:<%=doc_name%></h3>
		<h3>
			Id:<%=doc_id%></h3>
		<h3>
			Specialization:<%=doc_spec%></h3>
		<h3>
			Experience:<%=doc_exp%></h3>
		<h3>
			Qualification:<%=doc_qual%></h3>
			<form action="CheckSlots" method="get">
			<input type="hidden" name="doc_id" value="<%=doc_id%>">
        <input type="submit" name="Check_Slots">
        </form>
	</div>
	</center>
</body>
</html>