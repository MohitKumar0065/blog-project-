
<%-- 
    Document   : dashboard
    Created on : 28-Jun-2024, 6:28:09 pm
    Author     : samresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.blog.Entity.Blog" %>
<%@page import="com.blog.Dao.BlogDao" %>
<%@page import="com.blog.Helper.ProductFactory" %>
<%@page import="java.util.*" %>        
<!DOCTYPE html>
<html>
    <head>
              

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
       <style>
           body{
               background-image: url("../img/download.jpg");
               background-size: cover;
           }
           .card-body{
               background-image: url("../img/child.jpg");
           }
        
       </style>
       
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
    <center><h1>Welcome to Admin Panel !</h1></center>
    
       <div class="row">
           <div class="col-md-4">
               <a>
              <div class="card" style="width: 18rem;">
        <div class="card-body">
            <center> <a href="../blog.jsp"class="btn btn-primary">Add Blog</a></center>
  </div>
</div>
               </a>
               
</div>
          <div class="col-md-4">
              <div class="card" style="width: 18rem;">
                 <!-- <img src="../img/academy.jpg" class="card-img-top" alt="...">-->
  <div class="card-body">
      <center><a href="../Update.jsp"class="btn btn-primary">update</a></center>
 
  </div>
</div>
</div>
          <div class="col-md-4">
               
              <div class="card" style="width: 18rem;">
               
       
                  
                  <!--<img src="../img/academy.jpg" class="card-img-top" alt="..."> -->
 <div class="card-body">
      <%
         BlogDao bd=new BlogDao(ProductFactory.getFactory());
         List<Blog> l=bd.showBlog();
        
        %>
        
        
          <%  for(Blog s:l){
          %>
          
          <center> <a href="../DeleteBlog?id=<%=s.getId()%>"class="btn btn-primary">Delete</a></center>
  <%}%>
        
  </div>
</div>
</div>
    
                 
       </div>
       
            
            
            
            
     
       
     
       
       
       
        
          
    
                  
       
              
    
    
       
      
        
             
    </body>
</html>
