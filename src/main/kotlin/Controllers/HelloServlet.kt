package Controllers

import core.IRepository
import objects.user
import jakarta.servlet.annotation.WebServlet
import jakarta.servlet.http.*

@WebServlet(name = "helloServlet", value = ["/hello-servlet"])
class HelloServlet : HttpServlet() {

    private lateinit var repository : IRepository;
    private lateinit var message: String
    private lateinit var user: user;

    override fun init() {
        message = "Hello World!"
    }

    public override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        response.contentType = "text/html"

        repository.saveUser(user);

        // Hello
        val out = response.writer
        out.println("<html><body>")
        out.println("<h1>$message</h1>")
        out.println("</body></html>")
    }

    override fun destroy() {
    }
}