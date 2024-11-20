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
 	     background-color:#FFBBCA;
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
    <h1>FORM DETAILS</h1>
	<form action="welcomenew.jsp" method="post">
<%
String EMPLOYEEID = request.getParameter("EmployeeID");
String FirstName = request.getParameter("FirstName");
String LastName = request.getParameter("LastName");
String gender = request.getParameter("Gender");
String dob = request.getParameter("birthday");
String bloodgp = request.getParameter("BloodGroup");
String email = request.getParameter("email");
String phoneno = request.getParameter("Phoneno");
String FATHNAME = request.getParameter("FATHName");
String MOTHNAME = request.getParameter("MOName");
String address = request.getParameter("Address");
String dept = request.getParameter("DEPT");
String desgn = request.getParameter("Desgn");
String rmn = request.getParameter("RMName");
String JT = request.getParameter("JT");
String doj = request.getParameter("doj");
    
session.setAttribute("FirstName", FirstName);
 session.setAttribute("LastName", LastName);  

  
  	
	int srno = 0;
             int flag = 0; 
             Connection conn  = null;
			 
		Class.forName("oracle.jdbc.driver.OracleDriver");
		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());	
	        conn =DriverManager.getConnection("jdbc:oracle:thin:@(DESCRIPTION =    (ADDRESS_LIST =   (ADDRESS = (PROTOCOL = TCP)(HOST=10.10.53.216)(PORT = 1521)) (ADDRESS = (PROTOCOL = TCP)(HOST=nfldb1-nod-vir)(PORT = 1521)))  (CONNECT_DATA = (SERVICE_NAME = orcl)) )","nflapp","nflapp");
 PreparedStatement psret1 = null;
 PreparedStatement psret = null;



Statement stmt=conn.createStatement();
String psn1 = ("insert into GARIMA_EMPLOYEEMASTER(emp_id,first_name,last_name,gender,dob,blood_group,email_id,phone_no,father_name,mother_name,address,department,designation,reporting_manager,job_title,hiring_date) values('"+EMPLOYEEID+"','"+FirstName+"','"+LastName+"','"+gender+"',to_date('"+dob+"','YYYY-MM-DD'),'"+bloodgp+"','"+email+"','"+phoneno+"','"+FATHNAME+"','"+MOTHNAME+"','"+address+"','"+dept+"','"+desgn+"','"+rmn+"','"+JT+"',to_date('"+doj+"','YYYY-MM-DD'))");


//out.println(psn1);

   stmt.executeUpdate(psn1);
    
%>
<h2>EMPLOYEE DETAILS</h2>

<TABLE>
<table border=1>
<tr>
<td> Employee ID</td>
<td><%=EMPLOYEEID%></td>
</tr>
<tr>
<td>First Name</td>
<td><%=FirstName%></td>
</tr>
<tr>
<td>Last Name</td>
<td><%=LastName%></td>
</tr>
<tr>
<td>Gender</td>
<td><%=gender%></td>
</tr>
<tr>
<td>DOB</td>
<td><%=dob%></td>
</tr>
<tr>
<td>Blood Group</td>
<td><%=bloodgp%></td>
</tr>
<tr>
<td>Email</td>
<td><%=email%></td>
</tr>
<tr>
<td>Phone no</td>
<td><%=phoneno%></td>
</tr>
<tr>
<td>Father Name</td>
<td><%=FATHNAME%></td>
</tr>
<tr>
<td>Mother Name</td>
<td><%=MOTHNAME%></td>
</tr>
<tr>
<td>Address</td>
<td><%=address%></td>
</tr>
<tr>
<td>Department</td>
<td><%=dept%></td>
</tr>
<tr>
<td>Designation</td>
<td><%=desgn%></td>
</tr>
<tr>
<td>Reporting Manager Name</td>
<td><%=rmn%></td>
</tr>
<tr>
<td>Job Title</td>
<td><%=JT%></td>
</tr>
<tr>
<td>Hiring Date</td>
<td><%=doj%></td>
</tr>

</table>


<%
String EMPLOYEE_ID = request.getParameter("EmployeeID");
String BP= request.getParameter("BP");
String DA= request.getParameter("DA");
String HRA= request.getParameter("HRA");
String TA= request.getParameter("TA");
String SA= request.getParameter("SA");
String PF= request.getParameter("PF");
String TDS= request.getParameter("TDS");
String NP = request.getParameter("NetPay");
String month = request.getParameter("month");


String psn2 = ("insert into GARIMA_SALARYMASTER(emp_id,basic_pay,da,hra,ta,sa,pf,tds,net_pay,month) values('"+EMPLOYEE_ID+"','"+BP+"','"+DA+"','"+HRA+"','"+TA+"','"+SA+"','"+PF+"','"+TDS+"','"+NP+"',TO_CHAR(TO_DATE('"+month+"', 'YYYY-MM'), 'MON-YY'))");

stmt.executeUpdate(psn2);
    

%>
<h2>SALARY DETAILS</h2>

<TABLE>
<table border=1>

<tr>
<td> Employee_ID</td>
<td><%=EMPLOYEEID%></td>
</tr>
<tr>
<td>Basic Pay</td>
<td><%=BP%></td>
</tr>
<tr>
<td>DA</td>
<td><%=DA%></td>
</tr>
<tr>
<td>HRA</td>
<td><%=HRA%></td>
</tr>
<tr>
<td>TA</td>
<td><%=TA%></td>
</tr>
<tr>
<td>SA</td>
<td><%=SA%></td>
</tr>
<tr>
<td>PF</td>
<td><%=PF%></td>
</tr>
<tr>
<td>TDS</td>
<td><%=TDS%></td>
</tr>
<tr>
<td>Net Pay</td>
<td><%=NP%></td>
</tr>
<tr>
<td>Month</td>
<td><%=month%></td>
</tr>
</table>

<%
String empid = request.getParameter("EmployeeID");
String LEAVE= request.getParameter("Leave");
String LB= request.getParameter("LEAVEBAL");
String Month= request.getParameter("month");

String psn3 = ("insert into GARIMA_LEAVEMASTER(emp_id,type_of_leave,leave_balance,month) values('"+empid+"','"+LEAVE+"','"+LB+"',TO_CHAR(TO_DATE('"+month+"', 'YYYY-MM'), 'MON-YY'))");

stmt.executeUpdate(psn3);

%>
<h2>LEAVE DETAILS</h2>

<TABLE>
<table border=1>
<tr>
<td>EmployeeID</td>
<td><%=empid%></td>
</tr>

<tr>
<td> Type Of Leave</td>
<td><%=LEAVE%></td>
</tr>

<tr>
<td>Leave Balance</td>
<td><%=LB%></td>
</tr>

<tr>
<td> Month</td>
<td><%=Month%></td>
</tr>
</table>
<BR>

<input type="submit" value="Submit">

</body>
</html>