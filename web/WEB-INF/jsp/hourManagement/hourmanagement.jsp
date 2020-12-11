<%--
  Created by IntelliJ IDEA.
  User: jasonhorsnell
  Date: 2020-12-08
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

        <title>Hour Management</title>
    </head>
    <body>
    <jsp:include page="/navbar"/>
        <div class="jumbotron">
            <h1>Hour Management</h1>
        </div>

        <div class="container">
            <!-- put table here -->
            <table>
                <tr>
                    <th></th>
                    <th>date here</th>
                </tr>
                <tr>
                    <td>Sunday</td><td></td>
                </tr>
                <tr>
                    <td>Monday</td><td></td>
                </tr>
                <tr>
                    <td>Tuesday</td><td></td>
                </tr>
                <tr>
                    <td>Wednesday</td><td></td>
                </tr>
                <tr>
                    <td>Thursday</td><td></td>
                </tr>
                <tr>
                    <td>Friday</td><td></td>
                </tr>
                <tr>
                    <td>Saturday</td><td></td>
                </tr>
                <tr>
                    <td>Week Total</td><td></td>
                </tr>

            </table>
        </div>

    </body>
</html>
