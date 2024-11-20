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
    <title>GARIMA'S LOGIN</title>
    <style>
        body {
            text-align: center;
            font-family: Arial, sans-serif;
	    background-color: #FFBBCA;

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
<h1>Login Page</h1>
<form action="password.jsp" method="post">
<label for="ID">ID:</label>
        <input type="text" id="ID" name="ID" placeholder="Enter ID">
	        <br><br>

        <label for="ID">Password:</label>
        <input type="password" id="Password" name="Password" placeholder="Enter Password">
        <br><br>

	<button type="submit">Login</button>
</form>
</body>
</html>
