$(document).ready(function() {
    var altura = 0;

    $(window).on('scroll', function() {

        if ($(this).scrollTop() < altura || $(this).scrollTop() < 200) {
            $('.navbar2').addClass('fixed-top');
        } else{
            $('.navbar2').removeClass('fixed-top');
        }

        if($(this).scrollTop() > 543){
            $('.navbar2').addClass('navbarNonTransparent');
        }else{
            $('.navbar2').removeClass('navbarNonTransparent');
        }

        altura = $(this).scrollTop();
        console.log(altura);
    });

    /*$(window).on('resize', adjustNav);

    adjustNav();*/

});