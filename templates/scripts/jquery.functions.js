$(document).ready(function(){

    $('#navBar').data('size','big');


    //fire animation on hero unit
    animateHeroUnit();

    $('.quotesHome').flexslider({
        animation: "fade",
        controlNav: false,
        directionNav: false,
        after: function(){
            currentAnimate = $('.flex-active-slide > #animate-option').val();
            $('.flex-active-slide > .col-sm-12 > .img-circle').css('visibility', 'visible');
            $('.flex-active-slide > .col-sm-12 > .img-circle').addClass(currentAnimate);
        },
        before: function(){
            /* drive thorough each & */
            $('.quotesHome > .slides > li').each(function () {
                currentAnimate = $('.flex-active-slide > #animate-option').val();

                $(this).find("img").each(function() {
                    $(this).removeClass(currentAnimate);
                    $(this).css('visibility', 'hidden');
                });
            });
        },
        start: function(){
            $('.flex-active-slide > .col-sm-12 > .img-circle').css('visibility', 'visible');
            currentAnimate = $('.flex-active-slide > #animate-option').val();
            $('.flex-active-slide > .col-sm-12 > .img-circle').addClass(currentAnimate);
        },
        added: function(){

        },
        removed: function(){}

    });



    animateFeatureSet();

    //Elements animation
    jQuery('.animated').appear(function(){
        var element = jQuery(this);
        var animation = element.data('animation');
        var animationDelay = element.data('delay');
        if (animationDelay) {
            setTimeout(function(){
                element.addClass( animation + " visible" );
                element.removeClass('hiding');
            }, animationDelay);
        }else {
            element.addClass( animation + " visible" );
            element.removeClass('hiding');
        }
    },{accY: -150});

});



/**
 * Animate hero unit image
 */
function animateHeroUnit () {
    if ($('#bg-image').length) {
        var bgimage = new Image();
        bgimage.src=$('#bg-image').val();
        $(bgimage).load(function(){
            $(".hero-unit").css("background-image","url("+$(this).attr("src")+")").hide().fadeIn();
        });
    }

}


function animateFeatureSet() {
    $cards = $('.feature-set');

    var time = 500;

    $cards.each(function() {
        setTimeout( function(){ addPositioningClasses($(this).children('.feature')); }, time)
        time += 500;
    });
}

function addPositioningClasses($card){
    $card.addClass('pt-page-fade');
}

$(window).scroll(function(){
    var $header = $('#navBar');

    // Get the scroll position of the page.
    var scrollElem = ((navigator.userAgent.toLowerCase().indexOf('webkit') != -1) ? 'body' : 'html');

    if ($(scrollElem).scrollTop() > 0) {
        if ($header.data('size') == 'big') {
            $header.data('size','small');
            $header.removeClass('bg-transparent');
            $header.addClass('bg-color-white-nav');
        }
    } else {
        if ($header.data('size') == 'small') {
            $header.data('size','big');
            $header.removeClass('bg-color-white-nav');
            $header.removeClass('navbar-light');
            $header.addClass('bg-transparent');
        }
    }
});


$(window).scroll(function() {
    $('.feature-set').each(function(){
        var imagePos = $(this).offset().top;

        var topOfWindow = $(window).scrollTop();
        if (imagePos < topOfWindow+400) {
            animateFeatureSet()
        }
    });
});