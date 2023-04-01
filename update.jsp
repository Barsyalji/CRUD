<%-- 
    Document   : update
    Created on : Mar 30, 2023, 6:15:13 PM
    Author     : atul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body
        <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

  >     
        
      <%  String id = request.getParameter("id"); %>
      
            <a href="index.jsp"><h1>home</h1></a>
        <form method="post" action="add1.jsp">
            id <input type="text" name="id" placeholder="id">
            Name <input type="text" name="name" placeholder="Name"><!-- comment -->
            Number <input type="text" name="number" placeholder="Number"><!-- comment -->
            Email <input type="email" name="email" placeholder="Email"><!-- comment -->
      <input type="submit" name="submit"value="Update Data">
      </form>
        
          
    </body>
</html>
