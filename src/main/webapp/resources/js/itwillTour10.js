$(document).ready(function(){

    $(".answer").hide();

    $(".question").click(function(){
        if($(this).next().css("display")==="none"){
            $(this).css("border-bottom", "none");
            $(this).children("span").css("font-weight", "500");
            $(this).children(".open_icon").css("background-position", "-118px -52px");
            $(this).children(".question_icon").css("background", "#333");
            $(this).next().show();
        } else {
            $(this).css("border-bottom", "1px solid #ddd");
            $(this).children("span").css("font-weight", "400");
            $(this).children(".open_icon").css("background-position", "-143px -48px");
            $(this).children(".question_icon").css("background", "#ddd");
            $(this).next().hide();
        }
    });

    $(".page_num").click(function(){

        $(".page_num").children("a").removeClass("now_page");
        $(this).children("a").addClass("now_page");

    });

});