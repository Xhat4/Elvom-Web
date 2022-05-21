package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import objects.Sha2;
import objects.user;
import core.IRepository;

@WebServlet(name = "registerServlet", value = ["/registerServlet"])
class registerServlet : HttpServlet() {

    lateinit var sha2 : Sha2;
    lateinit var order : IRepository;

    @Throws(ServletException::class, IOException::class)
    public override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        var name = request.getParameter("name");
        var surnames = request.getParameter("surnames");
        var nickname = request.getParameter("usernamein");
        var dni = request.getParameter("dni");
        var email = request.getParameter("email");
        var password = sha2.main(request.getParameter("passwordin"));

        lateinit var newUser : user;
        newUser.setUser(name,surnames,nickname,dni,email,password);

        order.saveUser(newUser);
    }

    @Throws(ServletException::class, IOException::class)
    public override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
    }
}