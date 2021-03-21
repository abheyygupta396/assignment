<%-- 
    Document   : update1
    Created on : Mar 21, 2021, 11:01:02 PM
    Author     : Abhey Gupta
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conn.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="registerhead.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
    
       
        <% 
        
        int id=Integer.parseInt(request.getParameter("id"));
        
           
         Connection con = MyConnection.getConnection();
        String query="select * from patient where id=?";
        PreparedStatement ps=con.prepareStatement(query);
        
        ps.setInt(1, id);
        
        ResultSet rs=ps.executeQuery();
        
        if(rs.next())
        {
        
        %>          
     <body>   
         <div class="container mt-3" style="width: 50%; background-color: whitesmoke;">
    <form action="update2.jsp" method="post">
     <p class="text-center" style="font-size: 20px;">Update Form</p>

      <div class="mb-1">
    <label for="exampleInputEmail1" class="form-label">Id</label>
    <input type="text" value="<%= rs.getString(1)%>" required="" name="id" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
     
    <div class="mb-1">
    <label for="exampleInputEmail1" class="form-label">Name</label>
    <input type="text" value="<%= rs.getString(2)%>" required="" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  
  <div class="mb-1">
    <label for="exampleInputEmail1" class="form-label">Address</label>
    <input type="text" value="<%= rs.getString(3)%>" required="" name="address" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  
    <div class="mb-1">
    <label for="exampleInputEmail1" class="form-label">Email</label>
    <input type="email" value="<%= rs.getString(4)%>" name="email" required="" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  
  <div class="mb-1">
    <label for="exampleInputEmail1" class="form-label">Phone</label>
    <input type="text" name="phone" value="<%= rs.getString(5)%>" required="" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
     
<div class="mb-1">
    <label for="exampleInputEmail1" class="form-label">Password</label>
    <input type="password" name="password" value="<%= rs.getString(6)%>" required="" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
    
  <div align="center" class="py-2">
         <button type="submit" class="btn btn-primary">Update</button>
     </div>
     
     <% } 
      
     %>
  
</form>
  </body>
       
        
 
</html>

