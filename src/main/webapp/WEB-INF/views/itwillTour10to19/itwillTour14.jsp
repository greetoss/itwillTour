<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
    <script src="jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="jquery.ajax-cross-origin.min.js"></script>
    
    <!--추가-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  
    <!--JAVASCRIPT-->
    <script src="/itwillTour/resources/js/itwillTour14.js"></script>

    <!--css-->
    <link href="/itwillTour/resources/css/itwillTour15.css" rel="stylesheet">
    <link href="/itwillTour/resources/css/itwillTour14.css" rel="stylesheet">
    
    <!--추가-->
        <link type="text/css" rel="stylesheet" href="<%=cp %>/resources/css/main/base.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/resources/css/main/com2.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/resources/css/main/layout3.css">
        <link type="text/css" rel="stylesheet" href="<%=cp %>/resources/css/main/base.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/resources/css/main/com.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/resources/css/main/layout.css">

    

</head>

<body>
<div class="global_menu_wrap">
	<div class="fr">
	
		<ul class="maeng">
			<li><a href="/itwillTour/login">로그인</a></li>
			<li><a href="/itwillTour/join1">회원가입</a></li>
			<li><a href="/itwillTour/fqna">고객센터</a></li>
		</ul>
		
	</div>
</div>


<div class="inr">
    <div class="local_menu_wrap">
    
    	<div class="fl">
    	
    		<h1 class="logo"><a href="/itwillTour"><img src="<%=cp %>/resources/img/main_logo.png" style="margin-left: 40px"></a></h1>
			<div class="searchform_com">
				<div class="box_search deletable">
				
					<input type="text" id="input_keyword" name title="검색어" placeholder="검색어를 입력해 주세요" value="" class="input_keyword">
					
					<button type="submit" class="btn_search"></button>
					
				</div>
			</div>
			
   		</div>
   		
   		<div class="fr">
			<div class="private_menu">
	
				<ul class="maeng">
					<li><a href="/itwillTour/bag" class="link_my">마이메뉴</a></li>
					<li><a href="/itwillTour/bag" class="link_basket">장바구니</a></li>
				</ul>

			</div>
		</div>
	</div>
</div>

<div style="width:100%; height:1px;background:#eeeeee"></div>

<!-- Start Navigation Bar -->
<div class="mobile-menu">
  <i class="fa fa-bars fa-3x js-menu-icon"></i>
</div>
<nav class="navbar js-navbar">
  <ul class="menu">
  
<li>
<div style="width:1px; height:100%;background:#eeeeee"></div>
<a class="hasDropdown"><img src="<%=cp %>/resources/img/main/menu-logo.png"><b>전체메뉴</b><i class="fa fa-angle-down"></i></a>
<div style="width:1px; height:100%;background:#eeeeee"></div>
      <ul class="container has-multi" style="color: black">
        <div class="container__list container__list-multi">
          <div class="container__listItem">
            <div><h2>국내여행</h2></div>
          </div>
          <div style="width:100%; height:2px;background:#000000"></div>
          <div class="container__listItem">
            <div><h3><font color="#E5236D" >자유여행</font></h3></div>
          </div>
          <div class="container__listItem">
            <div onclick="javascript:location='hotel';">호텔/펜션/풀빌라</div>
          </div>
          <div class="container__listItem">
            <div onclick="javascript:location='airline';">항공</div>
          </div>
          <div class="container__listItem">
            <div onclick="javascript:location='ticket';">투어/입장권</div>
          </div>
          <div class="container__listItem">
            <div onclick="javascript:location='train';">기차</div>
          </div>
          <div class="container__listItem">
            <div onclick="javascript:location='korea';">국내여행패키지</div>
          </div>
        </div>
        
        <div class="container__list container__list-multi">
          <div class="container__listItem">
            <div><h2>해외여행</h2></div>
          </div>
          <div style="width:100%; height:2px;background:#000000"></div>
          <div class="container__listItem">
            <div onclick="javascript:location='asia';">일본/중국/홍콩</div>
          </div>
          <div class="container__listItem">
            <div onclick="javascript:location='sasia';">동남아시아</div>
          </div>
          <div class="container__listItem">
            <div onclick="javascript:location='europe';">유럽</div>
          </div>
          <div class="container__listItem">
            <div onclick="javascript:location='america';">미주</div>
          </div>
          <div class="container__listItem">
            <div onclick="javascript:location='pacific';">남태평양</div>
          </div>
          <div class="container__listItem">
            <div onclick="javascript:location='oversea';">해외여행 패키지(전체)</div>
          </div><div class="container__listItem"></div><div class="container__listItem"></div>
        </div>
        
        <div class="container__list container__list-multi">
          <div class="container__listItem">
            <div><h2>항공</h2></div>
          </div>
          <div style="width:100%; height:2px;background:#000000"></div>
          <div class="container__listItem">
            <div onclick="javascript:location='airline';">국내/해외항공</div>
          </div>
          <div class="container__listItem">
            <div onclick="javascript:location='airline';"></div>
          </div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div>
        </div>
        
        <div class="container__list container__list-multi">
          <div class="container__listItem">
            <div><h2>투어/입장권</h2></div>
          </div>
          <div style="width:100%; height:2px;background:#000000"></div>
          <div class="container__listItem">
          	 <div onclick="javascript:location='ticket';">투어/입장권</div></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div>
        </div>
        
        <div class="container__list container__list-multi">
          <div class="container__listItem">
            <div><h2>가이드북</h2></div>
          </div>
          <div style="width:100%; height:2px;background:#000000"></div>
          <div class="container__listItem">
            <div onclick="javascript:location='/itwillTour/guideFood';">여행지 음식</div>
          </div>
          <div class="container__listItem">
            <div onclick="javascript:location='/itwillTour/guideTraffic';">여행지 교통</div>
          </div>
          <div class="container__listItem">
            <div onclick="javascript:location='/itwillTour/guideWeather';">여행지 날씨</div>
          </div>
          <div class="container__listItem">
            <div onclick="javascript:location='/itwillTour/infographic';">인포그래픽</div>
          </div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div><div class="container__listItem"></div>
        </div>
      </ul>
</li>
    
<li>
      <a class="hasDropdown" href="/itwillTour/oversea">해외여행<i class="fa fa-angle-down"></i></a>
      <ul class="container">
        <div class="container__list">
        
		<div class="container__listItem">
			<div onclick="javascript:location='asia';">일본/중국/홍콩</div>
		</div>
		<div class="container__listItem">
			<div onclick="javascript:location='sasia';">동남아시아</div>
		</div>
		<div class="container__listItem">
			<div onclick="javascript:location='europe';">유럽</div>
		</div>
		<div class="container__listItem">
			<div onclick="javascript:location='america';">미주</div>
		</div>
		<div class="container__listItem">
			<div onclick="javascript:location='pacific';">남태평양</div>
		</div>
		<div class="container__listItem">
			<div onclick="javascript:location='oversea';">해외여행 패키지(전체)</div>
		</div>
          
        </div>
      </ul>
</li>
    
<li>
      <a class="hasDropdown" href="/itwillTour/korea">국내여행<i class="fa fa-angle-down"></i></a>
      <ul class="container">
        <div class="container__list">

		<div class="container__listItem">
			<div onclick="javascript:location='hotel';">호텔/펜션/풀빌라</div>
		</div>
		<div class="container__listItem">
			<div onclick="javascript:location='airline';">항공</div>
		</div>
		<div class="container__listItem">
			<div onclick="javascript:location='ticket';">투어/입장권</div>
		</div>
		<div class="container__listItem">
			<div onclick="javascript:location='train';">기차</div>
		</div>
		<div class="container__listItem">
			<div onclick="javascript:location='korea';">국내여행패키지</div>
		</div>
          
        </div>
      </ul>
</li>

<li>
      <a href="/itwillTour/airline">국내/해외항공</a>
</li>

<li>
      <a href="/itwillTour/hotel">호텔/펜션</a>
</li>

<li>
	<a href="/itwillTour/ticket">투어/입장권</a>
</li>

<li>
      <a class="hasDropdown" href="#">가이드북<i class="fa fa-angle-down"></i></a>
      <ul class="container">
        <div class="container__list">
		<div class="container__listItem">
			<div onclick="javascript:location='/itwillTour/guideFood';">여행지 음식</div>
		</div>
		<div class="container__listItem">
			<div onclick="javascript:location='/itwillTour/guideTraffic';">여행지 교통</div>
		</div>
		<div class="container__listItem">
			<div onclick="javascript:location='/itwillTour/guideWeather';">여행지 날씨</div>
		</div>
		<div class="container__listItem">
			<div onclick="javascript:location='/itwillTour/infographic';">인포그래픽</div>
		</div>
          
        </div>
      </ul>
</li>

</ul>
</nav>

<!-- End Navigation Bar -->

<div style="width:100%; height:1px;background:#000000"></div>
    
    
    <div id="container" style="background-color: #ffffff;">
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
                                <li><a href="itwillTour13">문의내역</a></li>
                                <li><a href="itwillTour12">공지사항</a></li>
                                <li style="border-bottom:none;"><a href="itwillTour14" id="now_menu">오시는길</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="content">
                <div id="content_article1">
                    <div><span id="content_title">오시는길</span></div>
                </div>
                <div id="content_article2">
                    <img src="/itwillTour/resources/img/map.png" id="map">
                </div>
                <div id="content_article3">
                    <table id="article3_table">
                       <tr>
                           <th>주소</th>
                           <td>서울특별시 강남구 테헤란로 124( 역삼동,삼원타워 )4층</td>
                       </tr>
                       <tr>
                        <th>연락처</th>
                        <td>· 대표전화 : 00-0000-0000 · 팩스 : 00-000-0000</td>
                    </tr>
                    <tr>
                        <th>지하철</th>
                        <td>
                            <span class="subway_icon">2호선</span>
                            <span class="bold_text">강남역 1번 출구</span> 도보 150m
                            <br><span class="bold_text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;역삼역 3번 출구</span> 도보 200m
                        </td>
                    </tr>
                    <tr>
                        <th>버스</th>
                        <td>
                            <div>
                                <span class="subway_icon" style="background:#395cb3;">간선</span>
                                <span>
                                    <span class="bold_text">강남역,역삼세무서(23-287) : </span> 146, 341, 360, 740, N13, N61
                                    <br><span class="bold_text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;강남역,12번출구(23-284) : </span> 146, 341, 360, 740, N13, N61
                                </span>
                            </div>
                            <div>
                                <span class="subway_icon" style="background:#db1218;">직행</span>
                                <span>
                                    <span class="bold_text">강남역,역삼세무서(23-287) : </span> 1100, 1700, 2000, 2000-1, 3002, 3007, 3200, 3300, 3400, 7007, 9303, 8001
                                    <br><span class="bold_text">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;강남역 12번 출구(23-284) : </span> 1100, 1700 ,2000 , 2000-1, 3600, 7007 ,9303 ,9600 ,8001
                                </span>  
                            </div>                          
                        </td>
                    </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    
    <div id="footer" style="padding-top: 900px;">
	<div data-component="@theme-CHPC0MAN0001S212" data-iid="1737568920"
		class="submain" style="position: relative;" data-v-57ed15ad>
		<div class="item item10"  style="background-color: #ffffff;">
			<div class="inr">
				<ul>
					<li><a href="#">SAFETY&JOY</a></li>
					<li><a href="#">티마크호텔</a></li>
					<li><a href="#">외국인여행</a></li>
					<li><a href="#">공연/전시</a></li>
					<li><a href="#">아이티윌투어상품권</a></li>
					<li><a href="#">제우스 </a></li>
					<li><a href="#">교육여행/단체</a></li>
					<li><a href="#">기업출장/단체</a></li>
					<li><a href="#">여행정보</a></li>
				</ul>
			</div>
		</div>
		<div class="item item11" style="background-color: #ffffff;">
			<div class="inr">
				<div class="ly_wrap">
					<div class="inr left">
						<div class="text_wrap big">
							<strong class="tit">아이티윌투어닷컴<br>고객센터
							</strong>
						</div>
						<strong class="tel">1577-1233</strong> <a href="#"
							class="txt arrow_r">자주 찾는 질문</a> <a href="#" class="txt arrow_r">ARS상담번호
							안내</a>
					</div>
					<div class="inr center">
						<ul>
							<li><strong>해외여행 문의</strong>
								<ul>
									<li>평일: 09:00~18:00</li>
									<li>※ 코로나 바이러스19로 인한 근무 시간 축소로<br>주말 및 야간 상담 서비스가 임시
										중단 됩니다.<br>더 나은 서비스로 찾아뵐 수 있도록 하겠습니다.
									</li>
								</ul> <strong>상담번호 안내</strong>
								<ul>
									<li>1번 예약상담</li>
									<li>2번 ARS 예약 확인 및 결제 확인</li>
									<li>3번 국내공연예매, 마일리지 및 제휴카드, 기타문의</li>
								</ul></li>
							<li><strong>국내여행/기업출장/교육여행 단체 문의</strong>
								<ul>
									<li>평일: 09:00~18:00</li>
								</ul> <strong>법인고객 전용상담 <span class="tel">02-6255-8002</span></strong> <strong>안심카드결제
									ARS <span class="tel">02-6255-8002</span>
							</strong> <a href="#" class="btn">카드/제휴혜택</a></li>
						</ul>
					</div>
					<div class="inr right">
						<a href="#"><img
							src="https://image.hanatour.com/usr/static/img/pc/temp/temp_man_item11_01.png"
							title="" data-src="" alt=""></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
		<div class="inr">
			<div class="service_info_wrap">
				<div class="fl">
					<dl>
						<dt style="width: 250px;">아이티윌투어 모바일앱을 소개 합니다.</dt>
						<dd>
							<div class="notice_list swiper-container v-swiper2">
								<div class="swiper-wrapper"></div>
							</div>
						</dd>
					</dl>
				</div>
				<div class="fr">
					<ul class="sns_list">
						<li><a href="#"
							target="_blank" class="facebook">facebook</a></li>
						<li><a href="#"
							target="_blank" class="instagram">instagram</a></li>
						<li><a href="#" target="_blank"
							class="blog">blog</a></li>
						<li><a href="#" target="_blank"
							class="kakaoplus">kakaoplus</a></li>
						<li><a href="#"
							target="_blank" class="youtube">youtube</a></li>
						<li><a href="#"
							target="_blank" class="kakaostory">kakaostory</a></li>
					</ul>
				</div>
			</div>
			<div class="company_info_wrap">
				<div class="fl">
					<ul class="company_provision">
						<li><a
							href="http://www.hanatourcompany.com/kor/main/main.asp?hanacode=main_bottom_01"
							target="_blank">회사소개</a></li>
						<li><a href="/els/prv/CHPC0PRV0004M200">이용약관</a></li>
						<li><a href="/els/prv/CHPC0PRV0002M200"><strong>개인정보처리방침</strong></a></li>
						<li><a href="/els/prv/CHPC0PRV0003M200">여행약관</a></li>
						<li><a href="/els/etc/CHPC0ETC0008M200">해외여행자보험</a></li>
						<li><a href="/els/etc/CHPC0ETC0001M200">마케팅제휴</a></li>
						<li><a href="/els/etc/CHPC0ETC0004M200">공식인증예약센터 검색</a></li>
					</ul>
					<div>
						<address>
							<span><strong>(주)아이티윌투어</strong></span><span>대표 : 115기 3조</span><span>주소
								: 서울특별시 강남구 테헤란로 124 4층 (역삼동, 삼원타워)</span>
						</address>
						<p>
							<span>사업자등록번호 : 220-86-20171</span><span><a
								href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp"
								target="_blank">사업자정보확인</a></span><span>통신판매업신고번호 : 강남 제-3339호</span><span>관광사업자
								등록번호 : 제1993-000006호</span>
						</p>
						<p>
							<span>개인정보 보호책임자 : 115기 3조</span><span>영업보증보험 : 22억 1천만원 가입</span><span>팩스:
								02-569-8069</span><span>이메일 : itwilltour@itwilltour.com</span><span><strong
								class="customer_center"><span>고객센터</span>  02-6255-8061</strong></span>
						</p>
						<p class="guide_txt">
							※ 부득이한 사정에 의해 여행일정이 변경되는 경우 사전 동의를 받습니다.<br> ※ 아이티윌투어는 개별
							항공권 단독 판매에 대하여 통신판매중개자로서 통신판매의 당사자가 아니며 해당상품의 거래정보 및 거래등에 대해 책임을
							지지 않습니다.
						</p>
						<p class="copy">COPYRIGHTⓒ ITWILLTOUR SERVICE INC. ALL RIGHTS
							RESERVED</p>
					</div>
				</div>
			</div>
		</div>


          <div class="certification_mark">
          <div class="list_merit">
          <div class="award_list_wrap">
          <div class="award_list swiper-container v-swiper2"> 
		  <div class="swiper-wrapper">
          
          <div id="show5">
         	  <div class="item swiper-slide"><span>
			  <img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-01.png" alt="로고"></span>대한민국<br>100대 브랜드</div>
	          <div class="item swiper-slide"><span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-02.png" alt="로고"></span>
	          한국능률협회선정<br>15년연속(2005~2019)<br>브랜드파워 1위</div> 
	          <div class="item swiper-slide"><span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-03.png" alt="로고"></span>
	          브랜드스톡선정<br>15년연속(2005~2019)<br>브랜드스타 1위</div> 
	          <div class="item swiper-slide"><span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-04.png" alt="로고"></span>
	          KMAC 선정<br>11년 연속(2009~2019)<br>한국산업의 고객만족도 여행사부문1위</div> 
          </div>
          
          <div id="show6" style="display: none;">
	          <div class="item swiper-slide"><span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-05.png" alt="로고"></span>
	          국가고객만족도(NCSI)<br>여행사 서비스업 부문 6년 연속 1위<br>(2014~2019)</div> 
	          <div class="item swiper-slide"><span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-06.png" alt="로고"></span>
	          한국능률협회선정<br>12년연속 (2017~2019)<br>한국에서 가장 존경받는 기업 대상</div> 
	          <div class="item swiper-slide"><span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-07.png" alt="로고"></span>
	          2016<br>존경받는사회공헌기업대상<br>메세나ㆍ문화예술부문 대상</div> 
	          <div class="item swiper-slide"><span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-12.png" alt="로고"></span>
	          2017 제5회<br>사랑의열매<br>기부 분야 금상 수상</div>
	      </div>
          </div></div> 
          
          <a onclick="show5();" href="javascript:void(0);" class="btn_prev">이전보기</a>
          <a onclick="show6();" href="javascript:void(0);" class="btn_next">다음보기</a></div> 
          
          <ul class="travel_mark"><li><a href="http://tourinfo.or.kr/standard/standard_01.asp" target="_blank">
          <span><img src="https://image.hanatour.com/usr/static/img/pc/com/mark_01.png" alt="mark"></span>국외여행상품 정보제공 표준안 참여여행사</a></li> 
          <li><a style="cursor:pointer"><span><img src="https://www.eprivacy.or.kr/images/mng/sub/mark1_eprivacy.png" alt="mark"></span>
          개인정보보호우수사이트</a></li> <li><a href="http://www.kca.go.kr/ccm/certSystemOutlineView.do" target="_blank">
          <span><img src="https://image.hanatour.com/usr/static/img/pc/com/mark_03.png" alt="mark"></span>CCM</a></li></ul></div></div></div></div> <!----> 
          <div id="printArea">
          </div>
</body>

</html>