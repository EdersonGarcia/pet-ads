<%--
  Created by IntelliJ IDEA.
  User: ederson
  Date: 20/11/14
  Time: 09:45
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title> Mini Curso </title>
</head>

<body>

    <table >
        <thead>
        <tr>
            <td>
                Nome Mini Curso
            </td>
            <td>
                Vagas
            </td>
            <td>
                Data Inicio
            </td>
            <td>
                Vagas Disponiveis
            </td>
        </tr>

        </thead>
        <tbody>
        <g:each in="${listaMinicurso}">
        <tr>
            <td>${it.nome}</td>
            <td>${it.vagas}</td>
            <td>
                <g:formatDate format="dd-MM-yyyy" date="${it.dataIncio}"/>
        </tr>
        </g:each>
        </tbody>

    </table>

</body>
</html>