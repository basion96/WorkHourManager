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
  <body
  <jsp:include page="/navbar"/>
  <jumbotron>
      <h1>Work Hour Manager</h1>

      <div class="container">
        <form action="${pageContext.request.contextPath}/submitHours" method="post">

          <div class="form-group row">
            <label for="date" class="col-2 col-form-label">Date</label>
            <div class="col-10">
              <input class="form-control" type="date" value="2011-08-19" id="date" name="date">
            </div>
          </div>

          <div class="form-group row">
            <label for="startTime" class="col-2 col-form-label">Start Time</label>
            <div class="col-10">
              <input class="form-control" type="time" value="13:45:00" id="startTime" name="startTime">
            </div>
          </div>

          <div class="form-group row">
            <label for="finishTime" class="col-2 col-form-label">Finish Time</label>
            <div class="col-10">
              <input class="form-control" type="time" value="13:45:00" id="finishTime" name="finishTime">
            </div>
          </div>

          <div class="form-group">

            <div class="form-check-inline">
              <label class="form-check-label">
                <input type="radio" class="form-check-input" name="lunch" value="30">30min Lunch
              </label>
            </div>

            <div class="form-group-inline">
              <label class="form-check-label">
                <input type="radio" class="form-check-input" name="lunch" value="1">1hr Lunch
              </label>
            </div>

            <div class="form-check-inline">
              <label class="form-check-label">
                <input type="radio" class="form-check-input" name="lunch" value="2">2hr Lunch
              </label>
            </div>
          </div>

          <div class="form-group">
            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-primary">Clear</button>
          </div>
          <script>
            var d = new Date();

            var month = d.getDay();
            if(month < 10)
              month = "0"+month;
            var day = d.getDay();
            if(day < 10)
              day = "0"+day;

            var hours = d.getHours();
            if(hours < 10)
              hours = "0"+hours;
            var minutes = d.getMinutes();
            if(minutes < 10)
              minutes = "0"+minutes;

            document.getElementById("date").value = d.getFullYear()+"-"+month+"-"+day;
            document.getElementById("startTime").value = hours+":"+minutes;
            document.getElementById("finishTime").value = hours+":"+minutes;
            console.log("value: "+ d.getFullYear()+"-"+month+"-"+day)
          </script>
        </form>
      </div>

    </jumbotron>
  </body>
</html>