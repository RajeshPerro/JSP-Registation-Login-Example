<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Regjsp</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String name=request.getParameter("name"); 
String email=request.getParameter("email"); 
session.putValue("userid",email);
String password=request.getParameter("password"); 

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp-example",
"dbusername","dbpassword"); 
Statement st= con.createStatement(); 
ResultSet rs; 
//int i=st.executeUpdate("insert into user values ('"+name+"','"+email+"','"+password+"')"); 
int i=st.executeUpdate("INSERT INTO `user`(`name`, `email`, `password`) VALUES ('"+name+"','"+email+"','"+password+"')");

out.println("Registered"); 


%>
<a href ="Login.html">Login</a><br/><br/>
<a href="index.html">Home</a>
</body>
</html>