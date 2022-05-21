$(document).ready(function() {
    var altura = 0;
    var estado = 0;
    var pantalla = 0;

    $(window).on('load', function (){

        if($('.navbar2').length){
           pantalla = 0;
        }

        if($('.navbar3').length) {
            if (pantalla == 0) {
                $('.dropdown-menu').addClass('dropdown-menuNonTransparent');
                pantalla = 1;
            }
        }
    });

    $(window).on('scroll', function() {

        if($('.navbar2').length){
            if(($(this).scrollTop() < $('#measureHead').height() - $('.navbar2').height()) && ($(this).scrollTop() < altura) && (estado !== 1)){
                switchToNonTransparentNavBar();
            }else if(($(this).scrollTop() < $('#measureHead').height()) && ($(this).scrollTop() > altura) && (estado !== 2)){
                bringContentToFront();
            }else if(($(this).scrollTop() > $('#measureHead').height()) && ($(this).scrollTop() > altura) && (estado !== 3)){
                fadeOutNavBar();
            }else if((($(this).scrollTop() > $('#measureHead').height()) && ($(this).scrollTop() < altura) && (estado !== 4))){
                fadeInNavBar();
            }
        }

        if($('.navbar3').length){
            if(($(this).scrollTop()) > altura && (estado !== 5) && $(this).scrollTop() > 40){
                fadeOutNavBar3();
                estado = 5;
            }else if(($(this).scrollTop()) < altura && (estado !==6)){
                fadeInNavBar3();
                estado = 6;
            }
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

    function fadeOutNavBar3(){
        $('.navbar3').fadeTo(100,0);
    }

    function fadeInNavBar(){
        $('.navbar2').css('opacity','0');
        $('.navbar2').fadeTo(100,1);
        $('.realBody').css('z-index','1000');
        $('.navbar2').addClass('navbarNonTransparent');
        $('.dropdown-menu').addClass('dropdown-menuNonTransparent');
        estado = 4;
    }

    function fadeInNavBar3(){
        $('.navbar3').css('opacity','0');
        $('.navbar3').fadeTo(100,1);
        $('.navbar3').addClass('navbarNonTransparent');
    }

    /*$(window).on('resize', adjustNav);

    adjustNav();*/

});