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
        <title>JSP Page</title>
          <link rel="stylesheet" type="text/css" href="add.css"/>
    </head>
    <body>  
        <a href="index.jsp"><h1>home</h1></a>
        <form method="post" action="add1.jsp">
            Name <input type="text" name="name" placeholder="Name"><!-- comment -->
    Number <input type="text" name="number" placeholder="Number"><!-- comment -->
    Email <input type="email" name="email" placeholder="Email"><!-- comment -->
      <input type="submit" name="submit"value="Add Data">
     
 
   
  
</form>`

    </body>
</html>
