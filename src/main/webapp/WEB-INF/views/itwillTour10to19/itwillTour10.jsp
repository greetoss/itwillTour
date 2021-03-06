<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>아이티윌투어 :: 1등 여행사</title>
	<meta charset="utf-8">
	
	<!--구글 웹폰트(Noto Sans KR)-->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link
		href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap"
		rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400&display=swap"
		rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
		rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@600&display=swap"
		rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap"
		rel="stylesheet">
	
	<!--JQUERY(AJAX)-->
	<script src="/itwillTour/resources/js/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="/itwillTour/resources/js/jquery.ajax-cross-origin.min.js"></script>
	
	<!--JAVASCRIPT-->
	<script src="/itwillTour/resources/js/itwillTour10.js"></script>
	
	<!--css-->
	<link href="/itwillTour/resources/css/itwillTour15.css" rel="stylesheet">
	<link href="/itwillTour/resources/css/itwillTour10.css" rel="stylesheet">
</head>
<body>
	<div id="header_container">
		<div id="header_wrap">
			<div id="header">
				<div id="header_div1_wrap">
					<div id="header_div1">
						<div>
							<a>로그인</a>
						</div>
						<div>
							<a>회원가입</a>
						</div>
						<div>
							<a>고객센터</a>
						</div>
					</div>
				</div>
				<div id="header_div2">
					<div id="logo_div">
						<a></a>
					</div>
					<div id="search_div">
						<input id="header_search" placeholder="검색어를 입력해 주세요" /> <span
							id="header_search_btn"> <!--돋보기 아이콘-->
						</span>
						<!--검색창-->
					</div>
					<div id="hot_chart">
						<a> <!--검색어-->
						</a>
					</div>
					<div id="mypage_div">
						<a id="mymenu_icon">마이메뉴</a> <a id="reservation_icon">예약내역</a> <a
							id="shoppingcart_icon">장바구니</a>
					</div>
				</div>
				<div id="header_div3_wrap">
					<div id="header_div3">
						<div id="all_menu_div">
							<span id="all_menu_icon"></span><span id="all_menu">전체메뉴</span>
						</div>
						<div id="header_nav_div">
							<span><a id="1">미리 준비하는 해외여행</a></span> <span><a id="2">국내여행</a></span>
							<span><a id="3">항공</a></span> <span><a id="4">호텔/펜션</a></span> <span><a
								id="5">투어/입장권</a></span> <span><a id="6">테마여행</a></span> <span><a
								id="7">럭셔리여행</a></span>
						</div>
						<div id="header_nav_div2">
							<span><a>여행기획전</a></span> <span><a>기업여행</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="container">
		<div id="section_wrap">
			<div id="nav">
				<div id="nav_title">
					<h1>고객센터</h1>
				</div>
				<div id="nav_list">
					<div id="nav_ul_wrap">
						<ul id="nav_ul">
							<li><a id="now_menu" href="itwillTour10">자주 찾는 질문</a></li>
							<li><a href="itwillTour11">문의하기</a></li>
							<li><a href="itwillTour13">문의내역</a></li>
							<li><a href="itwillTour12">공지사항</a></li>
							<li style="border-bottom: none;"><a href="itwillTour14">오시는길</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="content">
				<div id="content_header">
					<div id="content_title">
						<h1>자주 찾는 질문</h1>
					</div>
					<div id="content_filter">
						<ul id="content_filter_ul">
							<li><select id="filter1" name="search_filter">
									<option><span>전체</span></option>
									<option><span>해외항공권</span></option>
									<option><span>해외호텔</span></option>
							</select></li>
							<li id="search_input_li"><input id="search_input"
								placeholder="검색어를 입력해 주세요." /></li>
							<li id="search_btn"><span>검색</span></li>
						</ul>
					</div>
				</div>
				<div id="content1">
					<ul id="content1_ul">
						<li class="question"><span class="question_icon">Q</span> <span>호텔
								요금 방금 봤는데 다시 검색하니까 요금이 확인되지를 않습니다?</span> <span class="open_icon">&nbsp;</span>
						</li>
						<li class="answer"><span class="answer_icon">A</span> <span>
								객실 요금 및 보유 상황은 실시간으로 변동되므로, 다른 고객님께 준비된 객실이 판매된 경우 동일 요금 조회가
								불가능할 수 있습니다. </span></li>
						<li class="question"><span class="question_icon">Q</span> <span>ITWILLTOUR
								사이트외에 해외박람회 상품을 이용하고 싶은데요</span> <span class="open_icon">&nbsp;</span>
						</li>
						<li class="answer"><span class="answer_icon">A</span> <span>
								객실 요금 및 보유 상황은 실시간으로 변동되므로, 다른 고객님께 준비된 객실이 판매된 경우 동일 요금 조회가
								불가능할 수 있습니다. </span></li>
						<li class="question"><span class="question_icon">Q</span> <span>24시간이내
								회신이 무슨뜻인가요?</span> <span class="open_icon">&nbsp;</span></li>
						<li class="answer"><span class="answer_icon">A</span> <span>
								객실 요금 및 보유 상황은 실시간으로 변동되므로, 다른 고객님께 준비된 객실이 판매된 경우 동일 요금 조회가
								불가능할 수 있습니다. </span></li>

						<li class="question"><span class="question_icon">Q</span> <span>ITWILLTOUR
								박람회 참관상품은 언제 예약해야 할까요?</span> <span class="open_icon">&nbsp;</span></li>
						<li class="answer"><span class="answer_icon">A</span> <span>
								중국 및 일본을 포함한 아시아는 최소 45일 ~ 최대 7일 전까지 선착순 접수중에 있으며, 유럽 및 미주는 최소
								90일 ~ 최대 15일 전까지 선착순 접수중에 있습니다. </span></li>
						<li class="question"><span class="question_icon">Q</span> <span>항공사
								마일리지로 좌석만 업그레이드 가능한가요?</span> <span class="open_icon">&nbsp;</span></li>
						<li class="answer"><span class="answer_icon">A</span> <span>
								해당 항공사 마일리지로 좌석만 업그레이드 하실 수는 있습니다. </span></li>
						<li class="question"><span class="question_icon">Q</span> <span>온라인으로만
								예약 가능한가요?</span> <span class="open_icon">&nbsp;</span></li>
						<li class="answer"><span class="answer_icon">A</span> <span>
								온라인 예약 외에도 ITWILLTOUR 공식인증예약센터를 통한 유선 예약이 가능합니다. </span></li>
						<li class="question"><span class="question_icon">Q</span> <span>ITWILLTOUR
								박람회 참관상품 예약에 어떤 서류가 필요한가요?</span> <span class="open_icon">&nbsp;</span>
						</li>
						<li class="answer"><span class="answer_icon">A</span> <span>
								여권사본과 명함(국문/영문) 구비하여 주시면 됩니다. 명함은 입장권 신청시 사용하고 있습니다. </span></li>
						<li class="question"><span class="question_icon">Q</span> <span>결제시한
								확인해주세요?</span> <span class="open_icon">&nbsp;</span></li>
						<li class="answer"><span class="answer_icon">A</span> <span>
								항공권 결제 시한은 고객님께서 직접 ITWILLTOUR 닷컴 홈페이지를 통해 확인 가능합니다. </span></li>
						<li class="question"><span class="question_icon">Q</span> <span>주말인데
								당장 월요일 체크인으로 예약이 가능한가요?</span> <span class="open_icon">&nbsp;</span></li>
						<li class="answer"><span class="answer_icon">A</span> <span>
								호텔 상품 중 제공되는 객실 상태가 "바로확정"으로 제공되는 객실에 한해서 예약 진행이 가능합니다. </span></li>
						<li class="question"><span class="question_icon">Q</span> <span>공항에서
								호텔로 이동하는 픽업 서비스를 예약 하고 싶은데 가능할까요?</span> <span class="open_icon">&nbsp;</span>
						</li>
						<li class="answer"><span class="answer_icon">A</span> <span>
								네, 가능합니다. 지역마다 셔틀버스, 미니버스, 승용차 등의 이용가능한 수단이 상이 할 수 있으며 요금도 차이가
								있으니, 상품담당자분께 문의 부탁드립니다. </span></li>
					</ul>
				</div>
				<div id="content_dummy">
					<div id="inquiry_btn">
						<span>문의하기</span>
					</div>
					<div id="content2">
						<div id="content2_ul">
							<span class="page_arrow" id="first_arrow"><a> <!--처음 게시물 화살표-->
							</a></span> <span class="page_arrow" id="prev_arrow"><a> <!--이전 게시물 화살표-->
							</a></span> <span class="page_num"><a class="now_page">1</a></span> <span
								class="page_num"><a>2</a></span> <span class="page_num"><a>3</a></span>
							<span class="page_num"><a>4</a></span> <span class="page_num"><a>5</a></span>
							<span class="page_num"><a>6</a></span> <span class="page_num"><a>7</a></span>
							<span class="page_num"><a>8</a></span> <span class="page_num"><a>9</a></span>
							<span class="page_num"><a>10</a></span> <span class="page_arrow"
								id="next_arrow"><a> <!--다음 게시물 화살표-->
							</a></span> <span class="page_arrow" id="last_arrow"><a> <!--마지막 게시물 화살표-->
							</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer_wrap">
		<div id="footer">
			<div id="footer_div1_wrap">
				<div id="footer_div1">
					<div id="footer_div1_div1">
						<span>ITWILLTOUR 모바일앱을 소개 합니다.</span>
					</div>
					<div id="footer_div1_div2" class="slide">
						<ul>
							<li><span class="app_icon" id="app_i">I</span>ITWILLTOUR -
								해외여행, 항공, 호텔, 현지투어, 국내여행 하나면 돼!</li>
							<li><span class="app_icon" id="app_a">A</span>ITWILLTOUR 항공
								- 전세계 최저가 항공권 실시간 예약!</li>
							<li><span class="app_icon" id="app_h">H</span>ITWILLTOUR 호텔
								- 전세계 호텔 쉽고 빠른 최저가 예약!</li>
							<li><span class="app_icon" id="app_i">I</span>ITWILLTOUR -
								해외여행, 항공, 호텔, 현지투어, 국내여행 하나면 돼!</li>
						</ul>
					</div>
					<div id="footer_div1_div3">
						<span class="sns_icon" id="facebook_icon">&nbsp;</span> <span
							class="sns_icon" id="instargram_icon">&nbsp;</span> <span
							class="sns_icon" id="blog_icon">&nbsp;</span> <span
							class="sns_icon" id="kakaoplus_icon">&nbsp;</span> <span
							class="sns_icon" id="youtube_icon">&nbsp;</span> <span
							class="sns_icon" id="kakaostory_icon">&nbsp;</span>
					</div>
				</div>
			</div>
			<div id="footer_div2">
				<div id="footer_div2_div1">
					<span class="after_bar">회사소개&nbsp;&nbsp;&nbsp;</span> <span
						class="after_bar">&nbsp;&nbsp;&nbsp;이용약관&nbsp;&nbsp;&nbsp;</span>
					<span class="after_bar">&nbsp;&nbsp;&nbsp;개인정보처리방침&nbsp;&nbsp;&nbsp;</span>
					<span class="after_bar">&nbsp;&nbsp;&nbsp;여행약관&nbsp;&nbsp;&nbsp;</span>
					<span class="after_bar">&nbsp;&nbsp;&nbsp;해외여행자보험&nbsp;&nbsp;&nbsp;</span>
					<span class="after_bar">&nbsp;&nbsp;&nbsp;마케팅제휴&nbsp;&nbsp;&nbsp;</span>
					<span>&nbsp;&nbsp;&nbsp;공식인증예약센터 검색</span>
				</div>
			</div>
			<div id="footer_div3">
				<div id="footer_div3_div1">
					<span class="after_bar" style="font-weight: 500;">(주)ITWILLTOUR&nbsp;&nbsp;&nbsp;</span>
					<span class="after_bar">&nbsp;&nbsp;&nbsp;대표 : 유재석,
						박명수&nbsp;&nbsp;&nbsp;</span> <span>&nbsp;&nbsp;&nbsp;주소 : 강남구 테헤란로
						124 4층</span>
				</div>
				<div id="footer_div3_div2">
					<span class="after_bar">사업자등록번호 :
						000-00-000000&nbsp;&nbsp;&nbsp;</span> <span class="after_bar">&nbsp;&nbsp;&nbsp;<span
						style="text-decoration: underline; font-weight: 600;">사업자정보확인</span>&nbsp;&nbsp;&nbsp;
					</span> <span class="after_bar">&nbsp;&nbsp;&nbsp;통신판매업신고번호 :
						아이티윌00-0000호&nbsp;&nbsp;&nbsp;</span> <span>&nbsp;&nbsp;&nbsp;관광사업자
						등록번호 : 제0000-000000호</span>
				</div>
				<div id="footer_div3_div3">
					<span class="after_bar">개인정보 보호책임자 : 정형돈 &nbsp;&nbsp;&nbsp;</span>
					<span class="after_bar">&nbsp;&nbsp;&nbsp;영업보증보험 : 00억 0천만원
						가입&nbsp;&nbsp;&nbsp;</span> <span class="after_bar">&nbsp;&nbsp;&nbsp;팩스:
						00-000-0000&nbsp;&nbsp;&nbsp;</span> <span
						style="font-size: 15px; font-weight: 700;">&nbsp;&nbsp;&nbsp;<span
						id="headset_icon"></span>&nbsp;<span
						style="font-size: 13px; font-weight: 700;">고객센터</span> 1577-1233
					</span>
				</div>
			</div>
			<div id="footer_div4">
				<p>※ 부득이한 사정에 의해 여행일정이 변경되는 경우 사전 동의를 받습니다.</p>
				<p>※ ITWILLTOUR는 개별 항공권 단독 판매, 단품 및 일부 여행상품에 대하여 통신판매중개자로서 통신판매의
					당사자가 아니며 해당상품의 거래정보 및 거래등에 대해 책임을 지지 않습니다.</p>
			</div>
			<div id="footer_div5">
				<p>COPYRIGHTⓒ ITWILLTOUR SERVICE INC. ALL RIGHTS RESERVED</p>
			</div>
		</div>
	</div>
</body>
</html>