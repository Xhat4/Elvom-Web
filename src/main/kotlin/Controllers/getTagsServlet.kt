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
class getTagsServlet : HttpServlet() {

    private var sha2 : Sha2 = Sha2();
    private var order : IRepository = PostgreSQLRepository();
    private lateinit var session: HttpSession;

    @Throws(ServletException::class, IOException::class)
    public override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        var tags: ArrayList<String> = order.getTags();

        session = request.getSession(true);

        session.setAttribute("tags",tags);
        response.sendRedirect("views/Upload_art.jsp");
    }

    @Throws(ServletException::class, IOException::class)
    public override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
    }
}