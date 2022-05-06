jQuery(function($) {
    var altura = 0;

    $(window).on('scroll', function() {

        if ($(this).scrollTop() < altura || $(this).scrollTop() < 200) {
            $('.navbar').addClass('fixed-top');
        } else{
            $('.navbar').removeClass('fixed-top');
        }

        if($(this).scrollTop() > 543){
            $('.navbar').addClass('navbarNonTransparent');
        }else{
            $('.navbar').removeClass('navbarNonTransparent');
        }

        altura = $(this).scrollTop();
        console.log(altura);
    });

    /*$(window).on('resize', adjustNav);

    adjustNav();*/
});