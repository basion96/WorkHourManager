<%--
  Created by IntelliJ IDEA.
  User: jasonhorsnell
  Date: 2020-11-29
  Time: 10:46
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
    <title>Home</title>
  </head>
  <body>
    <jumbotron>
      <h1>Work Hour Manager</h1>

      <div class="container">
        <form action="${pageContext.request.contextPath}/submitHours" method="post">
          <div class="form-group">
            <label class="mr-sm-2" for="date">Date:</label>
            <input type="text" id="date" name="date" class="form-control" required="true" maxlength="8">
          </div>
          <div class="form-group">
            <label class="mr-sm-2" for="startTime">Start time:</label>
            <input type="text" id="startTime" name="startTime" class="form-control" required="true" maxlength="4">
          </div>
          <div class="form-group">
            <label class="mr-sm-2" for="finishTime">finish time:</label>
            <input type="text" id="finishTime" name="finishTime" class="form-control" required="true" maxlength="4">
          </div>

          <div class="form-group">
            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-primary">Clear</button>
          </div>
        </form>
      </div>

    </jumbotron>
  </body>
</html>
