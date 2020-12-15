package HourManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/submithours")
public class HourManager extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get data here
        DaysHours d = new DaysHours("2020-12-23", "12::00", "17:00:00", 1);
        request.setAttribute("hours", d);
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/hourManagement/hourManagement.jsp");
        rd.forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}

