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
import objects.art
import objects.user
import java.io.IOException


@WebServlet(name = "uploadArtServlet", value = ["/uploadArtServlet"])
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 1000,
     maxFileSize = 1024 * 1024 * 1000,
     maxRequestSize = 1024 * 1024 * 1000
)
class uploadArtServlet : HttpServlet() {
    private var order : IRepository = PostgreSQLRepository();
    private lateinit var session: HttpSession;
    private lateinit var user : user;

    @Throws(ServletException::class, IOException::class)
    public override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
    }

    @Throws(ServletException::class, IOException::class)
    public override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
        var image : Part = request.getPart("image");

        var imageName : String = image.submittedFileName;
        var imagePath : String = "../Storage/Images/" + imageName;

        image.write("D:\\Elvom\\Elvom Web\\webTFG\\src\\main\\webapp\\Storage\\Images\\" + imageName);

        var title : String = request.getParameter("titulo");
        var description : String = request.getParameter("description");

        var newImage : art = art(imagePath,title,description);

        session = request.getSession(true);
        user = session.getAttribute("user") as user;

        var returned = order.uploadArt(newImage,user);

        if(returned == 1){
            session.setAttribute("user",user);
            response.sendRedirect("views/User.jsp");
        }else{
            session.setAttribute("ErrorRegister",1);
            response.sendRedirect("index.jsp");
        }
    }
}