<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Elvom</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="./js/main.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/style.css"/>
    </head>
    <body>
        <!-- navbar -->
        <nav class="navbar2 w-100 fixed-top text-center navbarSemiTransparent">
            <div class="logoNavbar">
                <img class="logoNavbarImg" src="images/ElvomLogo.png"/>
            </div>
            <div class="d-flex flex-nowrap">
                <a class="nav-link text-white underline btn">Galería</a>
                <div>
                    <a class="nav-link text-white underline btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Login</a>
                    <div class="dropdown-menu rounded mt-3">
                        <form class="px-2 py-1">
                            <div class="form-floating mb-3">
                                <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                                <label for="floatingInput">Email address</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                                <label for="floatingPassword">Password</label>
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
                                <button type="submit" class="btn btn-primary">Sign in</button>
                            </div>
                        </form>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">New around here? Sign up</a>
                        <a class="dropdown-item" href="#">Forgot password?</a>
                    </div>
                </div>
            </div>
        </nav>
        <div>
            <header>

                <!-- This div is  intentionally blank. It creates the transparent black overlay over the video which you can modify in the CSS -->
                <div id="videoOverlay" class="overlay"></div>

                <!-- The HTML5 video element that will create the background video on the header -->
                <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
                    <source src="https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4" type="video/mp4">
                </video>

                <!-- The header content -->
                <div class="container h-100">
                    <div class="d-flex h-100 text-center align-items-center">
                        <div class="w-100">
                            <h1 class="display-3">Video Header</h1>
                            <p class="lead mb-0">Using HTML5 Video and Bootstrap</p>
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
        <div class="realBody">
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
            <p>a</p>
        </div>
        <article></article>
    </body>
</html>