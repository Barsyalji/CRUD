<%-- 
    Document   : index.jsp
    Created on : Mar 25, 2023, 11:00:40 PM
    Author     : atul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>index of project</title>
    
     <link rel="stylesheet" type="text/css" href="css.css"/>
    </head>
    <body<%@ page import="java.sql.ResultSet" %>
         <%@ page import="java.sql.Statement" %>
         <%@ page import="java.sql.Connection" %>
         <%@ page import="java.sql.DriverManager" %>
>
                    <A href="add data.jsp"> <div>  ADD USER</div></a><br>
    
            <form method="post">
                <table  class="table">
                    <tr>
                         <th>id</th>
                         <th>Name</th>
                         <th> number</th>
                         <th>  email</th>
                         <th colspan="2">remark</th>
                    </tr>
  <%
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/java";
                    
       String username="root";
       String password="";
       String query="select * from form";
       Connection conn=DriverManager.getConnection(url, username, password);
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       while(rs.next()) 
       {
              String id = rs.getString("id");
              String name = rs.getString("name");
              String number = rs.getString("number"); 
              String email = rs.getString("email");
         
   %>
          
            <tr>
                <td><%out.println(id); %></td>
                 <td><%out.println(name); %></td>
                 <td><%out.println(number); %></td>
                  <td><%out.println(email); %></td>
                  <td> <a href="update.jsp?id=<%= id%>" style="color:green"> UPDATE  </a></td>
                     <td> <a href="delete.jsp?id=<%= id%>" style="color:red">DELETE</a></td>
            </tr>

   <%
       }
   %>
   </table>
   <%
        rs.close();
        stmt.close();
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
</form>`

    </body>
</html>
