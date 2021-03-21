<%-- 
    Document   : delete
    Created on : Jan 5, 2021, 2:15:15 PM
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
        <title>Delete Page</title>
    </head>
    <body>
       <% 
           int id=Integer.parseInt(request.getParameter("id"));
           
           String query="Delete from patient where id=?";
           
               Connection con=MyConnection.getConnection();
               
            PreparedStatement ps=con.prepareStatement(query);
            
            ps.setInt(1, id);
            
            int i=ps.executeUpdate();
            
           if(i>0)
          {
          out.println("<script>alert('User Deleted Successfully...!!!')</script>");    
          response.sendRedirect("viewrecords.jsp");
          }
           else
          {
             out.println("<script>alert('User Not Deleted Pls Try Again :-( )</script>");
             response.sendRedirect("error.jsp");
         }
          
            

       
       
       
       %>
    </body>
</html>
