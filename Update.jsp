<%-- 
    Document   : Update
    Created on : 01-Jul-2024, 5:41:14 pm
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
    </head>
    <body>
        <%
           BlogDao b1=new BlogDao(ProductFactory.getFactory());
           List<Blog>lb= b1.showBlog();
        
        %>
        <table  border="3px solid black">
            <%
              for(Blog s:lb){
            %>
            <tr>
                <td>
                            <%= s.getId()%>
                        </td>
                
            
            <form action="BlogUpdate"method="post">
                <td>
                    <input type="hidden"value="<%=s.getId()%>" name="id">
                    <input type="text"size="50"value="<%=s.getBlog_title()%>"name="blog_title"placeholder=" Title">
                   
                </td>
                <td>
                <input type="text"value="<%= s.getBlog_content()%>" name="blog_content">
                </td>
                <td>
                <input type="text"value="<%= s.getCreatedby()%>" name="developedby">
                </td>
                <td>
                <input type="text"value="<%=s.getComments()%>" name="comments">
                </td>
            
                <td>
                <button type="submit">submit</button>
               
                </td>
               
                
            </form>
        
            <%}%>   
        </table>
       
    </body>
</html>
