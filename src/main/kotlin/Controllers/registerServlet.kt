package Controllers;

import connection.PostgreSQLRepository
import java.io.IOException;
import jakarta.servlet.*;
import objects.Sha2;
import objects.user;
import core.IRepository;
import jakarta.servlet.annotation.WebServlet
import jakarta.servlet.http.*
import java.time.LocalDate

@WebServlet(name = "registerServlet", value = ["/registerServlet"])
class registerServlet : HttpServlet() {

    private var sha2 : Sha2 = Sha2();
    private var order : IRepository = PostgreSQLRepository();

    @Throws(ServletException::class, IOException::class)
    public override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
    }

    @Throws(ServletException::class, IOException::class)
    public override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
        var name = request.getParameter("name");
        var surnames = request.getParameter("surnames");
        var nickname = request.getParameter("usernamein").lowercase();
        var dni = request.getParameter("dni");
        var email = request.getParameter("email");
        var fbirth = LocalDate.parse(request.getParameter("fbirth"));
        var password = sha2.main(request.getParameter("passwordin"));

        var newUser : user = user(0,name,surnames,nickname,dni,email,"../Storage/profileAvatars/standardUser.png",fbirth,false,false,password);

        order.saveUser(newUser);

        response.sendRedirect("index.jsp")
    }
}