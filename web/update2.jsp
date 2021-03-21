<%-- 
    Document   : update2
    Created on : Mar 21, 2021, 11:07:38 PM
    Author     : Abhey Gupta
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="conn.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update method</title>
    </head>
    <body>
       <%
          int id=Integer.parseInt(request.getParameter("id"));
          String name=request.getParameter("name");
          String address=request.getParameter("address");
          String email=request.getParameter("email");
          String phone=request.getParameter("phone");
          String password=request.getParameter("password");
          
       
          Connection con=MyConnection.getConnection();
          
         String query="update patient set name=?, address=?, email=?, phone=?, password=? where id=?";
       //in whatever way you are writing the given fields in query you have to set them in that order only in below ps.set method like id is 1 , but set at 7th place because of query. 
         
          PreparedStatement ps=con.prepareStatement(query);
          ps.setString(1, name);
          ps.setString(2, address);
          ps.setString(3, email);
          ps.setString(4, phone);
          ps.setString(5, password);
         ps.setInt(6, id);

        int i=ps.executeUpdate();
          
          if(i>0)
          {
          out.println("<script>alert('User Updated Successfully...!!!')</script>");    
          response.sendRedirect("viewrecords.jsp");
          }
           else
          {
             out.println("<script>alert('User Not Updated Pls Try Again :-( ')</script>");
             response.sendRedirect("error.jsp");
         }
          
          
       %>
    </body>
</html>

