<%-- 
    Document   : index
    Created on : 28-Jun-2024, 6:13:21 am
    Author     : samresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.blog.Entity.Blog" %>
<%@page import="com.blog.Dao.BlogDao" %>
<%@page import="com.blog.Helper.ProductFactory "%>
<%@page import="java.util.*"%>


  

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
       <style>
           body{
               background-image: url("img/mk.jpg");
               background-size: cover;
           }
           .card{
               border: 3px solid black;
               width: 600px;
               height: 400px;
               margin-left: 400px;
               opacity: .7;
               
               
           }
           
           
         
           
       </style>
    
    </head>
    <body>
        <%@include file="Component/Navbar.jsp" %>
        
        <%
         BlogDao bd=new BlogDao(ProductFactory.getFactory());
        List<Blog> l=bd.showBlog();
        
        %>
        
        
          <% 
               for(Blog s:l){
          %>
          
                  
  <div class="card">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
      <h2>  <%= s.getBlog_title()%> </h2>
      <p ><h4><%= s.getBlog_content()%>  </h4></p>
     <h5> <%= s.getCreatedby()%>  </h5>
        <h5>  <%= s.getComments()%>  </h5>
    <!--<a href="#" class="btn btn-primary">Go somewhere</a>-->
  </div>
</div>
      
    
  <%}%>
        
         
    
                  
       
              
    
    
       
      
        
        
       
     
       
       
    </body>
</html>
