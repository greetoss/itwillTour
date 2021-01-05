<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
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
	<script src="/itwillTour/resources/js/itwillTour11.js"></script>
    
	<!--css-->
	<link href="/itwillTour/resources/css/itwillTour15.css" rel="stylesheet">
	<link href="/itwillTour/resources/css/itwillTour11.css" rel="stylesheet">
    
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
                                <li><a id="now_menu" href="itwillTour11">문의하기</a></li>
                                <li><a href="itwillTour13">문의내역</a></li>
                                <li><a href="itwillTour12">공지사항</a></li>
                                <li style="border-bottom:none;"><a href="itwillTour14">오시는길</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div id="content">
                    <div id="content_div1">
                        <p>문의하기</p>
                    </div>
                    <div id="content_div2">
                        <div id="content_div2_guide">
                            <p id="msg1">&nbsp;&nbsp;문의하시기 전 확인해 주세요.</p>
                            <ul>
                                <li>· 하나투어는 고객님의 소중한 의견을 빠르고 정확하게 해결하기 위해 최선을 다하겠습니다.</li>
                                <li>· 예약한 상품에 대한 문의는 최초 예약상담처를 통해 문의해 주세요.</li>
                                <li>· 상품 견적 관련 문의는 우측 견적문의 메뉴 또는 하나투어 고객센터(1577-1233)로 문의해 주세요.</li>
                                <li>· 예약 상품의 취소는 예약하신 대리점을 통해 문의해 주세요. (취소 시 위약금 발생)</li>
                                <li>· 문의에 대한 답변은 <span>마이 페이지</span>에서 확인할 수 있습니다.</li>
                                <li>· 여행상품의 판매 및 상담은 전국의 하나투어 <span>공식인증예약센터</span>와 함께 하고 있습니다.</li>
                            </ul>
                        </div>
                        <div id="content_div2_table" style="display:none;">
                            <table>
                                <tr>
                                    <td>단체맞춤여행</td>
                                    <td>단체항공권</td>
                                </tr>
                                <tr>
                                    <td>허니문</td>
                                    <td>제우스</td>
                                </tr>
                                <tr>
                                    <td>해외트렌드</td>
                                    <td>트래비즈</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    
                    <form id="myForm" name="myForm" method="post" enctype="multipart/form-data">
                    
                    <input name="user_name" value="홍길동" type="hidden"/>
                    <input name="user_tel" value="010-6608-0000" type="hidden"/>
                    <input name="user_email" value="test@itwilltour.com" type="hidden"/>
                    
                    <div id="content_div3">
                        <div id="content_div3_div1">
                            <table id="content_div3_table">
                                <tr>
                                    <th><span id="after_attention" style="font-weight:600;">문의유형</span></th>
                                    <td>
                                        <select name="category">
                                            <option value="">상담유형</option>
                                            <option value="국내여행">국내여행</option>
                                            <option value="기타상담">기타상담</option>
                                            <option value="법인여행">법인여행</option>
                                            <option value="안전제안공모">안전제안공모</option>
                                            <option value="해외여행">해외여행</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>작성자</th>
                                    <td><span>홍길동</span></td>
                                </tr>        
                                <tr style="display:none;">
                                    <th>예약코드</th>
                                    <td>
                                        <p>
                                            <select>
                                                <option>예약번호선택</option>
                                                <option>직접입력</option>
                                            </select>
                                            <span>예약확인</span>
                                        </p>
                                        <p id="text_orange">예약코드를 등록해주세요.(예약코드:영문 2글자 + 숫자 조합)</p>
                                        <p class="before_attention" style="font-size:13px; color:#666;">문의내용과 관련된 예약코드를 입력해 주세요. 문의내용과 무관할 경우 입력하지 않으셔도 됩니다.</p>
                                    </td>
                                </tr>     
                                <tr>
                                    <th><span  id="after_attention" style="font-weight:600;">답변알림수단</span></th>
                                    <td>
                                        <p>
                                            <input type="radio" name="answerMethod" value="휴대폰" for="cell_text" checked>
                                            <span id="cell_text" style="margin-right:90px;">
                                            	휴대폰 (010-6608-1812)
                                            </span>
                                            <input type="radio" name="answerMethod" value="이메일" for="mail_text">
                                            <span id="mail_text" style="margin-right:10px;">
                                            	이메일 (test@itwilltour.com)
                                            </span>
                                            <span id="modify_btn" style="display:none;">정보수정</span>
                                        </p>
                                        <p  class="before_attention" style="font-size:13px; color:#666; line-height:14px;">
                                            문의하신 내용에 답변이 등록되면 휴대폰(카카오 알림톡, 카카오 미설치 시 SMS 문자) 또는 이메일로 알림을 드립니다.
                                            <br>&nbsp;&nbsp;&nbsp;&nbsp;답변 내용은 마이페이지에서도 확인하실 수 있습니다. 휴대폰/이메일 정보수정은 '마이페이지>개인정보>회원정보수정'에서 진행해주세요.
                                        </p>
                                    </td>
                                </tr>                             
                                <tr>
                                    <th><span id="after_attention" style="font-weight:600;">제목</span></th>
                                    <td>
                                        <p><input placeholder="제목을 입력해 주세요." name="subject" style="padding:10px; width:755px; height:42px; border:1px solid #ddd; font-size:14px;"/></p>
                                    </td>
                                </tr>
                                <tr>
                                    <th><span id="after_attention" style="font-weight:600;">
                                        문의내용
                                    </span></th>
                                    <td>
                                        <p style="padding:10px; width:755px; height:255px; border:1px solid #ddd;">
                                            <textarea name="content" placeholder="최대 2500자까지 입력 가능합니다. 문의할 내용을 입력해 주세요." style="overflow:hidden; width:100%; height:100%; border:none; resize:none; font-size:14px;"></textarea>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <th>파일첨부</th>
                                    <td>
                                        <p style="margin-bottom:5px;">
                                            <span class="file_click" id="file_click1"><span class="file_add">+</span></span>
                                            <span class="file_click" id="file_click2"><span class="file_add">+</span></span>
                                            <span class="file_click" id="file_click3"><span class="file_add">+</span></span>
                                        </p>
                                        <p>
                                        	<span class="file_delete" id="file_delete1">삭제</span>
                                        	<span class="file_delete" id="file_delete2">삭제</span>
                                        	<span class="file_delete" id="file_delete3">삭제</span>
                                        </p>
                                        <input type="file" id="file1" name="file1" style="display:none;">
                                        <input type="file" id="file2" name="file2" style="display:none;">
                                        <input type="file" id="file3" name="file3" style="display:none;">
                                        <p class="before_attention" style="font-size:13px; color:#666;">
                                            개당 3MB 미만의 BMP, GIF, JPG, JPEG, PNG, TIF 파일만 등록 가능합니다.
                                        </p>
                                        <p class="before_attention" style="font-size:13px; color:#666;">
                                            상품과 무관한 내용이거나 음란 및 불법적인 내용은 통보 없이 삭제될 수 있습니다.
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div id="content_div3_div2">
                            <div id="content_div3_div2_div1">
                                <span class="submit_btn" style="background:#5b606e;">취소</span>
                                <span onclick="submitForm()" class="submit_btn" style="background:#e5236d;">등록</span>
                            </div>
                        </div>
                    </div>               
                </form>	
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
                        <span class="after_bar">&nbsp;&nbsp;&nbsp;<span style="text-decoration:underline; font-weight:600;">사업자정보확인</span>&nbsp;&nbsp;&nbsp;</span>
                        <span class="after_bar">&nbsp;&nbsp;&nbsp;통신판매업신고번호 : 아이티윌00-0000호&nbsp;&nbsp;&nbsp;</span>
                        <span>&nbsp;&nbsp;&nbsp;관광사업자 등록번호 : 제0000-000000호</span>
                    </div>
                    <div id="footer_div3_div3">
                        <span class="after_bar">개인정보 보호책임자 : 정형돈 &nbsp;&nbsp;&nbsp;</span>
                        <span class="after_bar">&nbsp;&nbsp;&nbsp;영업보증보험 : 00억 0천만원 가입&nbsp;&nbsp;&nbsp;</span>
                        <span class="after_bar">&nbsp;&nbsp;&nbsp;팩스: 00-000-0000&nbsp;&nbsp;&nbsp;</span>
                        <span style="font-size:15px; font-weight:700;">&nbsp;&nbsp;&nbsp;<span id="headset_icon"></span>&nbsp;<span style="font-size:13px; font-weight:700;">고객센터</span> 1577-1233</span>
                    </div>
                </div>    
                <div id="footer_div4">
                    <p>※ 부득이한 사정에 의해 여행일정이 변경되는 경우 사전 동의를 받습니다.</p>
                    <p>※ ITWILLTOUR는 개별 항공권 단독 판매, 단품 및 일부 여행상품에 대하여 통신판매중개자로서 통신판매의 당사자가 아니며 해당상품의 거래정보 및 거래등에 대해 책임을 지지 않습니다.</p>
                </div>        
                <div id="footer_div5">
                    <p>COPYRIGHTⓒ ITWILLTOUR SERVICE INC. ALL RIGHTS RESERVED</p>
                </div>   
            </div>
        </div>
    </body>
    
    </html>