<%-- 
    Document   : blog
    Created on : 03-Jul-2024, 11:58:26 pm
    Author     : samresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="Component/common_css_js.jsp" %>
        <style>
            body{
                background-image: url("img/academy.jpg");
             
            }
            .input-area{
                background-image: url("img/child.jpg");
                background-image: cover;
                border: 3px solid black;
                height: 500px;
                width: 600px;
                padding: 40px;
                margin-left:500px;
                margin-top: 100px;
           
               
                
                
            }
        </style>
        
         
              

        </style>
    </head>
    <body>
         <div class="input-area">
                        <form action="blogServlet" method="post">
                            <div>
                                <input type="text"size="50"name="blog_title" placeholder="title">
                            </div>
                            <div>
                                <i class="fas fa-envelope"></i>
                                <textarea rows="10" cols="60"name="blog_content">content here</textarea>
                              </div>
                            <div>
                                <input type="text"size="40"name="createdby" placeholder="Created By:">
                            </div>
                            <div>
                                <i class="fas fa-lock"></i>
                                 <textarea rows="3" cols="40"name="comments"placeholder="Comments.........." ></textarea>
                             </div>
                            <div>
                                <!--<button class="btn">save</button>-->
                                <button type="submit">save</button>
                    
                            </div>
                       
                        </form>
                    </div>
    </body>
</html>
