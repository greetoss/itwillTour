<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <title>아이티윌투어 :: 1등 여행사</title>
    <meta charset="utf-8">

    <!--구글 웹폰트(Noto Sans KR)-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">

    <!--JQUERY(AJAX)-->
    <script src="/itwillTour/resources/js/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="/itwillTour/resources/js/jquery.ajax-cross-origin.min.js"></script>

    <!--JAVASCRIPT-->
    <script src="/itwillTour/resources/js/itwillTour16.js"></script>

    <!--css-->
    <link href="/itwillTour/resources/css/itwillTour15.css" rel="stylesheet">
    <link href="/itwillTour/resources/css/itwillTour16.css" rel="stylesheet">

</head>

<body>
    <div id="header_container">
        <div id="header_wrap">
            <div id="header">
                <div id="header_div1_wrap">
                    <div id="header_div1">
                        <div><a>로그인</a></div>
                        <div><a>회원가입</a></div>
                        <div><a>고객센터</a></div>
                    </div>
                </div>
                <div id="header_div2">
                    <div id="logo_div"><a></a></div>
                    <div id="search_div">
                        <input id="header_search" placeholder="검색어를 입력해 주세요" />
                        <span id="header_search_btn">
                            <!--돋보기 아이콘-->
                        </span>
                        <!--검색창-->
                    </div>
                    <div id="hot_chart"><a>
                            <!--검색어-->
                        </a></div>
                    <div id="mypage_div">
                        <a id="mymenu_icon">마이메뉴</a>
                        <a id="reservation_icon">예약내역</a>
                        <a id="shoppingcart_icon">장바구니</a>
                    </div>
                </div>
                <div id="header_div3_wrap">
                    <div id="header_div3">
                        <div id="all_menu_div"><span id="all_menu_icon"></span><span id="all_menu">전체메뉴</span></div>
                        <div id="header_nav_div">
                            <span><a id="1">미리 준비하는 해외여행</a></span>
                            <span><a id="2">국내여행</a></span>
                            <span><a id="3">항공</a></span>
                            <span><a id="4">호텔/펜션</a></span>
                            <span><a id="5">투어/입장권</a></span>
                            <span><a id="6">테마여행</a></span>
                            <span><a id="7">럭셔리여행</a></span>
                        </div>
                        <div id="header_nav_div2">
                            <span><a>여행기획전</a></span>
                            <span><a>기업여행</a></span>
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
                            <li><a href="itwillTour10">자주 찾는 질문</a></li>
                            <li><a href="itwillTour11">문의하기</a></li>
                            <li><a href="itwillTour13" id="now_menu">문의내역</a></li>
                            <li><a href="itwillTour12">공지사항</a></li>
                            <li style="border-bottom:none;"><a href="itwillTour14">오시는길</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="content">
                <div id="content_article1">
                    <div><span id="content_title">1:1문의내역</span></div>
                </div>
                <div id="content_article2">
                    <table id="article2_tab">
                        <tr>
                            <td id="title_td">
                                <span id="category">[일반]</span>
                                하나투어 마일리지 및 여행상품권 유효기간 6개월 연장 안내
                                <span>2021.01.01</span>
                            </td>
                        </tr>
                        <tr>
                            <td id="content_td">
                                <p>
                                    코로나19 상황이 지속됨에 따라 고객님의 편의를 위해 아래와 같이 하나투어 마일리지 및 여행상품권에 대한 유효기간을 6개월 연장해 드립니다.
                                    자세한 연장 대상 및 변경 기준은 아래 상세 내용으로 반드시 확인 부탁드리며, 연장된 유효기간 내 하나투어 마일리지 및 여행상품권을 이용해주십시오.
                                    저희 하나투어에 항상 많은 관심과 격려 보내주시는 고객님께 진심으로 감사드립니다.
                                </p>
                                <p id="answer"></p>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="content_article3">
                    <span id="list_btn">목록</span>
                </div>

            </div>
        </div>
    </div>
    <div id="footer_wrap">
        <div id="footer">
            <div id="footer_div1_wrap">
                <div id="footer_div1">
                    <div id="footer_div1_div1"><span>ITWILLTOUR 모바일앱을 소개 합니다.</span></div>
                    <div id="footer_div1_div2" class="slide">
                        <ul>
                            <li><span class="app_icon" id="app_i">I</span>ITWILLTOUR - 해외여행, 항공, 호텔, 현지투어, 국내여행 하나면 돼!
                            </li>
                            <li><span class="app_icon" id="app_a">A</span>ITWILLTOUR 항공 - 전세계 최저가 항공권 실시간 예약!</li>
                            <li><span class="app_icon" id="app_h">H</span>ITWILLTOUR 호텔 - 전세계 호텔 쉽고 빠른 최저가 예약!</li>
                            <li><span class="app_icon" id="app_i">I</span>ITWILLTOUR - 해외여행, 항공, 호텔, 현지투어, 국내여행 하나면 돼!
                            </li>
                        </ul>
                    </div>
                    <div id="footer_div1_div3">
                        <span class="sns_icon" id="facebook_icon">&nbsp;</span>
                        <span class="sns_icon" id="instargram_icon">&nbsp;</span>
                        <span class="sns_icon" id="blog_icon">&nbsp;</span>
                        <span class="sns_icon" id="kakaoplus_icon">&nbsp;</span>
                        <span class="sns_icon" id="youtube_icon">&nbsp;</span>
                        <span class="sns_icon" id="kakaostory_icon">&nbsp;</span>
                    </div>
                </div>
            </div>
            <div id="footer_div2">
                <div id="footer_div2_div1">
                    <span class="after_bar">회사소개&nbsp;&nbsp;&nbsp;</span>
                    <span class="after_bar">&nbsp;&nbsp;&nbsp;이용약관&nbsp;&nbsp;&nbsp;</span>
                    <span class="after_bar">&nbsp;&nbsp;&nbsp;개인정보처리방침&nbsp;&nbsp;&nbsp;</span>
                    <span class="after_bar">&nbsp;&nbsp;&nbsp;여행약관&nbsp;&nbsp;&nbsp;</span>
                    <span class="after_bar">&nbsp;&nbsp;&nbsp;해외여행자보험&nbsp;&nbsp;&nbsp;</span>
                    <span class="after_bar">&nbsp;&nbsp;&nbsp;마케팅제휴&nbsp;&nbsp;&nbsp;</span>
                    <span>&nbsp;&nbsp;&nbsp;공식인증예약센터 검색</span>
                </div>
            </div>
            <div id="footer_div3">
                <div id="footer_div3_div1">
                    <span class="after_bar" style="font-weight:500;">(주)ITWILLTOUR&nbsp;&nbsp;&nbsp;</span>
                    <span class="after_bar">&nbsp;&nbsp;&nbsp;대표 : 유재석, 박명수&nbsp;&nbsp;&nbsp;</span>
                    <span>&nbsp;&nbsp;&nbsp;주소 : 강남구 테헤란로 124 4층</span>
                </div>
                <div id="footer_div3_div2">
                    <span class="after_bar">사업자등록번호 : 000-00-000000&nbsp;&nbsp;&nbsp;</span>
                    <span class="after_bar">&nbsp;&nbsp;&nbsp;<span
                            style="text-decoration:underline; font-weight:600;">사업자정보확인</span>&nbsp;&nbsp;&nbsp;</span>
                    <span class="after_bar">&nbsp;&nbsp;&nbsp;통신판매업신고번호 : 아이티윌00-0000호&nbsp;&nbsp;&nbsp;</span>
                    <span>&nbsp;&nbsp;&nbsp;관광사업자 등록번호 : 제0000-000000호</span>
                </div>
                <div id="footer_div3_div3">
                    <span class="after_bar">개인정보 보호책임자 : 정형돈 &nbsp;&nbsp;&nbsp;</span>
                    <span class="after_bar">&nbsp;&nbsp;&nbsp;영업보증보험 : 00억 0천만원 가입&nbsp;&nbsp;&nbsp;</span>
                    <span class="after_bar">&nbsp;&nbsp;&nbsp;팩스: 00-000-0000&nbsp;&nbsp;&nbsp;</span>
                    <span style="font-size:15px; font-weight:700;">&nbsp;&nbsp;&nbsp;<span
                            id="headset_icon"></span>&nbsp;<span style="font-size:13px; font-weight:700;">고객센터</span>
                        1577-1233</span>
                </div>
            </div>
            <div id="footer_div4">
                <p>※ 부득이한 사정에 의해 여행일정이 변경되는 경우 사전 동의를 받습니다.</p>
                <p>※ ITWILLTOUR는 개별 항공권 단독 판매, 단품 및 일부 여행상품에 대하여 통신판매중개자로서 통신판매의 당사자가 아니며 해당상품의 거래정보 및 거래등에 대해 책임을 지지
                    않습니다.</p>
            </div>
            <div id="footer_div5">
                <p>COPYRIGHTⓒ ITWILLTOUR SERVICE INC. ALL RIGHTS RESERVED</p>
            </div>
        </div>
    </div>
</body>

</html>