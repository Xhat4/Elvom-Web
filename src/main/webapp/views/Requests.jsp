<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="objects.user"%>
<%@ page import="objects.request" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Elvom</title>
    <link rel="icon" type="image/x-icon" href="../images/Logo.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../css/style.css"/>
</head>
<body>
<!-- navbar -->
<nav class="navbar3 w-100 fixed-top text-center navbarNonTransparent">
    <div class="logoNavbar">
        <a href="./User.jsp">
            <img class="logoNavbarImg" src="../images/ElvomLogo.png"/>
        </a>
    </div>
    <div class="d-flex flex-nowrap">
        <a class="nav-link text-white underline btn">Galería</a>
        <a class="nav-link text-white underline btn">Artistas</a>
        <%
            user user = (user) session.getAttribute("user");
            ArrayList<request> requestArray = (ArrayList<request>) session.getAttribute("request");
        %>
        <div>
            <a class="nav-link text-white underline btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><%= user.getUsername() %></a>
            <div class="dropdown-menu rounded mt-3">
                    <a class="text-center text-white text-decoration-none d-block" href="./Modify.jsp">Perfil</a>
                    <div class="dropdown-divider"></div>
                        <% if(user.getArtist() == true){ %>

                    <a class="text-center text-white text-decoration-none d-block" href="./Upload_art.jsp">Subir</a>
                    <div class="dropdown-divider"></div>

                        <% }
                    if(user.getAdmin() == true){ %>

                    <a class="text-center text-white text-decoration-none d-block" href="../getRequestServlet">Solicitudes</a>
                    <div class="dropdown-divider"></div>

                        <%}%>
                    <a class="text-center text-white text-decoration-none d-block" href="../logOut">Cerrar session</a>
            </div>
        </div>
    </div>
</nav>
<section class="nonHeader"></section>
<section class="h-100 py-5">
    <div class="d-flex justify-content-center">
        <div class="d-block">
            <p class="h1 text-center">Solicitudes</p>
            <table class="table">
                <thead>
                    <tr>
                        <td>Usuario</td>
                        <td>Mensaje Importante</td>
                        <td>Portfolio</td>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for(int i = 0; i < requestArray.size(); i++){
                    %>
                    <tr>
                        <td><%= requestArray.get(i).getIdUser() %></td>
                        <td><%= requestArray.get(i).getImportant() %></td>
                        <td><a href="<%= requestArray.get(i).getPortfolio() %>">portfolio</a></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>
</section>
<footer>
    <div class="container">
        <div class="row justify-content-center pt-5">
            <div class="col-md-12 text-center">
                <p class="menu">
                    <a href="#">Términos y condiciones</a>
                    <a href="#">Únete</a>
                </p>
                <ul class="p-0">
                    <li>
                        <a href="https://twitter.com/Elvom_"><i class="fa fa-twitter-square"></i></a>
                        <a href="https://www.instagram.com/elv0m/"><i class="fa fa-instagram-square"></i></a>
                        <a href="https://discord.gg/Y7xsGFVwdQ"><i class="fa fa-discord"></i></a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row mt-3 justify-content-center">
            <div class="col-md-12 text-center">
                <p>Copyright © Elvom 2022</p>
            </div>
        </div>
    </div>
</footer>
</body>
</html>