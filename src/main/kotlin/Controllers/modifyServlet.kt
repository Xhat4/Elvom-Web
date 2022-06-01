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
import objects.Sha2
import objects.user
import java.io.IOException
import java.time.LocalDate


@WebServlet(name = "registerServlet", value = ["/registerServlet"])
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 100,
     maxFileSize = 1024 * 1024 * 1000,
     maxRequestSize = 1024 * 1024 * 1000
)
class modifyServlet : HttpServlet() {

    private var sha2 : Sha2 = Sha2();
    private var order : IRepository = PostgreSQLRepository();
    private lateinit var session: HttpSession;
    private lateinit var user : user;

    @Throws(ServletException::class, IOException::class)
    public override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
    }

    @Throws(ServletException::class, IOException::class)
    public override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
        var photo : Part = request.getPart("image");

        var photoName : String = photo.submittedFileName;
        var photoPath : String = "../Storage/profileAvatars/" + photoName;

        photo.write("D:\\Elvom\\Elvom Web\\webTFG\\src\\main\\webapp\\Storage\\profileAvatars\\" + photoName);

        var name = request.getParameter("name");
        var surnames = request.getParameter("surnames");
        var nickname = request.getParameter("usernamein").lowercase();
        var dni = request.getParameter("dni");
        var email = request.getParameter("email");
        var fbirth = LocalDate.parse(request.getParameter("fbirth"));
        var password : ByteArray?;
        if(request.getParameter("passwordin") == ""){
            password = null;
        }else{
            password = sha2.main(request.getParameter("passwordin"));
        }

        session = request.getSession(true);
        user = session.getAttribute("user") as user;

        var newUser : user = user(user.getId(),name,surnames,nickname,dni,email,null,fbirth,user.getAdmin(),user.getArtist(),password);

        if(photoName !== ""){
            newUser.setImage(photoPath);
        }

        var returned = order.modifyUser(newUser);

        if(returned == 1){
            session.setAttribute("user",user);
            response.sendRedirect("views/User.jsp");
        }else{
            session.setAttribute("ErrorRegister",1);
            response.sendRedirect("index.jsp");
        }
    }
}