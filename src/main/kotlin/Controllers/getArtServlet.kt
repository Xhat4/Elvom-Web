package Controllers;

import connection.PostgreSQLRepository
import java.io.IOException;
import jakarta.servlet.*;
import core.IRepository;
import jakarta.servlet.annotation.WebServlet
import jakarta.servlet.http.*
import objects.artGallery
import objects.user

@WebServlet(name = "registerServlet", value = ["/registerServlet"])
class getArtServlet : HttpServlet() {

    private var order : IRepository = PostgreSQLRepository();
    private lateinit var session: HttpSession;

    @Throws(ServletException::class, IOException::class)
    public override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        var artworks: ArrayList<artGallery> = order.getArt();

        session = request.getSession(true);

        session.setAttribute("artworks",artworks);
        response.sendRedirect("views/Gallery.jsp");
    }

    @Throws(ServletException::class, IOException::class)
    public override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
    }
}