$(window).scroll(function () {
    // 100 = The point you would like to fade the nav in.

    if ($(window).scrollTop() > 100) {

        $('.fixed').addClass('is-sticky');
        $(".nav-link").css("color", "black");
        $(".m-circle").removeClass('text-white');



    } else {
        $(".m-circle").addClass('text-white');
        $(".nav-link").css("color", "white");
        $('.fixed').removeClass('is-sticky');

    };
});