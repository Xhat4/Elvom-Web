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
class loginServlet : HttpServlet() {

    private var sha2 : Sha2 = Sha2();
    private var order : IRepository = PostgreSQLRepository();
    private lateinit var session: HttpSession;

    @Throws(ServletException::class, IOException::class)
    public override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
    }

    @Throws(ServletException::class, IOException::class)
    public override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
        var username = request.getParameter("username");
        var password = sha2.main(request.getParameter("password"));

        var newUser : userAuth = userAuth(username,password);

        var user: user? = order.loginUser(newUser);

        session = request.getSession(true);
        if(user != null){
            session.setAttribute("user",user);
            response.sendRedirect("views/User.jsp");
        }else{
            session.setAttribute("ErrorRegister",1);
            response.sendRedirect("index.jsp");
        }
    }
}