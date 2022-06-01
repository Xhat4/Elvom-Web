package Controllers;

import connection.PostgreSQLRepository
import java.io.IOException;
import jakarta.servlet.*;
import core.IRepository;
import jakarta.servlet.annotation.WebServlet
import jakarta.servlet.http.*
import objects.user

@WebServlet(name = "registerServlet", value = ["/registerServlet"])
class getArtistServlet : HttpServlet() {

    private var order : IRepository = PostgreSQLRepository();
    private lateinit var session: HttpSession;

    @Throws(ServletException::class, IOException::class)
    public override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        var artist: ArrayList<user> = order.getArtist();

        session = request.getSession(true);

        session.setAttribute("artist",artist);
        response.sendRedirect("views/Artist.jsp");
    }

    @Throws(ServletException::class, IOException::class)
    public override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
    }
}