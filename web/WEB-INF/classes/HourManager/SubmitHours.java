package HourManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SubmitHours extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String date = request.getParameter("date");
        String startTime = request.getParameter("startTime");
        String finishTime = request.getParameter("finishTime");
        String lunch;
        switch(request.getParameter("lunch")){
            case "30":
        }

    }
}
