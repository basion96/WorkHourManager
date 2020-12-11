package HourManager;

import database.DatabaseAccess;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/submitHours")
public class SubmitHours extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String date = request.getParameter("date");
        String startTime = request.getParameter("startTime");
        String finishTime = request.getParameter("finishTime");
        double lunch;
        switch(request.getParameter("lunch")){
            case "30": lunch = 0.5;
            break;
            case "1": lunch = 1;
            break;
            case "2": lunch = 2;
            break;
            default: lunch = 0;
            break;
        }

        new DatabaseAccess().submitHours(request.getParameter("date"), request.getParameter("startTime"), request.getParameter("finishTime"), lunch);
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/hourManagement/hourmanagement.jsp");
        rd.forward(request,response);
    }
}
