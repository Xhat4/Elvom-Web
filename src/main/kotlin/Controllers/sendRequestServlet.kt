package Controllers;

import connection.PostgreSQLRepository
import core.IRepository
import jakarta.servlet.ServletException
import jakarta.servlet.annotation.MultipartConfig
import jakarta.servlet.annotation.WebServlet
import jakarta.servlet.http.HttpServlet
import jakarta.servlet.http.HttpServletRequest
import jakarta.servlet.http.HttpServletResponse
import jakarta.servlet.http.HttpSession
import jakarta.servlet.http.Part
import objects.portfolio
import objects.user
import java.io.IOException


@WebServlet(name = "registerServlet", value = ["/registerServlet"])
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 100,
     maxFileSize = 1024 * 1024 * 1000,
     maxRequestSize = 1024 * 1024 * 1000
)
class sendRequestServlet : HttpServlet() {
    private var order : IRepository = PostgreSQLRepository();
    private lateinit var session: HttpSession;
    private lateinit var portfolio: portfolio;
    private lateinit var user : user;

    @Throws(ServletException::class, IOException::class)
    public override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
    }

    @Throws(ServletException::class, IOException::class)
    public override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
        session = request.getSession(true);
        user = session.getAttribute("user") as user;

        var portfolio : Part = request.getPart("portfolio");

        var portfolioName : String = portfolio.submittedFileName;
        var portfolioPath : String = "../Storage/Portfolio/" + user.getUsername() + portfolioName;

        portfolio.write("D:\\Elvom\\Elvom Web\\webTFG\\src\\main\\webapp\\Storage\\Portfolio\\" + user.getUsername() + portfolioName);

        var important : String = request.getParameter("important");

        var newPortfolio : portfolio = portfolio(portfolioPath,important);

        var returned = order.sendRequest(newPortfolio,user);

        if(returned == 1){
            session.setAttribute("user",user);
            response.sendRedirect("views/User.jsp");
        }else{
            session.setAttribute("ErrorRegister",1);
            response.sendRedirect("index.jsp");
        }
    }
}