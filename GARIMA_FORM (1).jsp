<!DOCTYPE html>
<!DOCTYPE html>
<%@ page language="java" session="true"%>
<%@ page import="java.math.*" %>

<%@ page contentType="text/html" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.* "%>
<%@ page import="java.lang.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>

<html lang="en">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GARIMA'S FORM</title>
    <style>
        body {
            text-align: center;
            font-family: Arial, sans-serif;
	    background-color: #A0E7E5;

        }
        h1 {
            font-weight: bold;
            text-decoration: underline;
        }
        h2 {
            font-weight: bold;
        }
        table {
            margin: 0 auto;
            border-collapse: collapse;
        }
        td {
            padding: 10px;
        }
    </style>

</head>
<body>

    <h1>Employee Form</h1>
    <form action="abc_new.jsp" method="post">
        <label for="ID">Employee ID:</label>
        <input type="text" id="EmployeeID" name="EmployeeID" placeholder="Enter Employee ID">
        <br><br>

        <label for="ID">First Name:</label>
        <input type="text" id="FirstName" name="FirstName"placeholder="Enter First Name">
        <br><br>

        <label for="ID">Last Name:</label>
        <input type="text" id="LastName" name="LastName"placeholder="Enter Last Name">
        <br><br>

        <label for="Gender">Gender:</label>
        <select id="Gender" name="Gender">
            <option value="M">Male</option>
            <option value="F">Female</option>
            <option value="O">Others</option>
        </select>
	<br><br>

	<label for="birthday">Date Of Birth:</label>
        <input type="date" id="birthday" name="birthday"placeholder="Enter Date Of Birth">
        <br><br>

	 <label for="Blood Gp">Blood Group:</label>
        <select id="BloodGroup" name="BloodGroup">
            <option value="A+">A+</option>
            <option value="A-">A-</option>
            <option value="AB">AB</option>
            <option value="B+">B+</option>
	    <option value="B-">B-</option>
            <option value="O+">O+</option>
	    <option value="O-">O-</option>
        </select>
        <br><br>

	<label for="email">Email:</label>
        <input type="email" id="email" name="email"placeholder="Enter Email ID">
        <br><br>
        
        <label for="tel">Phoneno:</label>
        <input type="tel" id="Phoneno" name="Phoneno"placeholder="Enter Phone No.">
        <br><br>

 
        <label for="FN">Father's Name:</label>
        <input type="text" id="FATHName" name="FATHName"placeholder="Enter Father's Name">
        <br><br>

        <label for="MN">Mother's Name:</label>
        <input type="text" id="MOName" name="MOName"placeholder="Enter Mother's Name">
        <br><br>

	<label for="Address">Address:</label>
        <input type="text" id="Address" name="Address"placeholder="Enter Address">
        <br><br>

	

	<label for="Dept">Department:</label>
        <select id="DEPT" name="DEPT">
            <option value="IT">IT</option>
            <option value="CS">CS</option>
            <option value="HR">HR</option>
            <option value="Legal">Legal</option>
	    <option value="Finance">Finance</option>
            <option value="Material">Material</option>
	    <option value="Others">Others</option>
        </select>
        <br><br>

	<label for="Desgn">Designation:</label>
        <select id="Desgn" name="Desgn">
            <option value="Intern">Intern</option>
            <option value="CM">CM</option>
            <option value="GM">GM</option>
            <option value="Manager">Manager</option>
	    <option value="AM">AM</option>
            <option value="SM">SM</option>
	    <option value="HOD">HOD</option>
	    <option value="Others">Others</option>
	</select>
        <br><br>

	<label for="RMN">Reporting Manager's Name</label>
        <input type="text" id="RMName" name="RMName"placeholder="Enter Reporting Manager's Name">
        <br><br>

	<label for="JT">Job Title</label>
        <input type="text" id="JT" name="JT"placeholder="Enter Job Title">
        <br><br>

	<label for="DOJ">Date Of Joining:</label>
        <input type="date" id="doj" name="doj"placeholder="Enter Date Of Joining">
        <br><br>


	<h1>Salary Form</h1>
	
	<label for="ID">Employee ID:</label>
        <input type="text" id="EmployeeID" name="EmployeeID"placeholder="Enter Employee ID">
        <br><br>

	<label for="BP">Basic Pay:</label>
        <input type="text" id="BP" name="BP"placeholder="Enter Basic Pay">
        <br><br>

	<label for="DA">DA:</label>
        <input type="text" id="DA" name="DA"placeholder="Enter DA">
        <br><br>

	<label for="HRA">HRA:</label>
        <input type="text" id="HRA" name="HRA"placeholder="Enter HRA">
        <br><br>

	<label for="TA">TA:</label>
        <input type="text" id="TA" name="TA"placeholder="Enter TA">
        <br><br>

	<label for="SA">SA:</label>
        <input type="text" id="SA" name="SA"placeholder="Enter SA">
        <br><br>

	<label for="PF">PF:</label>
        <input type="text" id="PF" name="PF"placeholder="Enter PF">
        <br><br>

	<label for="TDS">TDS:</label>
        <input type="text" id="TDS" name="TDS"placeholder="Enter TDS">
        <br><br>
	
	<label for="NP">Net Pay:</label>
        <input type="text" id="NetPay" name="NetPay"placeholder="Enter Net Pay">
        <br><br>

	<label for="M">Month:</label>
        <input type="month" id="month" name="month"placeholder="Enter Month">
        <br><br>
	

	<h1>Leave Form</h1>

	<label for="ID">Employee ID:</label>
        <input type="text" id="EmployeeID" name="EmployeeID"placeholder="Enter Employee ID">
        <br><br
	
	<label for="Leave">Type Of Leave:</label>
        <select id="Leave" name="Leave"placeholder="Select Type Of Leave">
            <option value="SL">Sick Leave</option>
            <option value="CL">Casual Leave</option>
            <option value="EL">Earned Leave</option>
            <option value="OL">Other Leave</option>
	</select>
        <br><br>

	<label for="LB">LeaveBalance:</label>
        <input type="text" id="LEAVEBAL" name="LEAVEBAL"placeholder="Enter Leave Balance">
        <br><br>

	<label for="M">Month:</label>
        <input type="month" id="month" name="month"placeholder="Enter Month">
        <br><br>

       <!-- Submit Button -->
        <input type="submit" value="Submit">
	
    </form>
</body>
</html>
