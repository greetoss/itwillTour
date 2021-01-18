; (function ($) {
	if (typeof this.hntUI !== 'undefined') return
	
	var Class = {

		updateJqDom: function () {
			/*dom 업데이트*/
			//console.log('!!!!! updateJqDom');
			var _ = {
				$html: $('html'),
				$wrap: $('#wrap'),
				$quickMenu: $('.right_fixed'),
				$contents: $('.contents'),
				$footer: $('#footer'),
				$popup: $('.lypop_contaer')
			}

		},

		initTabsCtrlOnce: function () {
			/* tabsCtrl */
			var $tabWrap = $('.js_tabs:not(.v-tabs)')
			var $tabIndex = 1000;
			for (var i = 0; i < $tabWrap.length; i++) {
				$($tabWrap[i]).data('order', $tabIndex++);

				if ($($tabWrap[i]).hasClass('scroll')) {
					var $num = $($tabWrap[i]).find('.tabs>li').length;
					$($tabWrap[i]).children('ul, a').wrapAll('<div class="scroll_wrap"></div>');
				} else {
					$num = $($tabWrap[i]).find('>.tabs>li').length;
				}
				if (!$($tabWrap[i]).hasClass('swiper-container') && !$($tabWrap[i]).hasClass('no_division') && !$($tabWrap[i]).hasClass('place_list')) {
					//$($tabWrap[i]).find('>ul').wrap('<div class="scroll_wrap"></div>');
					//$($tabWrap[i]).append('<a class="prev"></a><a class="next"></a>')
					if ($num == 1) {
						$($tabWrap[i]).addClass('alone');
					} else if ($num > 1) {
						$($tabWrap[i]).find('>.tabs>li').css({ 'width': 100 / $num + '%' });
						if ($($tabWrap[i]).hasClass('scroll')) $($tabWrap[i]).find('.tabs>li').css({ 'width': 100 / $num + '%' });
					}
				}
			}

			$(document).on('click', '.js_tabs:not(.link) .tabs li', function (e) {
				//일반 탭
				var target = $(e.currentTarget);

				if (isNoJQuery(target, '.js_tabs')) return

				var idx = target.index();
				var contentContainer = target.parent().siblings('.panels').length > 0 ? target.parent().siblings('.panels') : target.parents('.scroll_wrap').siblings('.panels');
				var content = contentContainer.find('> .panel:eq(' + idx + ')');

				if (!target.hasClass('disabled')) {
					target.addClass('selected').find('> a').attr('title', '현재 페이지');
					target.siblings().removeClass('selected').find('> a').removeAttr('title');

					content.addClass('selected').siblings().removeClass('selected');

					var stickyTabContainer = target.closest('.js_tabs');
					if (stickyTabContainer.length > 0 && stickyTabContainer.hasClass('js_sticky') && stickyTabContainer.hasClass('fixed')) {
						//$( 'html, body' ).stop().animate({scrollTop:content.offset().top},400);

						if (window.$nuxt !== undefined && window.$nuxt.$fx !== undefined) {
							var thresholdTarget = stickyTabContainer.prev();
							if (thresholdTarget.length > 0)
								window.$nuxt.$fx.scrollTo($('body').get(0), getThresholdPosition(thresholdTarget) - 30, 200)
						}
					}
					
					e.preventDefault();
					e.stopPropagation();
				}
			})
		},
		
		setEvent: function () {
      $(document).on('mousewheel.fx', function (e) {
        if (typeof Class.setSticky !== 'undefined') Class.setSticky()
      })

			$(window).on('scroll.fx', function (e) {
				if (Class.scrollTop === undefined) Class.scrollTop = $(window).scrollTop() //once

				if (!Class.scrollTracking) {
          window.requestAnimationFrame(function () {
						Class.docWidth = $(document).width()
						Class.docHeight = $(document).height()
						
            if (typeof Class.scrollHandler !== 'undefined') Class.scrollHandler()
						if (typeof Class.setSticky !== 'undefined') Class.setSticky()
						if (typeof Class.setFixedArea !== 'undefined') Class.setFixedArea()
						
            Class.scrollTracking = false
          })

          Class.scrollTracking = true
        }
			}).triggerHandler('scroll.fx')

			$(window).on('resize.fx', function () {
				//console.log('!!!!! resize')
				Class.winWidth = Math.min($(window).width(), window.innerWidth)
				Class.winHeight = Math.min($(window).height(), window.innerHeight)

				if (typeof Class.setFixedArea !== 'undefined') Class.setFixedArea()
			}).triggerHandler('resize.fx')
		},
		init: function () {
			/* hntUI 초기화 */
			Class.setEvent()

			for (var func in Class) {
				if (Class.hasOwnProperty(func)) {
					if (func !== 'init' && func.indexOf('init') == 0) {
						Class[func].call(this)
					}
				}
			}
		} //end init
	}

	function checkScroll(elements, options) {
		var defaults = {
			yArr: undefined,
			heightArr: undefined,
			isEnd: false,
			exceptionHeight: 0,
			threshold: undefined,
			callback: undefined
		};

		var opts = Object.assign({}, defaults, options);
		var actIdx = undefined;

		if (elements.length === 0) return;

		var startThreshold = (opts.threshold === undefined) ? elements.eq(0).offset().top : opts.threshold;

		if (startThreshold - opts.exceptionHeight < Class.scrollTop) {
			//각각
			var targetYpos, targetHeight;
			elements.each(function (idx) {
				targetYpos = (opts.yArr === undefined) ? $(this).offset().top : opts.yArr[idx];  //각각의 Y 위치
				targetHeight = (opts.heightArr === undefined) ? $(this).outerHeight() : opts.heightArr[idx]; //각각의 높이
				if (targetYpos + targetHeight - opts.exceptionHeight > Class.scrollTop) {
					actIdx = idx;
					return false;
				}
			});
		} else {
			//첫 elements 보다 작은 경우
			actIdx = undefined;
		}

		//마지막
		if (opts.isEnd && Class.scrollTop === Class.docHeight - Class.winHeight) {
			actIdx = elements.length - 1;
		}

		if (opts.callback !== undefined) opts.callback(actIdx);
	}
	
	function isNoJQuery(target, selector) {
		return target.hasClass(Class.nojq) || target.parentsUntil(selector, '.' + Class.nojq).length > 0 || target.closest(selector).hasClass(Class.nojq)
	}

	if (typeof this['hntUI'] === 'undefined') {
		this['hntUI'] = Class
	}

	$(document).ready(function () {
		//console.log('!!!!! ready')
		hntUI.updateJqDom()
		hntUI.init();
	})
})(jQuery)

//window pop
var win = null;
function NewWindow(mypage, myname, w, h, scroll) {
	var winl = (screen.width - w) / 2;
	var wint = (screen.height - h) / 2;
	var settings = 'height=' + h + ',';
	settings += 'width=' + w + ',';
	settings += 'top=' + wint + ',';
	settings += 'left=' + winl + ',';
	settings += 'scrollbars=' + scroll + ',';
	settings += 'resizable=yes';
	win = window.open(mypage, myname, settings);
	if (parseInt(navigator.appVersion) >= 4) { win.window.focus(); }
}

 	$(document).ready(function(){
 		
 		$("a[href='#acc_con0']").click(function(){
 			
 			var dis = $("#acc_con0").css("display");

 			
 			if(dis == "block") {

 				$("#acc_con0").css("display", "none");
 				$("a[href='#acc_con0']").parents("li").attr("class","nojq swiper-slide");
 				$(".js_acc a[href='#acc_con0']").attr("class", "nojq header daylist"); 
 				$("#dayAll").html("일정 전체펼침");				
 				return;
 			}

 			$("#acc_con0").css("display", "block");
 			$("#acc_con1").css("display", "none");
 			$("#acc_con2").css("display", "none");
 			$("#acc_con3").css("display", "none");
 			$("a[href='#acc_con0']").parents("li").attr("class","nojq swiper-slide selected swiper-slide-active");
 			$("a[href='#acc_con0']").parents("li").siblings().attr("class","nojq swiper-slide");
 			$(".js_acc a[href='#acc_con0']").attr("class", "nojq header daylist active");
 			$(".js_acc a[href='#acc_con1']").attr("class", "nojq header daylist");
 			$(".js_acc a[href='#acc_con2']").attr("class", "nojq header daylist");
 			$(".js_acc a[href='#acc_con3']").attr("class", "nojq header daylist");
 		});
 		
 		$("a[href='#acc_con1']").click(function(){
 		
 			var dis = $("#acc_con1").css("display");
 				
 			if(dis == "block") {
 				
 				$("#acc_con1").css("display", "none");
 				$(".js_acc a[href='#acc_con1']").attr("class", "nojq header daylist");
 				$("a[href='#acc_con1']").parents("li").attr("class","nojq swiper-slide");
 				$("#dayAll").html("일정 전체펼침");
 				return;
 			}
 			
 			$("#acc_con1").css("display", "block");
 			$("#acc_con0").css("display", "none");
 			$("#acc_con2").css("display", "none");
 			$("#acc_con3").css("display", "none");
 			$("a[href='#acc_con1']").parents("li").attr("class","nojq swiper-slide selected swiper-slide-active");
 			$("a[href='#acc_con1']").parents("li").siblings().attr("class","nojq swiper-slide");
 			$(".js_acc a[href='#acc_con1']").attr("class", "nojq header daylist active");
 			$(".js_acc a[href='#acc_con0']").attr("class", "nojq header daylist");
 			$(".js_acc a[href='#acc_con2']").attr("class", "nojq header daylist");
 			$(".js_acc a[href='#acc_con3']").attr("class", "nojq header daylist");

 		});
 		
 		$("a[href='#acc_con2']").click(function(){

 			var dis = $("#acc_con2").css("display");
 			
 			if(dis == "block") {
 				
 				$("#acc_con2").css("display", "none");
 				$(".js_acc a[href='#acc_con2']").attr("class", "nojq header daylist");
 				$("a[href='#acc_con2']").parents("li").attr("class","nojq swiper-slide");
 				$("#dayAll").html("일정 전체펼침");
 				return;
 			}

 			$("#acc_con2").css("display", "block");
 			$("#acc_con1").css("display", "none");
 			$("#acc_con0").css("display", "none");
 			$("#acc_con3").css("display", "none");
 			$("a[href='#acc_con2']").parents("li").attr("class","nojq swiper-slide selected swiper-slide-active");
 			$("a[href='#acc_con2']").parents("li").siblings().attr("class","nojq swiper-slide");
 			$(".js_acc a[href='#acc_con2']").attr("class", "nojq header daylist active");
 			$(".js_acc a[href='#acc_con0']").attr("class", "nojq header daylist");
 			$(".js_acc a[href='#acc_con1']").attr("class", "nojq header daylist");
 			$(".js_acc a[href='#acc_con3']").attr("class", "nojq header daylist");
 		});
 		
 		$("a[href='#acc_con3']").click(function(){
 			
 			var dis = $("#acc_con3").css("display");

 			if(dis == "block") {
 				
 				$("#acc_con3").css("display", "none");
 				$(".js_acc a[href='#acc_con3']").attr("class", "nojq header daylist");
 				$("a[href='#acc_con3']").parents("li").attr("class","nojq swiper-slide");
 				$("#dayAll").html("일정 전체펼침");
 				return;
 			}
 			
 			$("#acc_con3").css("display", "block");
 			$("#acc_con1").css("display", "none");
 			$("#acc_con2").css("display", "none");
 			$("#acc_con0").css("display", "none");
 			$("a[href='#acc_con3']").parents("li").attr("class","nojq swiper-slide selected swiper-slide-active");
 			$("a[href='#acc_con3']").parents("li").siblings().attr("class","nojq swiper-slide");
 			$(".js_acc a[href='#acc_con3']").attr("class", "nojq header daylist active");
 			$(".js_acc a[href='#acc_con0']").attr("class", "nojq header daylist");
 			$(".js_acc a[href='#acc_con1']").attr("class", "nojq header daylist");
 			$(".js_acc a[href='#acc_con2']").attr("class", "nojq header daylist");
 		});
 		
 		$("#dayAll").click(function(){
 			
 			var day = $("#dayAll").text();
 			var dis0 = $("#acc_con0").css("display");
 			var dis1 = $("#acc_con1").css("display");
 			var dis2 = $("#acc_con2").css("display");
 			var dis3 = $("#acc_con3").css("display");
 			
			$("#acc_con0").css("display", "block");
			$("#acc_con1").css("display", "block");
 			$("#acc_con2").css("display", "block");
 			$("#acc_con3").css("display", "block");
 			$(".js_acc a[href='#acc_con0']").attr("class", "nojq header daylist active");
 			$(".js_acc a[href='#acc_con1']").attr("class", "nojq header daylist active");
 			$(".js_acc a[href='#acc_con2']").attr("class", "nojq header daylist active");
 			$(".js_acc a[href='#acc_con3']").attr("class", "nojq header daylist active");
 			
 			$("#dayAll").html("일정 전체닫기");
			
 			if(day == "일정 전체닫기") {
 			
 				$("#acc_con0").css("display", "none");
 				$("#acc_con1").css("display", "none");
 	 			$("#acc_con2").css("display", "none");
 	 			$("#acc_con3").css("display", "none");
 	 			$(".js_acc a[href='#acc_con0']").attr("class", "nojq header daylist");
 	 			$(".js_acc a[href='#acc_con1']").attr("class", "nojq header daylist");
 	 			$(".js_acc a[href='#acc_con2']").attr("class", "nojq header daylist");
 	 			$(".js_acc a[href='#acc_con3']").attr("class", "nojq header daylist");
 	 			
 	 			$("#dayAll").html("일정 전체펼침");
 			}
 			
 		});
 	});

$(document).ready(function(){
	
	var num = $("#hidden").val();
		
	$("#prev").on("click", function(){
	
		num = Number(num) - 1;
		
		if(num < 1) {
			num = 5;
		}
		
		if(num == 2) {
			$("#slide").css("transform", "translate3d(-1348px, 0px, 0px)");
			$("#pageNum").html(num);
		}else if(num == 3) {
			$("#slide").css("transform", "translate3d(-2022px, 0px, 0px)");
			$("#pageNum").html(num);
		}else if(num == 4) {
			$("#slide").css("transform", "translate3d(-2696px, 0px, 0px)");
			$("#pageNum").html(num);
		}else if(num == 5) {
			$("#slide").css("transform", "translate3d(-3370px, 0px, 0px)");
			$("#pageNum").html(num);
		}else {
			$("#slide").css("transform", "translate3d(-674px, 0px, 0px)");
			$("#pageNum").html(num);
		}
		
		
	});
	
	$("#next").on("click", function(){
		
		num = Number(num) + 1;
		
		if(num > 5) {
			num = 1;
		}
		
		if(num == 2) {
			$("#slide").css("transform", "translate3d(-1348px, 0px, 0px)");
			$("#pageNum").html(num);
		}else if(num == 3) {
			$("#slide").css("transform", "translate3d(-2022px, 0px, 0px)");
			$("#pageNum").html(num);
		}else if(num == 4) {
			$("#slide").css("transform", "translate3d(-2696px, 0px, 0px)");
			$("#pageNum").html(num);
		}else if(num == 5) {
			$("#slide").css("transform", "translate3d(-3370px, 0px, 0px)");
			$("#pageNum").html(num);
		}else {
			$("#slide").css("transform", "translate3d(-674px, 0px, 0px)");
			$("#pageNum").html(num);
		}
		
	});
			
	$("#more").click(function(){

		var dis = $("#more1").css("display");
		
		if(dis == "block") {
			$("#more1").css("display", "none");
			$("#more2").css("display", "block");
			$("#more").html("닫기");
		}else {
			$("#more1").css("display", "block");
			$("#more2").css("display", "none");
			$("#more").html("더보기");
		} 
	
	});
	
	$("#modal").click(function(){			
		
		$(".pop").load("zz").dialog({
			modal: true,
			width: '800',
			height: '697'
		});
		
	});
	
	$("#hotel li").click(function(){
		
		var idx = $(this).index();
		
		if(idx == 0) {
			$("#hotel1").css({"display": "block"});
			$("#hotel2").css({"display": "none"});
			$("#hotel3").css({"display": "none"});
		}else if(idx == 1) {
			$("#hotel2").css({"display": "block"});
			$("#hotel1").css({"display": "none"});
			$("#hotel3").css({"display": "none"});
		}else {
			$("#hotel3").css({"display": "block"});
			$("#hotel1").css({"display": "none"});
			$("#hotel2").css({"display": "none"});
		}
		
		
	});
	
	$(".btn_increment").click(function(){
			
		var price = $("#price").children().remove();			
		var Personnel = $(this).parent().attr("id");
		price = $("#price").text();

		price = minusComma(price);
	
		if(Personnel == "adult") {
			price = Number(price) + 2890000;				
		}else if(Personnel == "child") {
			price = Number(price) + 1190000;
		}else if(Personnel == "baby") {
			price = Number(price) + 150,000;
		}
		
		price = String(price);		
		price = addComma(price);

		var num = $(this).prev().text();	
		num = Number(num) + 1;			
		$(this).prev().html(num);
		$("#price").html(price + "<span>원</span>");
	});
		
	$(".btn_decrement").click(function(){
			
		var price = $("#price").children().remove();			
		var Personnel = $(this).parent().attr("id");
		price = $("#price").text();
		
		price = minusComma(price);

		if(Personnel == "adult") {
			price = Number(price) - 2890000;				
		}else if(Personnel == "child") {
			price = Number(price) - 1190000;
		}else if(Personnel == "baby") {
			price = Number(price) - 150,000;
		}		
		
		price = String(price);		
		price = addComma(price);
					
		var num = $(this).next().text();		
		num = Number(num) - 1;			
		$(this).next().html(num);
		$("#price").html(price + "<span>원</span>");
			
	});
		
		
    function addComma(value){
        value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        return value; 
    }
    
    function minusComma(value){
        value = value.replace(/[^\d]+/g, "");
        return value; 
    }
 	
}); 