<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="App ejemplo deploy azure">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Personas</title>
        <link rel="icon" type="image/png" href="./images/favicon.png">
        <link rel="stylesheet" href="./css/styles.css" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
        <div id="fondo" class="container rounded">
            <div class="row px-4">
                <div class="col-md-12 g-3 text-center mt-4">
                    <h2><strong><u>PERSONAS</u></strong></h2>
                </div>
            </div>
            <div class="row  mb-3 px-4">
                <div class="table-responsive">
                    <table class="table align-middle text-center">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:if test="${not empty listaPersonas}">
                            <c:forEach items="${listaPersonas}" var="persona">
                                <tr>
                                    <td>${persona.id}</td>
                                    <td>${persona.nombre}</td>
                                </tr>
                            </c:forEach>
                        </c:if>
                        <c:if test="${empty listaPersonas}">
                            <tr>
                                <td colspan="2">No hay personas disponibles.</td>
                            </tr>
                        </c:if>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
