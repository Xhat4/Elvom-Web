<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elvom</title>
        <link rel="icon" type="image/x-icon" href="./images/Logo.ico">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="./js/main.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="./css/style.css"/>
    </head>
    <body>
        <!-- navbar -->
        <nav class="navbar2 w-100 fixed-top text-center navbarSemiTransparent">
            <div class="logoNavbar">
                <a href="#">
                    <img class="logoNavbarImg" src="images/ElvomLogo.png"/>
                </a>
            </div>
            <div class="d-flex flex-nowrap">
                <a class="nav-link text-white underline btn">Galería</a>
                <a class="nav-link text-white underline btn">Artistas</a>
                <div>
                    <a class="nav-link text-white underline btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Login</a>
                    <div class="dropdown-menu rounded mt-3">
                        <form class="px-2 py-1">
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
        <div>
            <header>

                <!-- This div is  intentionally blank. It creates the transparent black overlay over the video which you can modify in the CSS -->
                <div id="videoOverlay" class="overlay"></div>

                <!-- The HTML5 video element that will create the background video on the header -->
                <div class="d-sm-none d-md-block">
                    <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
                        <source src="https://firebasestorage.googleapis.com/v0/b/elvom-web.appspot.com/o/fondo.mp4?alt=media&token=9226d75e-b426-49f0-bc2b-f74c40032cf0" type="video/mp4">
                    </video >
                </div>
                <div class="d-none d-sm-block d-md-none">
                    <img src="./images/Images.png">
                </div>

                <!-- The header content -->
                <div class="container h-100" id="measureHead">
                    <div class="d-flex h-100 text-center align-items-center">
                        <div class="w-100">
                            <img class="display-3" src="./images/logo+namewhite.png" width="250px" height="250px"></img>
                        </div>
                    </div>
                </div>
            </header>

            <!-- Page section example for content below the video header -->
            <!--<section class="my-5">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 mx-auto">
                            <p>The HTML5 video element uses an mp4 video as a source. Change the source video to add in your own background! The header text is vertically centered using flex utilities that are built into Bootstrap.</p>
                            <p>The overlay color and opacity can be changed by modifying the <code>background-color</code> and <code>opacity</code> properties of the <code>.overlay</code> class in the CSS.</p>
                            <p>Set the mobile fallback image in the CSS by changing the background image of the header element within the media query at the bottom of the CSS snippet.</p>
                            <p class="mb-0">
                            Created by <a href="https://startbootstrap.com">Start Bootstrap</a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>-->
        </div>
        <article class="py-5 px-5 realBody">
            <div id="aboutUs" class="my-5 p-2">
                <a class="ms-5 subtitles h1">Acerca de Elvom</a>
                <div class="ms-5 mt-3">
                    <p>Se trata de una organización que busca dar seguridad y valorar el arte tecnológico ya sean vídeos, diseños, animaciones, música... </p>
                </div>
            </div>
            <div id="Information" class="p-2">
                <a class="ms-5 subtitles h1">Tipo de arte</a>
                <div class="ms-5 mt-5 row">
                    <div class="col-6 d-flex align-items-center">
                        <div class="px-5">
                            <h4>Imágenes</h4>
                            <p class="mt-2">Desde Elvom pensamos que este formato es imprescindible. En el pasado existía sobre lienzos o papel, sin embargo, en
                                la actualidad es fácil encontrarlo en formato digital manteniendo sus principales estilos (óleos, vectorial, abstracto, realista, etc).</p>
                        </div>
                    </div>
                    <div class="col-6 d-flex align-items-center">
                        <img src="./images/Images.png" class="rounded-3 mx-auto" width="350px" height="225px">
                    </div>
                </div>
                <div class="ms-5 mt-5 row">
                    <div class="col-6 d-flex align-items-center">
                        <img src="./images/Images.png" class="rounded-3 mx-auto" width="350px" height="225px">
                    </div>
                    <div class="col-6 d-flex align-items-center">
                        <div class="px-5">
                            <h4>Vídeos</h4>
                            <p class="mt-2">Si una imagen debe de ser considerada arte, ¿por qué no un conjunto de ellas?.
                            Los vídeos pueden transmitir los mismos sentimientos que las imágenes solo que con la particularidad de que dichos sentimientos
                            pueden cambiar con el paso de la visualización del mismo, algo que con las imágenes es algo muy difícil de conseguir</p>
                        </div>
                    </div>
                </div>
                <div class="ms-5 mt-5 row">
                    <div class="col-6 d-flex align-items-center">
                        <div class="px-5">
                            <h4>Fotografía</h4>
                            <p class="mt-2">Desde Elvom pensamos que este formato es imprescindible. En el pasado existía sobre lienzos o papel, sin embargo, en
                                la actualidad es fácil encontrarlo en formato digital manteniendo sus principales estilos (óleos, vectorial, abstracto, realista, etc).</p>
                        </div>
                    </div>
                    <div class="col-6 d-flex align-items-center">
                        <img src="./images/Images.png" class="rounded-3 mx-auto" width="350px" height="225px">
                    </div>
                </div>
                <div class="ms-5 mt-5 row">
                    <div class="col-6 d-flex align-items-center">
                        <img src="./images/Images.png" class="rounded-3 mx-auto" width="350px" height="225px">
                    </div>
                    <div class="col-6 d-flex align-items-center">
                        <div class="px-5">
                            <h4>Música</h4>
                            <p class="mt-2">Si una imagen debe de ser considerada arte, ¿por qué no un conjunto de ellas?.
                                Los vídeos pueden transmitir los mismos sentimientos que las imágenes solo que con la particularidad de que dichos sentimientos
                                pueden cambiar con el paso de la visualización del mismo, algo que con las imágenes es algo muy difícil de conseguir</p>
                        </div>
                    </div>
                </div>
            </div>
        </article>
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