<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Productos"%>
<%
    ArrayList<Productos> lista = (ArrayList<Productos>)session.getAttribute("listaprod");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1" align="center">
	<tr>
            <td><center><h2>PRIMER PARCIAL TEM-742</h2></center><br>
        <h2>Nombre: Abraham Ruiz Ramos</h2>
	<h2>Carnet: 7007985</h2></td>
	</tr>
        </table>
        
        
        <center><h1>Productos</h1></center>
        <center><a href="MainController?op=nuevo">Nuevo Producto</a></center><br>
        <table border ="1" align="center">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <%
                if (lista != null) {
                    for(Productos item : lista){
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria() %></td>
                <td><a href = "MainController?op=editar&id=<%= item.getId() %>">Modificar</a></td>
                <td><a href = "MainController?op=eliminar&id=<%= item.getId() %>"
                       onclick="return confirm('Esta seguro  de eliminar el registro?');">Eliminar</a></td>
            </tr> 
            <%
                    }
                }
            %>    
        </table>
    </body>
</html>
