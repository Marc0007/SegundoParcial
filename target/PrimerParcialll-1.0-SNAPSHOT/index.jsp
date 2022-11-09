<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.Producto"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link  href="css/style.css" type="text/css" rel="stylesheet">

        <title>JSP Page</title>
    </head>
    <body>
    <center><div id="cabecera">
            <h3>PRIMER PARCIAL TEM-742</h3>
            <h3>Nombre : Marcos Andres Arriague Gonzales</h3>
            <h3>Carnet : 6844358</h3>
        </div>
    </center> 
    <h1>Productos</h1>

    <div  class="tabla">
        <div id="table">
            <a href="ServletControl?op=nuevo">Nuevo Producto</a>
            <table border="1">
                <th>Id</th> 
                <th>Descripcion</th> 
                <th>Cantidad</th> 
                <th>Precio</th> 
                <th>Categoria</th> 
                <th>Editar</th> 
                <th>Eliminar</th> 


                <c:forEach var="item" items="${listapro}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.descripcion}</td>
                        <td>${item.cantidad}</td>
                        <td>${item.precio}</td>
                        <td>${item.categoria}</td>
                        <td><a href="ServletControl?op=editar&id=${item.id}">Editar</a>

                        <td><a href="ServletControl?op=eliminar&id=${item.id}"
                               onclick="return(confirm('Esta seguro?'))">Eliminar</a></td>
                    </tr>
                </c:forEach>
            </table>

        </div>
    </div>

</body>
</html>
