<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="model.Doctor"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.0.min.js"></script>
<script src="Components/doctors.js"></script>
</head>
<body>
	<h1>Doctor Management</h1>



	<form id="formDoctor" name="forDoctor" method="post" action="Doctor.jsp">
		Doctor Name : <input id="Rdoctor_name" name="Rdoctor_name" type="text"
			class="form-control form-control-sm"> <br> Doctor Address : <input
			id="Rdoctor_address" name="Rdoctor_address" type="text"
			class="form-control form-control-sm"> <br> Specilaization : <input
			id="Rdoctor_specilaization" name="Rdoctor_specilaization" type="text" class="form-control form-control-sm">
		<br> Email : <input id="Rdoctor_email" name="Rdoctor_email" type="text"
			class="form-control form-control-sm"> <br> <input
			id="btnSave" name="btnSave" type="button" value="Save"
			class="btn btn-primary"> <input type="hidden"
			id="hidDoctorIDSave" name="hidDoctorIDSave" value="">
	</form>

	<div id="alertSuccess" class="alert alert-success"></div>
	<div id="alertError" class="alert alert-danger"></div>
	<br>
	<div id="divDoctorsGrid">
		<%
			Doctor DoctorObj = new Doctor();
			out.print(DoctorObj.readDoctors());
		%>
	</div>

</body>
</html>