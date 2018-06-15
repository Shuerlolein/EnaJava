<%-- 
    Document   : logout
    Created on : 13-jun-2018, 17:15:00
    Author     : ASUS-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body style="background-color: lightblue ">

        <h1>Sesion Caducada</h1>
        
        <form action="index.jsp">
            <input type="submit" value="Volver Al Inicio">
            
        </form>
        
       
        
                 

        
        <%
        HttpSession User = (HttpSession)request.getSession();
                
        User.invalidate();
        %>
    </body>
</html>
