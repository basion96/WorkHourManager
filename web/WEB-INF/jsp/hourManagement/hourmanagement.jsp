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
        <script>
            function getDayFromDate(date) {
                var day =  new Date();
                day.setDate(date);
                return day.getDay();
            }
        </script>
        <title>Hour Management</title>
    </head>
    <body>
    <jsp:include page="/navbar"/>
        <div class="jumbotron">
            <h1>Hour Management</h1>
        </div>

        <div class="container">
            <!-- put table here -->
            <table class="table table-hover table-light">
                <thead>
                    <tr>
                        <th></th>
                        <th>Week</th>
                        <th scope="col">Sunday 12/02/20</th>
                        <th scope="col">Monday 13/02/20</th>
                        <th scope="col">Tuesday 14/02/20</th>
                        <th scope="col">Wednesday 15/02/20</th>
                        <th scope="col">Thursday</th>
                        <th scope="col">Friday</th>
                        <th scope="col">Saturday</th>
                        <th scope="col">Week Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>payweek</td>
                        <td>Week 40</td>
                        <td>12</td>
                        <td>12</td>
                        <td>12</td>
                        <td>12</td>
                        <td>12</td>
                        <td>12</td>
                        <td>12</td>
                        <td>69</td>
                    </tr>
                </tbody>

            </table>
        </div>

    </body>
</html>
