<%-- 
    Document   : index
    Created on : 13-jun-2018, 16:30:36
    Author     : ASUS-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/<X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: lightblue ">     

<div class="row">
    <div class="col-sm-4">
    </div>
    <div class="col-sm-6">
        <form action="servlet"method="post">
            <legend> <h1>Autentificacion</h1></legend>

            <table>
                <tr>
                    <%
                        if (request.getAttribute("msg") != null) {
                            out.print(request.getAttribute("msg"));
                        }

                    %>

                </tr>
                <tr>
                    <td>Usuario:</td>
                    <td><input type="text" name="user"></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="pass"></td>                     
                </tr>
                <tr>
                    <td>
                        <input type="submit" class="btn btn-light" value="Ingresar">
                        <br>
                        <br>
                        <input type="checkbox" name="recordar">Recordar 
                    </td>


            </table> 
        </form>

    </div>
  <div class="col-sm-4">
    </div>
</div>




    </body>
</html>
