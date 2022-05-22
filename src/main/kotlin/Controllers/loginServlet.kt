package Controllers;

import connection.PostgreSQLRepository
import java.io.IOException;
import jakarta.servlet.*;
import objects.Sha2;
import objects.userAuth;
import core.IRepository;
import jakarta.servlet.annotation.WebServlet
import jakarta.servlet.http.*

@WebServlet(name = "registerServlet", value = ["/registerServlet"])
class loginServlet : HttpServlet() {

    var sha2 : Sha2 = Sha2();
    var order : IRepository = PostgreSQLRepository();

    @Throws(ServletException::class, IOException::class)
    public override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
    }

    @Throws(ServletException::class, IOException::class)
    public override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
        var username = request.getParameter("username");
        var password = sha2.main(request.getParameter("password"));

        var newUser : userAuth = userAuth(username,password);

        order.loginUser(newUser);
    }
}