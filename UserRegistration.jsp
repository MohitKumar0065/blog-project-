

<%-- 
    Document   : User
    Created on : 28-Jun-2024, 6:13:37 am
    Author     : samresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><pre>
        <h1>User  login Student!</h1>
    <form action="UserServlet" method="post">
        
        Name:            <input type="text"name="username"placeholder="Enter your name"><br>
        Email:           <input type="email"name="email"placeholder="Email"><br>
        Password:        <input type="password"name="password"placeholder="Password"><br>
        Confirm Password:<input type="password"nmae="Confirm_password"placeholder="Confirm Password"><br>
        Upload Image:    <input type="file"name="image"><br>
                         <button type="submit">submit</button>
    
    
</form>
        </pre>
    </center>
    </body>
</html>
