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
        <a href="" class="text-white">
            Tareas
            <span class="badge badge-pill badge-light">${datos.size()}</span>
        </a>
    </nav>
    <div class="container">
        <div class="card-header bf-info text-white">
            <a class="btn btn-success" href="agregarTarea.htm">Agregar</a>
        </div>
        <div class="row mt-4">
            <c:forEach var="dato" items="${datos}">
                <div class="col-md-4">
                    <div class="card mt-4 text-center">
                        <div class="card-header">
                            <h4>${dato.titulo}</h4>
                            <span class="badge badge-pill badge-danger ml-2">
                                ${dato.prioridad}
                            </span>
                        </div>
                        <div class="card-body">
                            ${dato.descripcion}
                            <p class="mt-4"><mark>${dato.responsable}</mark></p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
