<%-- 
    Document   : guardar
    Created on : 15-jun-2018, 12:14:25
    Author     : ASUS-PC
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: lightblue">
        
         <%
            
           String gerencia = request.getParameter("gerencia") ;
           String departamento = request.getParameter("departamento");      
           String asignar = request.getParameter("asignar");      
           String encargado = request.getParameter("encargado");
           String requerimiento = request.getParameter("requerimiento");
         
          /*  if(gerencia.equals("") || departamento.equals("") || asignar.equals("") || encargado.equals("") || requerimiento.equals("")){
            request.setAttribute("msg","Falta ingresar datos");
            RequestDispatcher rd = request.getRequestDispatcher("menuprincipal.jsp");            
            rd.forward(request, response);                   
            }
            */
            String m=(String)request.getAttribute("msg");
                if(request.getAttribute("msg")!=null){
                    out.print(request.getAttribute("msg"));
                }
                   
           
           try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/enajava","root","");
               String consulta = "insert into requerimiento (gerencia, departamento, asignar, encargado, requerimiento, estado) values(?,?,?,?,?,1)";
               PreparedStatement smt = con.prepareStatement(consulta);
               smt.setString(1,gerencia);
               smt.setString(2,departamento);
               smt.setString(3,asignar);
               smt.setString(4,encargado);
               smt.setString(5,requerimiento);
               int resultado = smt.executeUpdate();
               if(resultado>0){
                   out.print("Requerimiento Ingresado");
               }else{
                   out.print("Oops, algo sucedio...");
               }
               
           }catch(Exception ex){
               out.print("El requerimiento ya se encuentra en solucion ");
           }
           
        
            %>
            <form action="index.jsp">
                <input type="submit" class="btn btn-light" value="Volver a Inicio">       
        </form>
            <br>
            <form action="ingresar.jsp">
                <input type="submit" class="btn btn-light" value="Ingresar requerimiento">       
        </form>
    </body>
</html>
