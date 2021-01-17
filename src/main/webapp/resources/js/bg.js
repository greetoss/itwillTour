    function show1() {
    	document.getElementById("show1").style.display = "block";
    	document.getElementById("show2").style.display = "none";
    	document.getElementById("show3").style.display = "none";
    	document.getElementById("show4").style.display = "none";
    	}

    function show2() {
    	document.getElementById("show1").style.display = "none";
    	document.getElementById("show2").style.display = "block";
    	document.getElementById("show3").style.display = "none";
    	document.getElementById("show4").style.display = "none";
    	}

    function show3() {
    	document.getElementById("show1").style.display = "none";
    	document.getElementById("show2").style.display = "none";
    	document.getElementById("show3").style.display = "block";
    	document.getElementById("show4").style.display = "none";
    	}

    function show4() {
    	document.getElementById("show1").style.display = "none";
    	document.getElementById("show2").style.display = "none";
    	document.getElementById("show3").style.display = "none";
    	document.getElementById("show4").style.display = "block";
    	}
    	
    function show5() {
    	document.getElementById("show5").style.display = "block";
    	document.getElementById("show6").style.display = "none";
    	}
    	
    function show6() {
    	document.getElementById("show5").style.display = "none";
    	document.getElementById("show6").style.display = "block";
    	}

    		
	$(document).ready(function() {

		var $banner = $(".banner").find("ul");

		var $bannerWidth = $banner.children().outerWidth();//배너 이미지의 폭
		var $bannerHeight = $banner.children().outerHeight(); // 높이
		var $bannerLength = $banner.children().length;//배너 이미지의 갯수
		var rollingId;


		rollingId = setInterval(function() { rollingStart(); }, 2500);//다음 이미지로 롤링 애니메이션 할 시간차


		banner.mouseover(function(){

			clearInterval(rollingId);
			$(this).css("cursor", "pointer");
		});

		banner.mouseout(function(){
			rollingId = setInterval(function() { rollingStart(); }, 3000);
			$(this).css("cursor", "default");
		});
		
		function rollingStart() {
			if(document.getElementById("testDiv").style.backgroundImage.charAt(36) == 1){
				document.getElementById("testDiv").style.backgroundImage = "url('/itwilltour/resources/image/bg_2.jpg')";
			} else if(document.getElementById("testDiv").style.backgroundImage.charAt(36) == 2){
				document.getElementById("testDiv").style.backgroundImage = "url('/itwilltour/resources/image/bg_3.jpg')";
			} else if(document.getElementById("testDiv").style.backgroundImage.charAt(36) == 3){
				document.getElementById("testDiv").style.backgroundImage = "url('/itwilltour/resources/image/bg_4.jpg')";
			} else if(document.getElementById("testDiv").style.backgroundImage.charAt(36) == 4){
				document.getElementById("testDiv").style.backgroundImage = "url('/itwilltour/resources/image/bg_5.jpg')";
			} else if(document.getElementById("testDiv").style.backgroundImage.charAt(36) == 5){
				document.getElementById("testDiv").style.backgroundImage = "url('/itwilltour/resources/image/bg_6.jpg')";
			} else if(document.getElementById("testDiv").style.backgroundImage.charAt(36) == 6){
				document.getElementById("testDiv").style.backgroundImage = "url('/itwilltour/resources/image/bg_7.jpg')";
			} else if(document.getElementById("testDiv").style.backgroundImage.charAt(36) == 7){
				document.getElementById("testDiv").style.backgroundImage = "url('/itwilltour/resources/image/bg_1.jpg')";
			}
			
			$banner.css("width", $bannerWidth * $bannerLength + "px");
			$banner.css("height", $bannerHeight + "px");


			$banner.animate({left: - $bannerWidth + "px"}, 200, function() {

				$(this).append("<li>" + $(this).find("li:first").html() + "</li>");

				$(this).find("li:first").remove();

				$(this).css("left", 0);

			});
		}
	});

	