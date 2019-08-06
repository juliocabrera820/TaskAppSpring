<%-- 
    Document   : agregarTarea
    Created on : 6/08/2019, 02:38:12 PM
    Author     : julio-cabrera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Tarea</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card">
                <form class="card-body" method="POST">
                    <div class="form-group">
                        <div class="form-control">
                            <input type="text" name="titulo" class="form-control" placeholder="Titulo de la tarea"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-control">
                            <input type="text" name="descripcion" class="form-control" placeholder="Descripcion de la tarea"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-control">
                            <input type="text" name="responsable" class="form-control" placeholder="Responsable de la tarea"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-control">
                            <input type="text" name="prioridad" class="form-control" placeholder="Prioridad de la tarea"/>
                        </div>
                    </div>
                    <!--
                        Formulario con combobox
                        <div class="form-group">
                            <div class="form-control">
                                <select
                                    name="prioridad"
                                
                                />
                            </div>
                        </div>
                    -->
                    <input type="submit" value="Agregar" class="btn btn-success">
                    <a class="btn btn-info" href="index.htm">Regresar</a>
                </form>
            </div>
        </div>
    </body>
</html>
