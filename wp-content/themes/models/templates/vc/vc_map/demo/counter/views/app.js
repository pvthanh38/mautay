(function ($) {
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
    });
})(jQuery);
jQuery(document).ready(function() {
    scrollMenu();
    const arr= ['usd.png','euro.png','canada.png','hongkong.png','russia.png',];
    /*$('.currencies select').each(function(index, e){
        let $this = $(this);
        let numberOption = $(this).children('option').length;
        $this.addClass('select-hidden');
        $this.wrap('<div class="select"></div>');
        $this.after('<div class="select-styled"></div>');
        let styleSelectStyle = $this.next('div.select-styled');
        styleSelectStyle.html(`<img src="./images/${arr[0]}">`+"<span class='text'>"+$this.children('option').eq(0).text().trim()+"</span>");
        var list = $('<ul/>', {
            'class': 'select-options'
        }).insertAfter(styleSelectStyle);

        for (var i = 0; i < numberOption; i++) {
            $('<li />', {
                html:`<img src="./images/${arr[i]}">`+"<span class='text'>"+$this.children('option').eq(i).text().trim()+"</span>",
                rel: $this.children('option').eq(i).val(),
                p: i
            }).appendTo(list);
        }
        let listItems = list.children('li');
        styleSelectStyle.click(function(e){
            e.stopPropagation();
            $('div.select-styled.active').not(this).each(function(){
                $(this).removeClass('active').next('ul.select-options').hide();
            });
            $(this).toggleClass('active').next('ul.select-options').toggle();
        });
        listItems.click(function(e){
            e.stopPropagation();
            const i = parseInt($(this).attr('p'));
            styleSelectStyle.html(`<img src="./images/${arr[i]}">`+"<span class='text'>"+$(this).text()+"</span>").removeClass('active');
            $this.val($(this).attr('rel'));
            list.hide();
        });


        $(document).click(function () {
            styleSelectStyle.removeClass('active');
            list.hide();
        });
    });
	*/
    $(window).scroll(()=>{
            scrollMenu();
        }
    );
    function scrollMenu(){
        let topDistance = $('#responsive-menu').offset().top;
        if(topDistance>50){
            if($('#responsive-menu.active').length>0) return;
            $('#responsive-menu').addClass('active');
        }else{
            if($('#responsive-menu.active').length===0) return;
            $('#responsive-menu').removeClass('active');
        }
    }
    $('.menu-icon').click(function(){
        $('.menu-content').toggleClass('active');
    });
    $('#banner-bg-auto').slick({
        arrows: false,
        autoplay: true,
        speed: 1000,
        infinite: true,
        autoplaySpeed: 4000,
    });
    let countItemClick = 0;
    // $('.menu-content .sub-menu li').click(()=>{
    //     // let subMenu = $('.sub-menu').removeClass('active');
    //     const len = $('.sub-menu').length;
    //     // console.log(len);
    //     for(let i = 0;i<len;i++){
    //         $('.sub-menu').eq(i).removeClass('active');
    //     }
    // });
    $('.menu .menu-content >ul >li').click(function(event){

        let $this = $(this);
        if(countItemClick===0){
            event.preventDefault();
            var isMobile = window.matchMedia("only screen and (max-width: 500px)").matches;
            if (isMobile) {
                $this.find('.sub-menu').addClass('active');
            }else{
                console.log("No");
            }
        }else{
            $this.find('.sub-menu').removeClass('active');
        }


        countItemClick =(countItemClick + 1) % 2;
    });
    $('.list-testimonial').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        speed:1000,
        nextArrow: '<button class="slick-next slick-arrow" aria-label="Next"><img src="./images/arrow-next.svg" alt="Next"></button>',
        prevArrow: '<button class="slick-prev slick-arrow" aria-label="Previous"><img src="./images/arrow-prev.svg" alt="Prev"></button>',
    });
    $('.more-picture .list-picture').slick({
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3,
        speed:1000,
        nextArrow: '<button class="slick-next slick-arrow" aria-label="Next"><img src="./images/arrow-next.svg" alt="Next"></button>',
        prevArrow: '<button class="slick-prev slick-arrow" aria-label="Previous"><img src="./images/arrow-prev.svg" alt="Prev"></button>',
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2,
                }
            },

            {
                breakpoint: 500,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                }
            }
        ]
    });


});