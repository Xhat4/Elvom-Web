<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="objects.user"%>
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
        <%  user user = (user) session.getAttribute("user");
        %>
        <div>
            <a class="nav-link text-white underline btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><%= user.getUsername() %></a>
            <div class="dropdown-menu rounded mt-3">
                <a class="text-center text-white text-decoration-none d-block" href="./Modify.jsp">Perfil</a>
                <div class="dropdown-divider"></div>
                    <% if(user.getArtist() == true){ %>

                <a class="text-center text-white text-decoration-none d-block" href="../getTagsServlet">Subir</a>
                <div class="dropdown-divider"></div>

                    <% }
                if(user.getAdmin() == true){ %>

                <a class="text-center text-white text-decoration-none d-block" href="./Register.jsp">Solicitudes</a>
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
            <p class="h1 text-center">Perfil</p>
            <form class="px-2 py-1" action="../modifyServlet" method="post" enctype="multipart/form-data">
                <div class="mb-3 mt-3 d-block justify-content-center">
                            <img id="avatar" src="<%= user.getImage()%>" class="rounded-circle shadow-4" style="width: 150px; height: 150px;" alt="Avatar" />
                    <input type="file" class="form-control" name="image" id="image" style="display: none" value="<%= user.getEmail()%>"/>
                    <input type="button" class="btn btn-secondary" value="Seleccionar imagen" onclick="document.getElementById('image').click();" />
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text"><i class="fa-solid fa-pen"></i></span>
                    <div class="form-floating flex-grow-1">
                        <input type="text" class="form-control" name="name" id="name" placeholder="name" value="<%= user.getName()%>" required/>
                        <label for="name">Nombre</label>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text"><i class="fa-solid fa-pen"></i></span>
                    <div class="form-floating flex-grow-1">
                        <input type="text" class="form-control" name="surnames" id="surnames" placeholder="surnames" value="<%= user.getSurnames()%>" required/>
                        <label for="surnames">Apellidos</label>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text"><i class="fa-solid fa-user"></i></span>
                    <div class="form-floating flex-grow-1">
                        <input type="text" class="form-control" name="usernamein" id="usernamein" placeholder="usernamein" value="<%= user.getUsername()%>" required/>
                        <label for="usernamein">Nombre de usuario</label>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text"><i class="fa-solid fa-address-card"></i></span>
                    <div class="form-floating flex-grow-1">
                        <input type="text" class="form-control" name="dni" id="dni" placeholder="dni" value="<%= user.getDni()%>" required/>
                        <label for="dni">DNI</label>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text"><i class="fa-solid fa-envelope"></i></span>
                    <div class="form-floating flex-grow-1">
                        <input type="email" class="form-control" name="email" id="email" placeholder="email" value="<%= user.getEmail()%>" required/>
                        <label for="email"> E-mail</label>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text"><i class="fa-solid fa-cake-candles"></i></span>
                    <div class="form-floating flex-grow-1">
                        <input type="date" class="form-control" name="fbirth" id="fbirth" placeholder="fbirth" value="<%= user.getBirthDate()%>" required/>
                        <label for="fbirth"> Fecha de Nacimiento</label>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text"><i class="fa-solid fa-key"></i></span>
                    <div class="form-floating flex-grow-1">
                        <input type="password" class="form-control" name="passwordin" id="passwordin" placeholder="passwordin"/>
                        <label for="passwordin"> Contraseña</label>
                    </div>
                </div>
                <div class="d-flex justify-content-center">
                    <button type="submit" class="btn blue-button-black text-black">Modificar</button>
                </div>
            </form>
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