package Controllers;

import connection.PostgreSQLRepository
import java.io.IOException;
import jakarta.servlet.*;
import core.IRepository;
import jakarta.servlet.annotation.WebServlet
import jakarta.servlet.http.*
import objects.request

@WebServlet(name = "registerServlet", value = ["/registerServlet"])
class getRequestServlet : HttpServlet() {

    private var order : IRepository = PostgreSQLRepository();
    private lateinit var session: HttpSession;

    @Throws(ServletException::class, IOException::class)
    public override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        var requestArray: ArrayList<request> = order.getRequest();

        session = request.getSession(true);

        session.setAttribute("request",requestArray);
        response.sendRedirect("views/Requests.jsp");
    }

    @Throws(ServletException::class, IOException::class)
    public override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
    }
}