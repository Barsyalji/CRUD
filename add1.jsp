<%-- 
    Document   : add1
    Created on : Mar 30, 2023, 6:09:06 PM
    Author     : atul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
>
         <%
   try
   {
                String a = request.getParameter("name");
                String b =   request.getParameter("number");
                String c =   request.getParameter("email");
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/java";
                    
       String username="root";
       String password="";
      String as="insert into form (name,number,email)values ('"+a+"','"+b+"','"+c+"' )";
       Connection conn=DriverManager.getConnection(url, username, password);
       // Statement stmt=conn.createStatement();
         PreparedStatement st = conn.prepareStatement(as);
                     st.executeUpdate();
     //  ResultSet rs=stmt.executeQuery(query);
     
       response.sendRedirect("http://localhost:8080/Crud1/index.jsp");
         
   
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
    </body>
</html>
