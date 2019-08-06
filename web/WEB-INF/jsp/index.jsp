<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tareas</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>

    <body>
    <nav class="navbar navbar-dark bg-dark">
        <a href="" class="text-white">Tareas</a>
    </nav>
        <h1>Tareas</h1>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info" >
                    <h3>Nuevo Registro</h3>
                </div>
            </div>
            <p>
                <c:forEach var="dato" items="datos">
                    ${dato.id}
                    ${dato.titulo}
                    ${dato.descripcion}
                    ${dato.responsable}
                    ${dato.prioridad}
                </c:forEach>
            </p>
        </div>
    </body>
</html>
