<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        <a href="../index.jsp">
            <img class="logoNavbarImg" src="../images/ElvomLogo.png"/>
        </a>
    </div>
    <div class="d-flex flex-nowrap">
        <a class="nav-link text-white underline btn">Galería</a>
        <a class="nav-link text-white underline btn">Artistas</a>
        <div>
            <a class="nav-link text-white underline btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Login</a>
            <div class="dropdown-menu rounded mt-3">
                <form class="px-2 py-1" action="../loginServlet" method="post">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="username" name="username" placeholder="username" required>
                        <label for="username">Nombre de Usuario</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                        <label for="password">Contraseña</label>
                    </div>
                    <!--<div class="mb-3">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="dropdownCheck">
                            <label class="form-check-label" for="dropdownCheck">
                                Remember me
                            </label>
                        </div>
                    </div>-->
                    <div class="d-flex justify-content-center">
                        <button type="submit" class="btn blue-button">Login</button>
                    </div>
                </form>
                <div class="dropdown-divider"></div>
                <a class="text-center text-white text-decoration-none d-block" href="./views/Register.jsp">Registrarse</a>
                <!--<a class="text-center text-white text-decoration-none d-block" href="#">Forgot password?</a>-->
            </div>
        </div>
    </div>
</nav>
<section class="nonHeader"></section>
<section class="h-100 py-5">
    <div class="d-flex justify-content-center">
        <div class="d-block">
            <p class="h1 text-center">Registro</p>
            <form class="mx-1 py-3" action="../registerServlet" method="post">
                <div class="input-group mb-3">
                    <span class="input-group-text"><i class="fa-solid fa-pen"></i></span>
                    <div class="form-floating flex-grow-1">
                        <input type="text" class="form-control" name="name" id="name" placeholder="name" required/>
                        <label for="name">Nombre</label>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text"><i class="fa-solid fa-pen"></i></span>
                    <div class="form-floating flex-grow-1">
                        <input type="text" class="form-control" name="surnames" id="surnames" placeholder="surnames" required/>
                        <label for="surnames">Apellidos</label>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text"><i class="fa-solid fa-user"></i></span>
                    <div class="form-floating flex-grow-1">
                        <input type="text" class="form-control" name="usernamein" id="usernamein" placeholder="usernamein" required/>
                        <label for="usernamein">Nombre de usuario</label>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text"><i class="fa-solid fa-address-card"></i></span>
                    <div class="form-floating flex-grow-1">
                        <input type="text" class="form-control" name="dni" id="dni" placeholder="dni" required/>
                        <label for="dni">DNI</label>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text"><i class="fa-solid fa-envelope"></i></span>
                    <div class="form-floating flex-grow-1">
                        <input type="email" class="form-control" name="email" id="email" placeholder="email" required/>
                        <label for="email"> E-mail</label>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text"><i class="fa-solid fa-cake-candles"></i></span>
                    <div class="form-floating flex-grow-1">
                        <input type="date" class="form-control" name="fbirth" id="fbirth" placeholder="fbirth" required/>
                        <label for="fbirth"> Fecha de Nacimiento</label>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text"><i class="fa-solid fa-key"></i></span>
                    <div class="form-floating flex-grow-1">
                        <input type="password" class="form-control" name="passwordin" id="passwordin" placeholder="passwordin" required/>
                        <label for="passwordin"> Contraseña</label>
                    </div>
                </div>
                <div class="form-check d-flex justify-content-center mb-5">
                    <input class="form-check-input me-2" type="checkbox" value="" id="Terms" required/>
                    <label class="form-check-label" for="Terms">
                        Acepto todos los <a href="#">términos y condiciones</a>
                    </label>
                </div>
                <div class="d-flex justify-content-center">
                    <button type="submit" class="btn blue-button-black text-black">Registrarse</button>
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