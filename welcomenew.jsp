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


<html>
<head>
    <title>Welcome Page</title>
<style>
        body {
            text-align: center;
            font-family: Arial, sans-serif;
	    background-color:#B4F8C8;

        }
        h1 {
            font-weight: bold;
            text-decoration: underline;
        }
</style>
</head>
<body>
    <h1>Welcome!</h1>
    
    
    <% String FirstName = (String) session.getAttribute("FirstName"); %>
    <% String LastName = (String) session.getAttribute("LastName"); %>
    
    
    <p>Welcome, <%= FirstName %> <%= LastName %>!</p>
</body>
</html>
