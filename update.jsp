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
      
       <%
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/java";
                    
       String username="root";
       String password="";
     
     
       
       String query="select * from form where id = '"+id+"'";
       Connection conn=DriverManager.getConnection(url, username, password);
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       while(rs.next()) 
       {
              
       String   name = rs.getString("name");
         String  number = rs.getString("number"); 
        String  email = rs.getString("email");
           
   %>
      
            <a href="index.jsp"><h1>home</h1></a>
        <form method="post" action="update1.jsp">
            id <input type="text" name="id" placeholder="id"value="<%=id%>">
            Name <input type="text" name="name" placeholder="Name"value="<%=name%> "> comment 
            Number <input type="text" name="number" placeholder="Number"value="<%=number%> "> comment 
            Email <input type="email" name="email" placeholder="Email"value=" <%=email%>"> comment 
      <input type="submit" name="submit"value="Update Data">
      </form>
    <%       }
      
        
        rs.close();
        stmt.close();
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %> 
          
    </body>
</html>
