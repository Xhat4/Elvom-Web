$(document).ready(function() {
    var altura = 0;
    var estado = 0;

    $(window).on('scroll', function() {

        if(($(this).scrollTop() < $('#videoOverlay').height() - $('.navbar2').height()) && ($(this).scrollTop() < altura) && (estado !== 1)){
            switchToNonTransparentNavBar();
        }else if(($(this).scrollTop() < $('#videoOverlay').height()) && ($(this).scrollTop() > altura) && (estado !== 2)){
            bringContentToFront();
        } else if(($(this).scrollTop() > $('#videoOverlay').height()) && ($(this).scrollTop() > altura) && (estado !== 3)){
            fadeOutNavBar();
        }else if((($(this).scrollTop() > $('#videoOverlay').height()) && ($(this).scrollTop() < altura) && (estado !== 4))){
            fadeInNavBar();
        }

        altura = $(this).scrollTop();

    });

    function switchToNonTransparentNavBar(){
        $('.navbar2').css('opacity','0');
        $('.navbar2').fadeTo(100,1);
        $('.realBody').css('z-index','1000');
        $('.navbar2').removeClass('navbarNonTransparent');
        $('.dropdown-menu').removeClass('dropdown-menuNonTransparent');
        estado = 1;
    }

    function bringContentToFront(){
        $('.realBody').css('z-index','1400');
        estado = 2;
    }

    function fadeOutNavBar(){
        $('.navbar2').fadeTo(100,0);
        estado = 3;
    }

    function fadeInNavBar(){
        $('.navbar2').css('opacity','0');
        $('.navbar2').fadeTo(100,1);
        $('.realBody').css('z-index','1000');
        $('.navbar2').addClass('navbarNonTransparent');
        $('.dropdown-menu').addClass('dropdown-menuNonTransparent');
        estado = 4;
    }

    /*$(window).on('resize', adjustNav);

    adjustNav();*/

});