<%-- 
    Document   : viewrecords
    Created on : Mar 21, 2021, 11:16:51 PM
    Author     : Abhey Gupta
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="conn.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="registerhead.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details page</title>
    </head>
    <body>
        <br>
      <center> <caption class="text-center" style="color: blueviolet;" ><h3>List of Employees</h3></caption> </center>
      <br>
        <div class="container">  
            
           
  <table class="table table-bordered border-primary " >
            
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Address</th>
      <th scope="col">Email</th>
      <th scope="col">Phone</th>
      <th scope="col">Password</th>
      <th scope="col">Registered_Time</th>
      <th scope="col">Operations</th>
     <th scope="col"></th> 
    </tr>
  </thead>
  <tbody>
       
   
    <%
        String query="select * from patient";
        
      
        Connection con=MyConnection.getConnection();
        PreparedStatement ps=con.prepareStatement(query);
        
        
        ResultSet rs=ps.executeQuery();
        
     
 
          
         while(rs.next())
        {
 
  
       %>
        <tr>
        <th scope="row"><%= rs.getInt(1)%></th>
      <td><%= rs.getString(2)%></td>
      <td><%= rs.getString(3)%></td>
      <td><%= rs.getString(4)%></td>
      <td><%= rs.getString(5)%></td>
      <td><%= rs.getString(6)%></td>
      <td><%= rs.getString(7)%></td>
      <td><a href="update1.jsp?id=<%= rs.getInt(1)%>">Update</a></td>
      <td><a href="delete.jsp?id=<%= rs.getInt(1)%>" style="color: red;">Delete</a></td>
    </tr>
    <% }  %>

    </body>
</html>

