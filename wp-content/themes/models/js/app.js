
    $(document).ready(function () {
        $('a[href^="#"]').click(function (e) {
            var target = $($(this).attr('href'));
            e.preventDefault();
            var top = 0;
            if (target.length > 0){
                top = target.offset().top;
            }
            $('html, body').animate({scrollTop: top});
        });

        

        $().ready(function() {
            scrollTo = function(target) {
                $("html, body").animate({
                    scrollTop: target
                }, 1000);
            };
            gotoSlide = function(element, slide) {
                $(".slider-image").slick("slickGoTo", slide);
                var index = $(element).index();
                //$(".slider-nav").slick("slickGoTo", parseInt(index));
                scrollTo($("#gallery").offset().top - 100);
            }

            $(".slider-image").slick({
                slidesToShow: 2,
                slidesToScroll: 2,
                arrows: true,
                fade: false,
                responsive: [{
                    breakpoint: 700,
                    settings: {
                        arrows: true,
                        centerMode: true,
                        centerPadding: "40px",
                        slidesToShow: 1,
                        slidesToScroll: 1,
                    }
                }]
            });
            $(".slider-image").click(function(e) {
                $(".slider-image").slick("slickNext");
            });
        });

        

        $(document).ready(function() {
            $(".navbar .closed").click(
                function() {
                    if ($(this) .hasClass("open")) {
                        $(this) .removeClass("open") .addClass("closed") .parents("li") .children("ul") .slideUp(250);
                    }else{
                        $(this) .removeClass("closed") .addClass("open") .parents("li") .children("ul") .slideDown(250);
                    }
                }
            );
            $(".navbar li.dropdown").hover(
                function () {
                    $("ul", this).fadeIn(300);
                    $("ul  ul", this).hide();
                },
                function () {
                    $("ul", this).fadeOut(300);
                }
            );
        });

        $(document).ready(function () {
            $('#icons .polaroids').click(function (e) {
                e.preventDefault();
                $('#model-polaroids').modal("show");
            });
            $('#icons .portfolio').click(function (e) {
                e.preventDefault();
                $('#model-portfolio').modal("show");
            });
            $('#icons .video').click(function (e) {
                e.preventDefault();
                $('#model-video').modal("show");
            });
        });
    });

$(document).ready(function() {
	$("ul.thumbs li, ul.models-list li").matchHeight({});
	$("li.category a").each(function(){
		var _this = $(this);
		var txt = _this.text();
		var hre = _this.attr('href');
		if(txt == 'HOW TO APPLY'){
			_this.attr('href', hre.replace('academy_cat/how-to-apply', 'how-to-apply'));
		}
	});
});
$("#owl-slider-4").owlCarousel({
	autoPlay: 3000,
	stopOnHover : true,
	items : 1,
	navigation : true,
	video:true,
	transitionStyle : "fade",
	navigationText: ["<a class=\"btn_control_slider owl-prev\"></a>","<a class=\"btn_control_slider owl-next\"></a>"],
	itemsDesktop : [1199, 1],
	itemsDesktopSmall : [979, 1],
	itemsTablet : [768, 1],
	itemsTabletSmall : [600, 1],
	itemsMobile : [479, 1]
});