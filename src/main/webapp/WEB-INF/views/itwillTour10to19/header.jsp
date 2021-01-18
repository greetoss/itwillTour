<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- JSTL -->
<% 
	request.setCharacterEncoding("UTF-8"); //post 방식일때 한글 깨짐 방지 (request에 담겨오는 모든 언어를 UTF-8로 인코딩 해주기)
	String cp = request.getContextPath(); //접속 주소 단축
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <title>아이티윌투어 :: 1등 여행사</title>
    <link type="text/css" rel="stylesheet" href="<%=cp %>/resources/css/main/base.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/resources/css/main/com2.css">
    <link type="text/css" rel="stylesheet" href="<%=cp %>/resources/css/main/layout3.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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
    	
    		<h1 class="logo"><a href="/itwillTour"><img src="<%=cp %>/resources/image/main_logo.png" style="margin-left: 40px"></a></h1>
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
<a class="hasDropdown"><img src="<%=cp %>/resources/image/main/menu-logo.png"><b>전체메뉴</b><i class="fa fa-angle-down"></i></a>
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
</body>
</html>
