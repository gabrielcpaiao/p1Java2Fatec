<%@ page contentType="text/html;charset=UTF-8" language="java"  %>

<%
    int[] resultado = new int[10];
    for(int indice = 0; indice < 10; indice++) {
        resultado[indice] = (indice + 1) = 5
    }
    request.setAttribute("result", resultado);
%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Aplicação</title>
    </head>
    <body>
       
        <ul>
            <% for(int num = 1; num <= 10; num++) { %>
                <li><%= num * 5 %></li>
            <% } %>
        </ul>

        <hr />

        <ul>
            <% for(int valor : resultado) { %>
                <li><%= valor %></li>
            <% } %>
        </ul>

        <hr />

        <ul>
            <c:forEach var="num" items="${result}">
                <li>${num}</li>
            </c:forEach>
        </ul>

    </body>
</html>