package Controllers;

import connection.PostgreSQLRepository
import java.io.IOException;
import jakarta.servlet.*;
import objects.Sha2;
import objects.userAuth;
import core.IRepository;
import jakarta.servlet.annotation.WebServlet
import jakarta.servlet.http.*
import objects.user

@WebServlet(name = "registerServlet", value = ["/registerServlet"])
class logOutServlet : HttpServlet() {

    private lateinit var session: HttpSession;

    @Throws(ServletException::class, IOException::class)
    public override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        session = request.getSession(true);

        session.invalidate();
        response.sendRedirect("index.jsp");
    }

    @Throws(ServletException::class, IOException::class)
    public override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {

    }
}