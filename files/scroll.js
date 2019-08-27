$(document).ready(function() {
    $(document).scroll(function() {
        var width = $( window ).width();
        if(width > 768){
            var height = $(window).scrollTop();
            if(height>20){
                $( "#menu" ).addClass("fixed");   
                $( "#s-logo" ).hide();   
            }else{
                $( "#menu" ).removeClass("fixed");
                $( "#s-logo" ).show();     
            }
        }
    });    
});