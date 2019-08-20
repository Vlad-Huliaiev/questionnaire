package ua.kiev.prog;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.*;

public class StatsServlet extends HttpServlet {
    private static String firstName;
    private static String lastName;
    static int yes = 0;
    static int no = 0;
    static int service = 0;
    static int production = 0;

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String firstName = req.getParameter("name");
        String lastName = req.getParameter("lastname");;
        String jobyes = req.getParameter("yes");
        String jobno = req.getParameter("no");
        String as = req.getParameter("service");
        String ap = req.getParameter("production");

        if (jobyes!=null){
            yes++;
        }
        else{
            no++;
        }
        if (as!=null){
            service++;
        }
        if (ap!=null){
            production++;
        }
        req.setAttribute("user firstname", firstName);
        req.setAttribute("user lastname", lastName);
        req.setAttribute("user jobyes", yes);
        req.setAttribute("user jobno", no);
        req.setAttribute("user service", service);
        req.setAttribute("user production", production);

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/stat.jsp");
        rd.forward(req, resp);
    }

}
