$(document).ready(function() {
    var altura = 0;
    var estado = 0;

    $(window).on('scroll', function() {

        /*if ($(this).scrollTop() < altura || $(this).scrollTop() < $('#videoOverlay').height()) {
            $('.navbar2').show();
        } else{
            $('.navbar2').hide();
        }*/

        if($(this).scrollTop() < ($('#videoOverlay').height() + $('.navbar2').height())){
            $('.realBody').css('z-index','1000');
            $('.navbar2').css('opacity','1');
            estado = 0;
        }

        if(($(this).scrollTop() > $('#videoOverlay').height()) && ($(this).scrollTop() < altura) && (estado !== 1)){
            $('.navbar2').css('opacity','0');
            $('.navbar2').fadeTo(100,1);
            $('.realBody').css('z-index','1000');
            $('.navbar2').addClass('navbarNonTransparent');
            $('.dropdown-menu').addClass('dropdown-menuNonTransparent');
            estado = 1;
            console.log('if 1');
        }else if($(this).scrollTop() < $('#videoOverlay').height() && (estado !== 2)){
            $('.navbar2').removeClass('navbarNonTransparent');
            $('.dropdown-menu').removeClass('dropdown-menuNonTransparent');
            $('.realBody').css('z-index','1400');
            estado = 2;
            console.log('if 2');
        }else if(($(this).scrollTop() > $('#videoOverlay').height()) && ($(this).scrollTop() > altura) && (estado !== 3)){
            estado = 3;
            $('.navbar2').fadeOut(100,function (){
                console.log('A');
                if(estado === 3){
                    console.log('B');
                    $('.realBody').css('z-index','1400');
                }
            });
            console.log('if 3');
        }

        altura = $(this).scrollTop();

    });

    /*$(window).on('resize', adjustNav);

    adjustNav();*/

});