<%-- 
    Document   : mostrarUsuarios
    Created on : 18/06/2023, 9:19:59 pm
    Author     : rockh
--%>

<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Usuarios</title>
    </head>
    <body>
        <h1>Lista de colaboradores registrados</h1>
        <%
            List<Usuario> listaUsuarios = (List<Usuario>) request.getSession().getAttribute("listaUsuarios");
            int cont = 1;
            for (Usuario usu: listaUsuarios) {                
           
        %>
                <p><b> Usuario Nº<%=cont%></b></p>
                <p>ID: <%=usu.getID()%></p>
                <p>Nombre: <%=usu.getNombre()%></p>
                <p>Apellido: <%=usu.getApellido()%></p>
                <p>Telefono: <%=usu.getTelefono()%></p>
                <p>Correo: <%=usu.getCorreo()%></p>
                <p>.......................................</p>
                <% cont = cont + 1;%>
        
        <% } %>
    </body>
</html>
