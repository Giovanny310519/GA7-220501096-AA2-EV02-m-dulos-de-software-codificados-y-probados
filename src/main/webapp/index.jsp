<%@page import="java.util.List"%>
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
    </head>
    <body>
        <h1>Registro de Cliente</h1>
        <form action="SvUsuarios" method="POST">
            <p><label>ID: </label> <input type="text" name="ID"></p>
            <p><label>Nombre: </label> <input type="text" name="nombre"></p>
            <p><label>Apellido: </label> <input type="text" name="apellido"></p>
            <p><label>Teléfono: </label> <input type="text" name="telefono"></p> 
            <p><label>Correo: </label> <input type="text" name="correo"></p>
            <button type="submit">Enviar</button>
        </form>

        <h1>Ver lista de clientes registrados</h1>
        <p>Ver lista de clientes registrados</p>
        <form action="SvUsuarios" method="GET">
            <button type="submit">Mostrar Clientes Registrados </button>            
        </form>

        <%-- Aquí se almacena la lista de usuarios en la sesión después de enviar el formulario --%>
        <% 
            //List<Usuario> listaUsuarios = obtenerListaUsuarios(); // Debes reemplazar esto con tu lógica para obtener la lista de usuarios.
           // request.getSession().setAttribute("listaUsuarios", listaUsuarios);
        %>
    </body>
</html>

