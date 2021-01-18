<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이티윌투어 :: 1등 여행사</title>
   
<%-- <link rel="stylesheet" href="<%=cp %>/resources/css/krlist24.css" type="text/css"/> --%>
<link rel="stylesheet" href="<%=cp %>/resources/css/detail/detail1.css" type="text/css"/>
<link rel="stylesheet" href="<%=cp %>/resources/css/detail/detail2.css" type="text/css"/>
<link rel="stylesheet" href="<%=cp %>/resources/css/detail/detail3.css" type="text/css"/>
<link rel="stylesheet" href="<%=cp %>/resources/css/detail/detail4.css" type="text/css"/>
<link rel="stylesheet" href="<%=cp %>/resources/css/detail/detail5.css" type="text/css"/>
<link rel="stylesheet" href="<%=cp %>/resources/css/detail/detail6.css" type="text/css"/>
<link rel="stylesheet" href="<%=cp %>/resources/css/detail/detail7.css" type="text/css"/>
<link rel="stylesheet" href="<%=cp %>/resources/css/detail/detail8.css" type="text/css"/>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="<%=cp%>/resources/js/detail_gu1.js"></script>

<script type="text/javascript">
	
 	function sendIt() {
 		
		var f = document.koreaData;
		
		var price = $("#price").text().replace("원","");
		alert(price);
		
		f.action = "<%=cp%>/bagIn?price=" + price;
		f.submit();
	} 

</script>

</head>
<body class="chrome" data-n-head="class">

<div id="wrapper">
<div id="screenArea">
<div id="wrap">	
	<jsp:include page="header.jsp"/>
<div id="container">
	<div class="inr">
		<div id="contents" class="contents" style="visibility: visible;">
			<div class="wfix">
				<div class="inr wide">
					<div class="ly_wrap prod_brief">
						<!-- 상세페이지 이미지 롤링배너 -->					
						<div class="inr">
							<div class="swiper-container prevNext pager v-swiper2 swiper-container-initialized swiper-container-horizontal">
								<div id="slide" class="swiper-wrapper" style="transform: translate3d(-674px, 0px, 0px); transition-duration: 0ms;">
									<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" style="width: 674px;" data-swiper-slide-index="4">
										<img src="" title="" data-src="" alt="">
									</div>
									<div class="swiper-slide swiper-slide-active" style="width: 674px;" data-swiper-slide-index="0">
										<img src="<%=cp %>/resources/image/list/detail/gu1/gu_1_hh.jpg" title="" data-src="" alt=""><!-- 쳌 사진-->
									</div>
									<div class="swiper-slide swiper-slide-next" style="width: 674px;" data-swiper-slide-index="1">
										<img src="<%=cp %>/resources/image/list/detail/gu1/gu_2_hh.jpg" title="" data-src="" alt="">
									</div>
									<div class="swiper-slide" style="width: 674px;" data-swiper-slide-index="2">
										<img src="<%=cp %>/resources/image/list/detail/gu1/gu_3_hh.jpg" title="" data-src="" alt="">
									</div>
									<div class="swiper-slide" style="width: 674px;" data-swiper-slide-index="3">
										<img src="<%=cp %>/resources/image/list/detail/gu1/gu_4_hh.jpg" title="" data-src="" alt="">
									</div>
									<div class="swiper-slide swiper-slide-duplicate-prev" style="width: 674px;" data-swiper-slide-index="4">
										<img src="<%=cp %>/resources/image/list/detail/gu1/gu_5_hh.jpg" title="" data-src="" alt="">
									</div>
									<div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" style="width: 674px;" data-swiper-slide-index="0">
										<img src="<%=cp %>/resources/image/list/detail/gu1/gu_1_hh.jpg" title="" data-src="" alt="">
									</div>
								</div>
								<div class="total swiper-pagination-fraction" style="visibility: visible;">
									<span id="pageNum"><input type="hidden" id="hidden" value="1">1</span>/<span>5</span>
								</div>
								<a id="prev" href="#none" class="prev big" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true"><span class="blind">이전</span></a>
								<a id="next" href="#none" class="next big" tabindex="0" role="button" aria-label="Next slide" aria-disabled="true"><span class="blind">다음</span></a>
								<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
							</div>
							<div class="option_wrap">
								<span class="prod_code">상품코드 <strong>${dto.code }</strong></span>
								<p>PG4151210501KEV</p><!-- 쳌 상품코드-->
								<div class="right_cont">
									<a href="#none" class="btn_print">인쇄하기</a>
									<a href="#none" class="btn_share">공유하기</a>
								</div>
							</div>																		
						</div>
						<!-- 이미지 옆 내용 -->
						<div class="inr right">
							<div class="option_wrap">
								<div class="right_cont">
									<a id="modal" href="#none" class="btn">여행상품 핵심정보</a>
								</div>
							</div>
							<div class="tag_group">
								<span class="grade type11">하나팩프리미엄<!-- 쳌 분류-->
                              	  <span class="tooltip">
                              	  	<span class="tooltiptext">
                              	  		<ul class="brand_info">
                              	  			<li>
                              	  				<strong class="nenara">${dto.title }</strong>
                              	  					<p >프리미엄 가치를 더한 상위 10% 고품격 패키지 브랜드.&nbsp;</p>
                              	  			</li>
                              	  		</ul>
                              	  	</span>
                              	  </span>
                              	</span>
                            </div>
                            <div>
                            	<p style="font-size: 26px;">괌 4박 5일#우리끼리#두짓타니 리조트#디럭스오션프론트#인생샷 남부관광#알프레도 스테이크</p><!-- 쳌 상품명-->
                            </div>
                            <div class="text_wrap">
                            	<strong class="item_title">${dto.subject }</strong>
                            	<p class="txt exclam">[일행끼리 진행되는 안심 괌여행] 괌 최고의 5성급 럭셔리 두짓타니 호텔 투숙! </p>
                            </div>
                            <div class="option_wrap">
                            	<span class="hash_group">
                            		<span>#SAFETY&amp;JOY</span>
                            	</span>
                            </div>
                            <div class="package_info_list"><!-- 쳌 정보1-->
                            	<span class="item item01">
                            		<span class="tit">4박 5일</span>
                            	</span>
                            	<span class="item item02 off">
                            		<span class="tit">국적가</span>
                            	<span class="tooltip">
                            		<span class="tooltiptext"><em>항공없이</em> 버스로 이동하는 투어 패키지 상품입니다.</span>
                            	</span>
                            	</span>
                            	<span class="item item03 off">
                            		<span class="tit">쇼핑 3회</span>
                            	</span>
                            	<span class="item item05">
                            		<span class="tit">단체행사</span>
                            		<span class="tooltip">
                            			<span class="tooltiptext"><em>우리 일행만</em> 단독으로 진행하는 패키지 상품입니다.</span>
                            		</span>
                            	</span>
                            </div>
                            <div class="decide_info">
                            	<span class="item">출발예정</span>
                            	<span class="item">일정예정</span>
                            	<span class="item">호텔예정</span>
                            	<span class="item">가격예정</span>
                            </div>
                            <div class="price_group">
                            	<p class="tag">성인 1인</p>
                            	<strong class="price">3,040,000</strong><!-- 쳌 가격1-->
                            	<strong class="price"><span>원</span></strong>
                            </div>
                        </div>								
					</div>
					<div class="ly_wrap prod_detail">
						<div class="inr">
							<!-- 여행 주요일정 -->
							<div class="cont_unit summary">
								<div class="text_wrap big top">
									<strong class="tit">여행 주요일정</strong><!-- 쳌 일정-->									
								</div>
								<dl>
									<dt>일정</dt>
										<dd>
											<p class="item_text"><span class="night_days">4박 5일</span></p>
											<p class="item_text air_info"><span>출발 : 2021.05.01(토) 13:35 → 2021.05.01(토) 16:50 / KE0923 / 총 09시간 15분 소요</span></p>
											<p class="item_text air_info"><span>도착 : 2021.05.05(수) 21:20 → 2021.05.05(수) 15:05 / KE0926 / 총 10시간 45분 소요</span></p>
										</dd>
									<dt>여행도시</dt>
										<dd>
											<span>인천-괌(4)-인천</span>
										</dd>
									<dt>예약현황</dt>
										<dd class="state">
											<span class="info">예약 : 0명</span>
											<span class="info">좌석 : 10석 (최소출발 : 성인10명)
                                        		<span class="tooltip">
                                        			<span class="tooltiptext">
                                        				최소 출발인원은 성인기준입니다.<br>당사는 최저행사인원이 충족되지 아니하여 여행계약을 해제하는 경우 여행개시 7일전까지 여행자에게 통지하여야 합니다.<br>
		        	                                    당사가 여행참가자 수 미달로 전항의 기일내 통지를 하지 아니하고 계약을 해제하는 경우 이미 지급받은 계약금 환급 외에 다음 각 항목의 1의 금액을 여행자에게 배상하여야 합니다.<br>
		                                                가. 여행개시 7일전(~7)까지 통지시 : 계약금 환급<br>
		                                                나. 여행개시 1일전(6~1)까지 통지시 : 여행요금의 30% 배상<br>
		                                                다. 여행개시 당일 통지시 : 여행요금의 50% 배상
                                            		</span>
                                            	</span>
                                            </span>
                                       	</dd>
                                </dl>
							</div>
							<hr class="pkg">
							<!-- 상품가격 -->
							<div class="cont_unit price">
								<div class="text_wrap big"><strong class="tit">상품가격</strong></div><!-- 쳌 가격2-->	
								<div class="tbl">
									<table class="type1">
										<colgroup>
											<col><col style="width: 28%;"><col style="width: 28%;"><col style="width: 28%;">
										</colgroup>
										<thead>
											<tr>
												<th>구분</th>
												<th>성인<p class="txt">만 12세 이상</p></th>
												<th>아동<p class="txt">만 12세 미만
													<span class="tooltip">
														<span class="tooltiptext">아동(만 12세 미만)<br>2009.01.19 ~ 2019.01.18</span>
													</span></p></th>
												<th>유아<p class="txt">만 2세 미만
													<span class="tooltip">
														<span class="tooltiptext">유아(만 2세 미만)<br>2019.01.19 ~ 2021.01.18<br></span>
													</span></p></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>기본상품</td>
												<td><span class="price">3,040,000</span><span>원</span></td>
												<td><span class="price">1,320,000</span><span>원</span></td>
												<td><span class="price">150,000</span><span>원</span></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="option_wrap">
									<ul class="list_bul dash"><!-- 쳌 정보2-->	
										<li>유류할증료 및 제세공과금은 유가와 환율에 따라 변동될 수 있습니다.</li>
										<li>아동, 유아요금은 성인 2인과 같은 방 사용조건이며, 미충족시 아동추가 요금이 발생합니다.</li>
										<li>1인 객실 사용시 추가요금 발생됩니다.
										<p>1인 객실 사용료 : 195,000원</p>
										<p>유럽인 경우 싱글베드 사용</p></li>
										<li>여행 기간 중 만 2세가 되는 경우 요금 별도 문의</li>
									</ul>
									<div class="right_cont mileage_save">
										<a href="#none" class="txt arrow_r">하나투어 마일리지<em>152,000<span class="icn mileage em"></span></em>적립예정</a>
										<ul class="list_bul billiard">
											<li>하나투어클럽 회원, 성인기준</li>
											<li>패키지 상품가 기준</li>
										</ul>
									</div>
								</div>								
							</div>	
							<hr class="pkg">
							<!-- 상품가격 밑 배너 -->
							<div class="cont_unit">
								<div class="card_theme">
									<div class="text_wrap big type">
										<strong class="tit">테마소개</strong>
									</div>
									<div class="js_tabs">
										<ul class="tabs">
											<li class="selected">
												<a href="#tabThm1">SAFETY&amp;JOY</a>
											</li>
										</ul>
										<div class="panels">
											<div id="tabThm1" class="panel selected">
												<div class="theme_box" style="background-image: url(&quot;https://image.hanatour.com/usr/manual/update/co/schedule/theme/237_01.jpg&quot;);">
													<p class="_tit tit"><strong>SAFETY&amp;JOY</strong></p>
													<p class="_tit_comt txt" style="white-space: pre-line;">고객님의 안전한 여행을 위한 하나투어의 체계적인 프로그램</p>
													<a href="https://www.hanatour.com/els/etc/CHPC0ETC0010M200?utm_source=pc&amp;utm_medium=banner_top&amp;utm_campaign=safetynjoy" target="_blank" class="btn_link">자세히 보기</a>
												</div>
											</div>
										</div>
									</div>
								</div>								
							</div>	
							<hr class="pkg">	
							<div class="cont_unit">
								<div class="text_wrap big"><strong class="tit">핵심 포인트</strong></div>
								<!-- 핵심포인트 -->
								<div class="js_tabs type3 keypoints link no_division">
									<ul class="tabs" style="">
										<li class="bene selected">
											<a href="#point01">기타</a>
										</li>
									</ul>
									<div class="panels cont_keypoints" style="">
										<div id="point01" class="item item01">

												<div class="text_wrap sml">
													<strong class="tit">예약 전, 이것만은 꼭!</strong>
												</div>
												<ul class="list_bul nostyle">
													<li>-입국 제한 해제시 출발 가능합니다.<br>
														-출발 가능 여부는 출발일 기준 1개월 전 안내드립니다.<br>
														-출입국 절차에 따라 일정은 변경될 수 있습니다.<br>
													</li>
												</ul>
												
												<div class="text_wrap sml">
													<strong class="tit">하나투어와 함께, 즐거운 안심여행 "SAFETY&JOY"</strong>
												</div>
												<ul class="list_bul nostyle">
													<li>① 호텔/레스토랑 : 높은 수준 방역 지침 준수<br>
														② 식사: 일행별 자리 세팅<br>
														③ 동행: 전용버스 좌석 이용 50% 이내<br>
														④ 차량: 주기적 소독/환기, 손소독제 비치<br>
														⑤ 관광: 실내외 관광지 사회적 거리두기 및 마스크 착용<br>
														⑥ 가이드 : 마스크착용, 발열체크, 안전지침준수<br>
													</li>
												</ul>
												
												<div class="text_wrap sml">
													<strong class="tit">우리끼리 괌 여행을 하나투어와 함께 해야하는 이유</strong>
												</div>
												<ul class="list_bul nostyle">
													<li>① 안전과 방역 프로그램을 갖춘 두짓타니 괌리조트 투숙<br>
														② 괌의 매력이 듬뿍 담김 남부지역 유명 포토스팟과 섬투어를 우리 일행끼리만 가이드분과 동행<br>
														(4~6명까지 동일 요금으로 가능하며, 4명 미만은 추가요금 인당 약 5만원 발생합니다)<br>
														③ 두짓타니 호텔 내 레스토랑 해산물& 스테이크 석식 포함<br>
														④ 현지 맛집 브로스 버거 및 데판야끼 런치 포함<br>
														⑤ 가이드와 카카오톡 연결로 상시 문의 가능<br>
													</li>
												</ul>
												
												<div class="text_wrap sml">
													<strong class="tit">괌 시내 관광</strong>
												</div>
												<ul class="list_bul nostyle">
													<li>① 괌에 왔다면, 이곳은 꼬옥! : 사랑의 절벽, 아가나 대성당, 스페인 광장<br>
													</li>
												</ul>
												
												<div class="text_wrap sml">
													<strong class="tit">전 일정 수신기 제공</strong>
												</div>
												<ul class="list_bul nostyle">
													<li>전 일정 수신기 사용으로 편리하게 여행하세요 :)<br>
													</li>
												</ul>
												
												<div class="text_wrap sml">
													<strong class="tit">괌 현지 사무실 운영</strong>
												</div>
												<ul class="list_bul nostyle">
													<li>① 괌 현지에 하나투어 사무실이 있어 더욱 안전하고 차별화된 서비스 제공<br>
													</li>
												</ul>


	
										
										</div>
									</div>
								</div>
								<div class="banner_wrap" style="margin-top: 0px;"></div>
							</div>	
							<hr class="pkg">
							<div class="cont_unit">
								<div class="text_wrap big">
									<strong class="tit">포함/불포함/선택경비 정보</strong><!-- 쳌 정보2-->	
								</div>
								<!-- 렌트 설명 -->
								<div class="prod_expense">
									<dl>
									
										<dt><span class="icn_pkg include">포함내역</span></dt>
										<dd><strong>[교통]</strong><p><b>왕복항공권</b>  <br></p>
											<strong>[제세금]</strong><p><b>국내항공세,현지항공세,관광진흥개발기금,전쟁보험료,유류할증료</b></p>
											<strong>[숙박]</strong><p><b>숙박비</b>  <br></p>
											<strong>[식사]</strong><p><b>식사비</b></p>
											<strong>[관광]</strong><p><b>관광지 입장료</b></p>
											<strong>[여행자보험]</strong><p><b>3억원 여행자보험</b></p>
											<strong>[인솔자]</strong><p><b>인솔자 경비(현지 기타경비외)</b></p>
											<strong>[가이드/기사]</strong><p><b>가이드/기사 경비</b></p>
										</dd>
										
										<dt><span class="icn_pkg except">불포함내역</span></dt>
										<dd>
											<strong>[가이드/기사]</strong><p><b>가이드/기사 경비 :</b> 인당 EUR 120 (15명 미만시 20~30유로의 추가 가이드/기사경비 발생)</p>
											<strong>[기타]</strong>
											<p class="">
												<b>비자 발급비 : </b> 가격문의 (★매우중요★<br>
												   한국국적이 아닌 경우 러시아 비자가 필요할 수 있으며 국적에 따라 비용은 상이합니다.<br>
												   비자발급에 최소 2주 이상 소요되오니, 꼭 예약하신 대리점에 미리 확인 부탁드립니다.)<br><br>
												   개인 여행경비(물값,자유시간시 개인비용 등)<br><br>
												   각종 매너팁(테이블, 객실팁, 포터비, 마사지팁 등)<br>
											</p>
											<p class="txt billiard">※매너팁은 소비자의 자율적 선택으로 지불여부에 따른 불이익은 없습니다.</p>
										</dd>
										
										<dt><span class="icn_pkg select">선택경비</span></dt>
										<dd><strong>[교통]</strong><p><b>항공리턴변경(문의)</b></p>
											<strong>[숙박]</strong><p><b>객실 1인 사용료: 1,200,000원 (유럽인의 경우 싱글베드 사용)</b><br>
										<p class="txt billiard">선택관광/기항지관광/현지투어에 관한 상세 내역은 패키지 상품상세를 참고바랍니다.</p>
										</dd>
									</dl>
								</div>
							</div>
							<hr class="pkg">
							<div class="cont_unit">
								<div class="text_wrap big type">
									<strong class="tit">상품약관</strong>
										
								</div>
								<div class="prod_terms">
									<p>본 상품의 예약과 취소는
									<b class="pk">국내여행 특별약관</b>이 적용됨을 알려드립니다.<br>특별약관 적용 시 표준약관보다 높은 취소수수료가 부과될 수 있으며 이 경우 동의절차를 구합니다.</p>
									<!-- 상품약관 펼치기 전 -->
									<dl id="more1" style="display: block;">
										<dt>계약금 규정</dt>
										<dd><b class="pk">예약일 기준 3일 이내에 1인당 2,021원을 납입하셔야합니다.</b></dd>
										<dt>취소료 규정</dt>
										<dd>이 상품은 항공(또는 선박)좌석 또는 호텔객실에 대한 비용을 선납해 놓은 상품으로서, 취소시 하단의 취소료가 적용됨을 양해해 주시기 바랍니다.</dd>
									</dl>
									<!-- 상품약관 펼친 후  -->
									<dl id="more2" style="display: none;">
										<dt>계약금 규정</dt>
											<dd><b class="pk">예약일 기준 3일 이내에 1인당 100,000원을 납입하셔야합니다.</b></dd>
											<dd>위 계약금은 호텔, 항공, 현지 사정 등에 의하여 변경될 수 있으며, 상황에 따라 고객님의 결제시한은 당겨질 수 있습니다.<br>
												<span class="pk">단, 아래 명시되어 있는 취소료 규정 적용기간에 예약하신 고객님께서는 계약금보다 취소 수수료가 높을 시 취소 수수료 금액을 계약금으로 납부하셔야 합니다.</span>
											</dd>
										<dt>취소료 규정</dt>
											<dd>이 상품은 항공(또는 선박)좌석 또는 호텔객실에 대한 비용을 선납해 놓은 상품으로서, 취소시 하단의 취소료가 적용됨을 양해해 주시기 바랍니다.</dd>
											<dd>여행개시 <b class="pk">5일전</b>(~5)까지 통보시 (2021년01월27일 이전): <b class="pk">계약금 환급</b></dd>
											<dd>여행개시 <b class="pk">4일전</b>(4)까지 통보시 (2021년01월28일) : 여행요금의 <b class="pk">30%</b> 배상 </dd>
											<dd>여행개시 <b class="pk">2일전</b>(3~2)까지 통보시 (2021년01월29일~2021년01월30일) : 여행요금의 <b class="pk">40%</b> 배상</dd>
											<dd>여행개시 <b class="pk">1일전</b>(1)까지 통보시 (2021년01월31일) : 여행요금의 <b class="pk">50%</b> 배상 </dd>
											<dd>여행개시 <b class="pk">당일</b> 통보시 : 여행요금의 <b class="pk">99%</b> 배상 </dd>
											<dd>※ 여행출발일 이전 상해,질병,입원,사망등으로 여행을 취소하는 경우 [진단서] 증빙 근거하여 환불이 가능하며 출발일 기준 7일이내 증빙서류를 제출해주시기 바랍니다.(상세규정은 약관참조)</dd> 
										<dt>취소위약금 증빙 제공 및 차액환급</dt>
											<dd>고객은 계약취소와 관련하여 취소수수료(여행사 인건비 포함) 부과내역에 대한 구체적인 증빙과 설명을 여행사에 요구할 수 있으며, 여행사는 관련 설명과 증빙을 제시하고 취소수수료 규정과 차액이 있는 경우 환급합니다.</dd>
										<dt>최저출발인원 미 충족 시 계약해제</dt>
											<dd>1. 당사는 최저행사인원이 충족되지 아니하여 여행계약을 해제하는 경우 당일여행의 경우 여행출발 24시간 이전까지, 1박2일 이상인 경우에는 여행출발 48시간 이전까지 여행자에게 통지하여야 합니다.</dd>
											<dd>2. 당사가 여행참가자 수 미달로 전항의 기일내 통지를 하지 아니하고 계약을 해제하는 경우 이미 지급받은 계약금 환급 외에 계약금 100% 상당액을 여행자에게 배상하여야 합니다.</dd>
											<dd></dd>
										<dt>1급 감염병의 발생으로 당사 또는 여행자의 계약해제</dt>
										<dd>① 1급 감염병 등의 발생으로 아래 각 호의 1에 해당하는 사유가 있는 경우 ‘당사’ 또는 여행자는 제 13조 제 1항의 손해배상액을 지급하지 아니하고 계약해제를 할 수 있습니다.</dd>
										<dd>가. 여행일정에 포함된 지역·시설에 대해 집합금지·시설폐쇄·시설운영중단 등 행정명령이 발령되어 계약을 이행할 수 없는 경우</dd>
										<dd>나. 계약체결 이후 여행지역이나 여행자의 거주(출발)지역이 특별재난지역으로 선포되어 계약을 이행할 수 없는 경우</dd>
										<dd>다. 계약체결 이후 필수 사회·경제활동 이외의 활동이 원칙적으로 금지(사회적 거리두기 3단계 및 이에 준하는 조치)되어 계약을 이행할 수 없는 경우</dd>
										<dd>② 계약체결 이후 여행지역에 재난사태가 선포되어 계약을 이행하기 상당히 어렵거나 계약체결 이후 감염병 위기경보 심각단계가 발령되고 정부의 여행 취소·연기 및 이동자제 권고(사회적 거리두기 2단계 및 이에 준하는 조치)등으로 계약을 이행하기 상당히 어려운 경우에는 ‘당사’ 또는 ‘여행자’는 계약해제를 할 수 있으며, 제 13조 제 1항의 손해배상액의 50%를 감경합니다.</dd>
									</dl>
									<a id="more" href="#none" class="btn more cls">더보기</a>
								</div>
							</div>
							<hr class="pkg">	
							<div class="safe_banner mb30">
								<a href="#none"><img src="https://image.hanatour.com/usr/static/img/pc/com/banner_safe_campaign_bar.png" title="안심결제 캠/페/인" data-src="" alt="안심결제 캠/페/인"></a>
							</div>
							<div class="cont_unit">
								<div class="text_wrap big">
									<strong class="tit"><em>예약시 유의사항</em></strong><!-- 쳌 정보3-->	
								</div>
								<!-- 예약시 유의사항 -->
								<div class="prod_notice">
									<ul class="list_bul nostyle">
										<li>■ 일반적인 사항<br>
											1. 상품가격은 항공, 호텔 공급과 수요등 시장상황에 따라 인상될 수 있습니다.<br>
											2. 예약시 여권상의 정확한 영문이름, 생년월일을 알려주시고, 반드시 여권사본을 예약처에 전달 부탁드립니다.<br>
											여권 상의 영문과 예약 시의 영문이 다를 경우 항공 좌석이 취소될 수 있으며 이에 따른 취소료 또는 추가 차액이 발생할 수 있습니다.<br>
											3. 여권/비자: △여권에 낙서 또는 메모를 하거나 기념도장을 찍은 경우, △페이지를 임의로 뜯어내는 경우, △신원정보면에 얼룩이 묻은 경우,<br>
											△여권 표지가 손상된 경우, △여권 잔여 유효기간 부족, △여권 사증란 부족한 경우 출입국 및 항공권 발권 등에 제한이 있을 수 있으므로<br>
											출발 전에 반드시 여권을 확인하여 주시기 바랍니다.<br>
											4. 해당 상품은 같은 일정의 상품들과 항공좌석을 공유하므로 타코드 선모객시 조기마감될 수 있습니다.<br>
											5. 예약 후 3일 이내에 1인당 총 상품가의 10%씩 예약금을 입금하여 주시기 바라며 미 입금시 대기로 전환될 수 있습니다.<br>
											6. 여권에 서명을 하지 않은 경우 공항에서 입국이 거부되거나 벌금이 부과될 수 있으니 출발 전 꼭 다시한번 확인하시길 바랍니다.<br>
											7. 한국국적이 아닌 외국국적의 경우 러시아 비자가 필요합니다. 외국국적일 경우 예약처에 문의해주시기 바랍니다.<br>
											8. 일정표 상의 예정 호텔은 부득이한 경우 동급의 다른 호텔로 변경가능합니다.<br>
											9. 해당 숙박 도시 호텔상황이 어려울 경우에는 인근 지역으로 숙박지가 변경될 수 있습니다.<br>
											10. 포함된 관광지가 휴관일 경우, 타 관광지로 대체될 수 있다는 점 참고 바랍니다.<br>
											11.3인 1실 사용 시 아래 내용 참고 부탁드립니다.<br>
											▶ 유럽은 3인 1실 사용시 싱글베드 3개가 아닌 트윈방에 EXTRA BED(간이 침대) 또는 쇼파베드가 제공되기 때문에 성인이 주무시기에 매우 불편하고<br>
											트윈방에 간이침대 하나가 더 들어가기 때문에 방이 상당히 협소해집니다. 따라서 홀수 예약시 한분은 독실사용을 권장합니다.<br>
											11. 러시아 호텔의 경우 3인 1실이 안되는 경우가 많습니다. 가능여부는 출발 2주전 체크가 가능하며 불가할 경우<br>
											트윈룸+싱글룸 숙박을 해야 하며 싱글차지가 부과됩니다.(예약처에 문의)<br>
											<br>
											★ 출발 전 인솔자분께서 준비물 및 기타 추가 전달사항 안내드리오니 대표 고객님의 연락처를 꼭 입력해주세요.★<br>
											<br>
											■ 항공정보<br>
											1. 좌석배정<br>
											기내 좌석 배정은 항공사의 고유 권한입니다. 항공사의 정해진 원칙에 따라서 탑승 수속이 이루어지니 이 부분은 양해해주시기 바랍니다.<br>
											항공사 별로 좌석배정 가능여부 및 웹체크인 시점이 다릅니다. 좌석 배정방법에 대한 안내는 출발 2-3일전 인솔자분께서 해피콜시 안내만 드리며<br>
											개인정보 보호를 위해 웹체크인은 고객님이 직접하셔야 합니다.<br>
											<br>
											2. 기내서비스<br>
											최소 출발 3일전 신청하셔야 합니다. 기내서비스는 확정사항이 아니므로, 인천공항수속시 확정여부 확인이 가능합니다.<br>
											(베시넷, 키즈밀, 특수식, 휠체어 등)<br>
											<br>
											3. 귀국일 변경<br>
											날짜에 따라 상이하오니 추가요금은 예약하신 대리점을 통해 문의 바랍니다.<br>
											<br>
											[항공마일리지 사용시 유의사항]<br>
											마일리지 좌석 승급이나 보너스 항공권 발권 후 변경, 취소시 항공사 규정에 따라 환불 수수료와 마일리지 패널티가 발생할 수 있습니다.
											(날짜별 상이, 문의요망)<br>
											<br>
										</li>
									</ul>
								</div>
							</div>
							<hr class="pkg">
							<!-- 가이드/인솔자 및 미팅정보 -->
							<div class="cont_unit">
								<div class="text_wrap big">
									<strong class="tit">가이드/인솔자 및 미팅정보</strong>
								</div>
								<div class="prod_meetinginfo">
									<dl>
										<dt>가이드</dt>
										<dd>인솔자와 가이드가 동일합니다</dd>
									</dl>
									<div class="meeting_detail">
										<div class="text_wrap mid type"><strong class="tit">미팅정보</strong></div><!-- 쳌 정보4 -->
										<dl>
											<dd>일시: 06월 07일 오전 11:05<br>
												장소: 인천공항 제2여객터미널 3층 출국장 H카운터 옆 여행사 미팅장소 하나투어 테이블

											</dd>
										</dl>
									</div>
								</div>
							</div>
							
							
							
							<!-- ------------------------------- -->
							<div class="js_tabs js_sticky v-tabs">
								<!-- 여행일정 Tabs  -->
								<ul class="tabs">
									<li class="selected" style="width: 25%;"><a href="#sticky01" title="현재 페이지">여행일정</a></li><!-- 쳌 정보5 -->
									<li style="width: 25%;" class=""><a href="#sticky02">호텔 &amp; 관광지</a></li>
									<li style="width: 25%;" class=""><a href="#sticky04">참고사항</a></li>
									<li style="width: 25%;" class=""><a href="#sticky06">상품평</a></li>
								</ul>
								<div class="panels prod_info_wrap">
									<div id="sticky01" class="panel selected">
										<div class="cont_unit schedule">
											<!-- 여행 1일차/2일차 ... Tabs -->
											<div class="js_tabs_wrap">												
												<div class="js_tabs type2 schdSw swiper-container v-tabs v-swiper2 swiper-container-initialized swiper-container-horizontal">
													<ul class="tabs swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
														<li class="nojq swiper-slide" style="width: 77px;">
															<a href="#acc_con0"><span>1일차</span></a>
														</li>
														<li class="nojq swiper-slide" style="width: 77px;">
															<a href="#acc_con1"><span>2일차</span></a>
														</li>
														<li class="nojq swiper-slide" style="width: 77px;">
															<a href="#acc_con2"><span>3일차</span></a>
														</li>
														<li class="nojq swiper-slide" style="width: 77px;">
															<a href="#acc_con3"><span>4일차</span></a>
														</li>
														<li class="nojq swiper-slide" style="width: 77px;">
															<a href="#acc_con3"><span>5일차</span></a>
														</li>
														
													</ul>
													<a href="#none" class="prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true"><span class="blind">이전일차</span></a>
													<a href="#none" class="next swiper-button-disabled" tabindex="0" role="button" aria-label="Next slide" aria-disabled="true"><span class="blind">다음일차</span></a>
													<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
												</div>
												<a id="dayAll" href="#none" class="btn">일정 전체펼침</a>
											</div>
											<div class="text_wrap">
												<p class="tit exclam em"><em>여행일정 변경에 관한 사전 동의안내</em></p>
												<p class="txt">여행일정은 계약체결 시 예상하지 못한 부득이한 사정 등이 발생하는 경우 여행자의 사전동의를 거쳐 변경될 수 있음을 양지하시기 바랍니다.</p>
											</div>
											<div class="js_acc">
												<!-- 여행 1일차 펼친 후-->
												<div class="inr">
													<!-- 클릭시 1일차 펼침 -->
													<a href="#acc_con0" class="nojq header daylist">
														<span class="tit_left"><strong>1일차</strong>06/07(월)</span>
														<strong>인천,모스크바</strong>
														<p>-</p>
													</a>
													<div id="acc_con0" class="view active">
														<div class="schedule_detail">
															<div class="detail_wrap">
																<div class="detail">
																	<p class="route"><b>인천</b></p>
																</div>
																<div class="detail">
																	<p class="route"><b>모스크바</b><br>
																	※입국절차 강화로 많은 시간이 소요될 수 있습니다.<br>
																	※상세 사항은 출발 전 상담원을 통해 안내드립니다.<br>
																	</p><br>
																</div>
																
																<div class="detail">
																<p class="route"><b>SAFETY&JOY:서로의 안전을 위한 배려</b><br>
																-매일 버스 탑승 전: 체온 측정<br>
																-여행 중: 상시 마스크 착용<br>
																-차 내: 대화 최소화, 음식 섭취 자제<br>
																-건강 이상 시: 가이드에게 즉시 알림<br>
																</p>
																</div>

																<div class="detail">
																<p class="route">석식 (현지식)</p>
																</div>
																
																<div class="detail">
																<p class="route">호텔로 이동합니다.</p>
																</div>

															</div>
														</div>
														<div class="detail_area">
															<div class="js_acc">
																<div class="inr additional_area">
																	<a href="#add_hotel_0" class="header">
																		<span class="tit hotel">호텔</span>
																		<strong>총 <em>1개</em>의 <em>예정 호텔</em>이 있습니다.</strong>
																			출발 3일전까지 홈페이지를 통해 알려드리겠습니다.
                                                                   			<p class="stxt3">출발 1일전 발송되는 알림톡에서도 확인가능 합니다.</p>
                                                                   	</a>
                                                                   	<div id="add_hotel_0" class="view">
                                                                   		<div class="additional_list">
                                                                   			<div class="link_list ing">
                                                                   				<strong class="tit">히든 베이 호텔</strong>
                                                                   				<p class="wrap_star">
                                                                   					<span class="star_value" style="width: 80%;"></span>
                                                                   				</p>
                                                                   				
                                                                   			</div>
                                                                   		</div>
                                                                   	</div>
                                                                </div>
                                                            </div>
                                                            <div class="js_acc mt0"><!----></div>
                                                            <div class="additional_area"><span class="tit food">식사</span>
                                                            	<div class="list_txt">
                                                            		<span>[조식] <span></span></span>
                                                            		<span>[중식] <span></span></span>
                                                            		<span>[석식] <span>현지식</span></span>
                                                            	</div>
                                                            </div>
                                                      	</div>
                                                    </div>
                                                </div>
                                                
                                                <!-- 여행 2일차 펼친 후-->
												<div class="inr">
													<!-- 클릭시 2일차 펼침 -->
													<a href="#acc_con1" class="nojq header daylist">
														<span class="tit_left"><strong>2일차</strong>06/08(화)</span>
														<strong>모스크바</strong>
														<p>성 바실리 사원, 붉은 광장, 굼 백화점</p>
													</a>
													<div id="acc_con1" class="view active" style="display: none;">
														<div class="schedule_detail">
															<div class="detail_wrap">
																<div class="detail">
																	<p class="route"><b>인천</b></p>
																</div>
																<div class="detail">
																	<p class="route"><b>모스크바</b><br>
																	조식(호텔식)<br>
																	</p><br>
																</div>
																
																<div class="detail type">
																	<div class="detail_area">
																		<div class="card_mngr">
    																		<div class="card_unit type3">
        																		<div class="_tit title">
        																			<strong class="eps">모스크바 관광</strong>
        																		</div>
        																		
        																		<div class="_tit_comt sub"><p class="eps"><b>성 바실리 사원</b><br>불균형이 가져다주는 묘한 아름다움, 성 바실리 사원</p></div>
        																		<div class="_info_section cont_box">
            																		<div class="_thumb thumb">
            																			<div class="img_list">
            																				<img src="<%=cp %>/resources/image/list/detail/ne2/ne_6_hh.jpg">
            																				</div>
            																		</div>
            																		<div class="_txt_cont txt_conts">
            																			<div>붉은 광장 진입로로 들어서는 모든 관광객들의 시선을 한눈에 사로잡아 버리는<br>
            																				아름다우면서도 묘한 느낌을 주는 성바실리 성당이다.<br>
																							200여년간 러시아를 점령하고 있던 몽골의 카잔 한(汗)을 항복시킨 것을<br>
																							기념하기 위해 이반 대제의 명령으로 지어진 건축물로, 사원의 이름은<br>
																							이반 대제에게 많은 영향을 끼친 수도사 바실리에서 유래되었다고 한다.<br>
																							1555년에 착공해 1561년에 이르러서야 완성되자 이반 대제는 그 아름다움에 탄복,<br>
																							더 이상 이와 같은 성당을 짓지 못하라는 뜻으로 설계자인 포스토닉과 바르마의<br>
																							두 눈을 뽑아버렸다는 이야기가 전해지고 있다.<br>
																							</div>
																					</div>
            																		<div class="_local_info txt_box disc"></div>           
            																		<div class="custom_tag_a">
            																			<div class="lead_time">
            																				<div class="time"></div>
            																				<div class="tour"></div>
            																			</div>
            																		</div>
        																		</div>
        																		
        																		<div class="_tit_comt sub"><p class="eps"><b>붉은 광장</b><br>검지만 아름다운 붉은광장</p></div>
        																		<div class="_info_section cont_box">
            																		<div class="_thumb thumb">
            																			<div class="img_list">
            																				<img src="<%=cp %>/resources/image/list/detail/ne2/ne_7_hh.jpg">
            																				</div>
            																		</div>
            																		<div class="_txt_cont txt_conts">
            																			<div>붉은 광장은 국립 역사 박물관과 굼 백화점 및 양파머리 모양의 바실리 사원에<br>
            																				 둘러싸여 있는데 전에는 시내 중심부에 있던 시장이었다. 끄라스나야 쁠로샤지,<br>
            																				 즉 현재는 "붉은"으로 해석되는 이 광장의 명칭은 고대 러시아어로는<br>
            																				 "아름다운, 예쁜"이라는 뜻이었기 때문에 본 의미는 "아름다운 광장"이었으나<br>
            																				 많은 이들은 메이데이와 혁명 기념일에 붉은색의 현수막이 국립 역사 박물관과<br>
            																				 굼 백화점의 벽에 걸리고, 사람들도 붉은 깃발을 손에 들고 있어서 광장이 온통<br>
            																				 붉은색이 되었다는 데서 그 명칭의 유래를 찾기도 한다.<br>
            																				 붉은 광장 주변에는 아직도 살았을 때의 모습 그대로 누워있는 레닌의 묘,<br>
            																				 불균형 속에 조화를 이루고 있는 성 바실리 사원, 국립 역사 박물관,<br>
            																				 모스크바 최대의 백화점인 굼 등이 있다.<br>
																							</div>
																					</div>
            																		<div class="_local_info txt_box disc"></div>           
            																		<div class="custom_tag_a">
            																			<div class="lead_time">
            																				<div class="time"></div>
            																				<div class="tour"></div>
            																			</div>
            																		</div>
        																		</div>
        																		
        																		<div class="_tit_comt sub"><p class="eps"><b>굼 백화점</b><br>러시아 최대의 굼 백화점</p></div>
        																		<div class="_info_section cont_box">
            																		<div class="_thumb thumb">
            																			<div class="img_list">
            																				<img src="<%=cp %>/resources/image/list/detail/ne2/ne_8_hh.jpg">
            																				</div>
            																		</div>
            																		<div class="_txt_cont txt_conts">
            																			<div>붉은 광장 내 레닌 묘 맞은 편에 길게 세워져 있는 베이지 색의 건물이 러시아 최대의<br>
            																				국영백화점인 굼(Gum)이다. 이 백화점은 러시아의 최대 백화점인 동시에 가장 오래된<br>
            																				백화점이다. 오랜 역사를 자랑하듯 건물을 밖에서 볼 때는 낡은 건물이지만 1950년대에<br>
            																				대폭적인 내부 수리가 이루어져 오늘날까지도 러시아에서 최고급 백화점으로 손꼽히고 있다.<br>
            																				3층 높이의 이 건물의 1, 2층에는 200여점에 이르는 최고급 외제산 상점들이 위치하여<br>
            																				손님들을 맞이하고 있다. 블라디보스톡에도 체인을 두고 있을 만큼 큰 규모와 양질을<br>
            																				자랑하는 곳이다. 특히나 모스크바는 세계적인 대부호들이 많이 사는 도시로<br>
            																				명품들의 명품을 구경할 수 있다.<br>
																							</div>
																					</div>
            																		<div class="_local_info txt_box disc"></div>           
            																		<div class="custom_tag_a">
            																			<div class="lead_time">
            																				<div class="time"></div>
            																				<div class="tour"></div>
            																			</div>
            																		</div>
        																		</div>
        																		
        																		<hr class="line_white">
        																		<div class="custom_tag_b">
        																			<div class="card_notice"> 
  																						<div class=""><!--custTitle--></div> 
  																						<div class="notice_cont"><!--custMemo--></div> 
																					</div>
																				</div>
    																		</div>
																		</div>
																	</div>
																</div>
																
																

																<div class="detail">
																<p class="route">석식 (현지식)</p>
																</div>
																
																<div class="detail">
																<p class="route">호텔로 이동합니다.</p>
																</div>

															</div>
														</div>
														<div class="detail_area">
															<div class="js_acc">
																<div class="inr additional_area">
																	<a href="#add_hotel_0" class="header">
																		<span class="tit hotel">호텔</span>
																		<strong>총 <em>1개</em>의 <em>예정 호텔</em>이 있습니다.</strong>
																			출발 3일전까지 홈페이지를 통해 알려드리겠습니다.
                                                                   			<p class="stxt3">출발 1일전 발송되는 알림톡에서도 확인가능 합니다.</p>
                                                                   	</a>
                                                                   	<div id="add_hotel_0" class="view">
                                                                   		<div class="additional_list">
                                                                   			<div class="link_list ing">
                                                                   				<strong class="tit">히든 베이 호텔</strong>
                                                                   				<p class="wrap_star">
                                                                   					<span class="star_value" style="width: 80%;"></span>
                                                                   				</p>
                                                                   				
                                                                   			</div>
                                                                   		</div>
                                                                   	</div>
                                                                </div>
                                                            </div>
                                                            <div class="js_acc mt0"><!----></div>
                                                            <div class="additional_area"><span class="tit food">식사</span>
                                                            	<div class="list_txt">
                                                            		<span>[조식] <span></span></span>
                                                            		<span>[중식] <span></span></span>
                                                            		<span>[석식] <span>현지식</span></span>
                                                            	</div>
                                                            </div>
                                                      	</div>
                                                    </div>
                                                </div>
                                                
                                                 <!-- 여행 3일차 펼친 후-->
												<div class="inr">
													<!-- 클릭시 3일차 펼침 -->
													<a href="#acc_con2" class="nojq header daylist">
														<span class="tit_left"><strong>3일차</strong>06/08(화)</span>
														<strong>헬싱키</strong>
														<p>알레그로 탑승</p>
													</a>
													<div id="acc_con2" class="view active" style="display: none;">
														<div class="schedule_detail">
															<div class="detail_wrap">
																<div class="detail">
																	<p class="route"><b>인천</b></p>
																</div>
																<div class="detail">
																	<p class="route"><b>모스크바</b><br>
																	조식(호텔식)<br>
																	</p><br>
																</div>
																
																<div class="detail type">
																	<div class="detail_area">
																		<div class="card_mngr">
    																		<div class="card_unit type3">
        																		<div class="_tit title">
        																			<strong class="eps">모스크바 관광</strong>
        																		</div>
        																		
        																		<div class="_tit_comt sub"><p class="eps"><b>성 바실리 사원</b><br>불균형이 가져다주는 묘한 아름다움, 성 바실리 사원</p></div>
        																		<div class="_info_section cont_box">
            																		<div class="_thumb thumb">
            																			<div class="img_list">
            																				<img src="<%=cp %>/resources/image/list/detail/ne2/ne_1_hh.jpg">
            																				</div>
            																		</div>
            																		<div class="_txt_cont txt_conts">
            																			<div>붉은 광장 진입로로 들어서는 모든 관광객들의 시선을 한눈에 사로잡아 버리는<br>
            																				아름다우면서도 묘한 느낌을 주는 성바실리 성당이다.<br>
																							200여년간 러시아를 점령하고 있던 몽골의 카잔 한(汗)을 항복시킨 것을<br>
																							기념하기 위해 이반 대제의 명령으로 지어진 건축물로, 사원의 이름은<br>
																							이반 대제에게 많은 영향을 끼친 수도사 바실리에서 유래되었다고 한다.<br>
																							1555년에 착공해 1561년에 이르러서야 완성되자 이반 대제는 그 아름다움에 탄복,<br>
																							더 이상 이와 같은 성당을 짓지 못하라는 뜻으로 설계자인 포스토닉과 바르마의<br>
																							두 눈을 뽑아버렸다는 이야기가 전해지고 있다.<br>
																							</div>
																					</div>
            																		<div class="_local_info txt_box disc"></div>           
            																		<div class="custom_tag_a">
            																			<div class="lead_time">
            																				<div class="time"></div>
            																				<div class="tour"></div>
            																			</div>
            																		</div>
        																		</div>
        																		
        																		<div class="_tit_comt sub"><p class="eps"><b>붉은 광장</b><br>검지만 아름다운 붉은광장</p></div>
        																		<div class="_info_section cont_box">
            																		<div class="_thumb thumb">
            																			<div class="img_list">
            																				<img src="<%=cp %>/resources/image/list/detail/ne2/ne_2_hh.jpg">
            																				</div>
            																		</div>
            																		<div class="_txt_cont txt_conts">
            																			<div>붉은 광장은 국립 역사 박물관과 굼 백화점 및 양파머리 모양의 바실리 사원에<br>
            																				 둘러싸여 있는데 전에는 시내 중심부에 있던 시장이었다. 끄라스나야 쁠로샤지,<br>
            																				 즉 현재는 "붉은"으로 해석되는 이 광장의 명칭은 고대 러시아어로는<br>
            																				 "아름다운, 예쁜"이라는 뜻이었기 때문에 본 의미는 "아름다운 광장"이었으나<br>
            																				 많은 이들은 메이데이와 혁명 기념일에 붉은색의 현수막이 국립 역사 박물관과<br>
            																				 굼 백화점의 벽에 걸리고, 사람들도 붉은 깃발을 손에 들고 있어서 광장이 온통<br>
            																				 붉은색이 되었다는 데서 그 명칭의 유래를 찾기도 한다.<br>
            																				 붉은 광장 주변에는 아직도 살았을 때의 모습 그대로 누워있는 레닌의 묘,<br>
            																				 불균형 속에 조화를 이루고 있는 성 바실리 사원, 국립 역사 박물관,<br>
            																				 모스크바 최대의 백화점인 굼 등이 있다.<br>
																							</div>
																					</div>
            																		<div class="_local_info txt_box disc"></div>           
            																		<div class="custom_tag_a">
            																			<div class="lead_time">
            																				<div class="time"></div>
            																				<div class="tour"></div>
            																			</div>
            																		</div>
        																		</div>
        																		
        																		<div class="_tit_comt sub"><p class="eps"><b>굼 백화점</b><br>러시아 최대의 굼 백화점</p></div>
        																		<div class="_info_section cont_box">
            																		<div class="_thumb thumb">
            																			<div class="img_list">
            																				<img src="<%=cp %>/resources/image/list/detail/ne2/ne_3_hh.jpg">
            																				</div>
            																		</div>
            																		<div class="_txt_cont txt_conts">
            																			<div>붉은 광장 내 레닌 묘 맞은 편에 길게 세워져 있는 베이지 색의 건물이 러시아 최대의<br>
            																				국영백화점인 굼(Gum)이다. 이 백화점은 러시아의 최대 백화점인 동시에 가장 오래된<br>
            																				백화점이다. 오랜 역사를 자랑하듯 건물을 밖에서 볼 때는 낡은 건물이지만 1950년대에<br>
            																				대폭적인 내부 수리가 이루어져 오늘날까지도 러시아에서 최고급 백화점으로 손꼽히고 있다.<br>
            																				3층 높이의 이 건물의 1, 2층에는 200여점에 이르는 최고급 외제산 상점들이 위치하여<br>
            																				손님들을 맞이하고 있다. 블라디보스톡에도 체인을 두고 있을 만큼 큰 규모와 양질을<br>
            																				자랑하는 곳이다. 특히나 모스크바는 세계적인 대부호들이 많이 사는 도시로<br>
            																				명품들의 명품을 구경할 수 있다.<br>
																							</div>
																					</div>
            																		<div class="_local_info txt_box disc"></div>           
            																		<div class="custom_tag_a">
            																			<div class="lead_time">
            																				<div class="time"></div>
            																				<div class="tour"></div>
            																			</div>
            																		</div>
        																		</div>
        																		
        																		
        																		
        																		<hr class="line_white">
        																		<div class="custom_tag_b">
        																			<div class="card_notice"> 
  																						<div class=""><!--custTitle--></div> 
  																						<div class="notice_cont"><!--custMemo--></div> 
																					</div>
																				</div>
    																		</div>
																		</div>
																	</div>
																</div>
																
																

																<div class="detail">
																<p class="route">석식 (현지식)</p>
																</div>
																
																<div class="detail">
																<p class="route">호텔로 이동합니다.</p>
																</div>

															</div>
														</div>
														<div class="detail_area">
															<div class="js_acc">
																<div class="inr additional_area">
																	<a href="#add_hotel_0" class="header">
																		<span class="tit hotel">호텔</span>
																		<strong>총 <em>1개</em>의 <em>예정 호텔</em>이 있습니다.</strong>
																			출발 3일전까지 홈페이지를 통해 알려드리겠습니다.
                                                                   			<p class="stxt3">출발 1일전 발송되는 알림톡에서도 확인가능 합니다.</p>
                                                                   	</a>
                                                                   	<div id="add_hotel_0" class="view">
                                                                   		<div class="additional_list">
                                                                   			<div class="link_list ing">
                                                                   				<strong class="tit">히든 베이 호텔</strong>
                                                                   				<p class="wrap_star">
                                                                   					<span class="star_value" style="width: 80%;"></span>
                                                                   				</p>
                                                                   				
                                                                   			</div>
                                                                   		</div>
                                                                   	</div>
                                                                </div>
                                                            </div>
                                                            <div class="js_acc mt0"><!----></div>
                                                            <div class="additional_area"><span class="tit food">식사</span>
                                                            	<div class="list_txt">
                                                            		<span>[조식] <span></span></span>
                                                            		<span>[중식] <span></span></span>
                                                            		<span>[석식] <span>현지식</span></span>
                                                            	</div>
                                                            </div>
                                                      	</div>
                                                    </div>
                                                </div>
                                                
                                                 <!-- 여행 4일차 펼친 후-->
												<div class="inr">
													<!-- 클릭시 4일차 펼침 -->
													<a href="#acc_con3" class="nojq header daylist">
														<span class="tit_left"><strong>4일차</strong>06/08(화)</span>
														<strong>스톡홀름</strong>
														<p>시청사, 바사 박물관</p>
													</a>
													<div id="acc_con3" class="view active" style="display: none;">
														<div class="schedule_detail">
															<div class="detail_wrap">
																<div class="detail">
																	<p class="route"><b>인천</b></p>
																</div>
																<div class="detail">
																	<p class="route"><b>모스크바</b><br>
																	조식(호텔식)<br>
																	</p><br>
																</div>
																
																<div class="detail type">
																	<div class="detail_area">
																		<div class="card_mngr">
    																		<div class="card_unit type3">
        																		<div class="_tit title">
        																			<strong class="eps">모스크바 관광</strong>
        																		</div>
        																		
        																		<div class="_tit_comt sub"><p class="eps"><b>성 바실리 사원</b><br>불균형이 가져다주는 묘한 아름다움, 성 바실리 사원</p></div>
        																		<div class="_info_section cont_box">
            																		<div class="_thumb thumb">
            																			<div class="img_list">
            																				<img src="<%=cp %>/resources/image/list/detail/ne2/ne_4_hh.jpg">
            																				</div>
            																		</div>
            																		<div class="_txt_cont txt_conts">
            																			<div>붉은 광장 진입로로 들어서는 모든 관광객들의 시선을 한눈에 사로잡아 버리는<br>
            																				아름다우면서도 묘한 느낌을 주는 성바실리 성당이다.<br>
																							200여년간 러시아를 점령하고 있던 몽골의 카잔 한(汗)을 항복시킨 것을<br>
																							기념하기 위해 이반 대제의 명령으로 지어진 건축물로, 사원의 이름은<br>
																							이반 대제에게 많은 영향을 끼친 수도사 바실리에서 유래되었다고 한다.<br>
																							1555년에 착공해 1561년에 이르러서야 완성되자 이반 대제는 그 아름다움에 탄복,<br>
																							더 이상 이와 같은 성당을 짓지 못하라는 뜻으로 설계자인 포스토닉과 바르마의<br>
																							두 눈을 뽑아버렸다는 이야기가 전해지고 있다.<br>
																							</div>
																					</div>
            																		<div class="_local_info txt_box disc"></div>           
            																		<div class="custom_tag_a">
            																			<div class="lead_time">
            																				<div class="time"></div>
            																				<div class="tour"></div>
            																			</div>
            																		</div>
        																		</div>
        																		
        																		<div class="_tit_comt sub"><p class="eps"><b>붉은 광장</b><br>검지만 아름다운 붉은광장</p></div>
        																		<div class="_info_section cont_box">
            																		<div class="_thumb thumb">
            																			<div class="img_list">
            																				<img src="<%=cp %>/resources/image/list/detail/ne2/ne_5_hh.jpg">
            																				</div>
            																		</div>
            																		<div class="_txt_cont txt_conts">
            																			<div>붉은 광장은 국립 역사 박물관과 굼 백화점 및 양파머리 모양의 바실리 사원에<br>
            																				 둘러싸여 있는데 전에는 시내 중심부에 있던 시장이었다. 끄라스나야 쁠로샤지,<br>
            																				 즉 현재는 "붉은"으로 해석되는 이 광장의 명칭은 고대 러시아어로는<br>
            																				 "아름다운, 예쁜"이라는 뜻이었기 때문에 본 의미는 "아름다운 광장"이었으나<br>
            																				 많은 이들은 메이데이와 혁명 기념일에 붉은색의 현수막이 국립 역사 박물관과<br>
            																				 굼 백화점의 벽에 걸리고, 사람들도 붉은 깃발을 손에 들고 있어서 광장이 온통<br>
            																				 붉은색이 되었다는 데서 그 명칭의 유래를 찾기도 한다.<br>
            																				 붉은 광장 주변에는 아직도 살았을 때의 모습 그대로 누워있는 레닌의 묘,<br>
            																				 불균형 속에 조화를 이루고 있는 성 바실리 사원, 국립 역사 박물관,<br>
            																				 모스크바 최대의 백화점인 굼 등이 있다.<br>
																							</div>
																					</div>
            																		<div class="_local_info txt_box disc"></div>           
            																		<div class="custom_tag_a">
            																			<div class="lead_time">
            																				<div class="time"></div>
            																				<div class="tour"></div>
            																			</div>
            																		</div>
        																		</div>
        																		
        																		<div class="_tit_comt sub"><p class="eps"><b>굼 백화점</b><br>러시아 최대의 굼 백화점</p></div>
        																		<div class="_info_section cont_box">
            																		<div class="_thumb thumb">
            																			<div class="img_list">
            																				<img src="<%=cp %>/resources/image/list/detail/ne2/ne_6_hh.jpg">
            																				</div>
            																		</div>
            																		<div class="_txt_cont txt_conts">
            																			<div>붉은 광장 내 레닌 묘 맞은 편에 길게 세워져 있는 베이지 색의 건물이 러시아 최대의<br>
            																				국영백화점인 굼(Gum)이다. 이 백화점은 러시아의 최대 백화점인 동시에 가장 오래된<br>
            																				백화점이다. 오랜 역사를 자랑하듯 건물을 밖에서 볼 때는 낡은 건물이지만 1950년대에<br>
            																				대폭적인 내부 수리가 이루어져 오늘날까지도 러시아에서 최고급 백화점으로 손꼽히고 있다.<br>
            																				3층 높이의 이 건물의 1, 2층에는 200여점에 이르는 최고급 외제산 상점들이 위치하여<br>
            																				손님들을 맞이하고 있다. 블라디보스톡에도 체인을 두고 있을 만큼 큰 규모와 양질을<br>
            																				자랑하는 곳이다. 특히나 모스크바는 세계적인 대부호들이 많이 사는 도시로<br>
            																				명품들의 명품을 구경할 수 있다.<br>
																							</div>
																					</div>
            																		<div class="_local_info txt_box disc"></div>           
            																		<div class="custom_tag_a">
            																			<div class="lead_time">
            																				<div class="time"></div>
            																				<div class="tour"></div>
            																			</div>
            																		</div>
        																		</div>
        																		
        																		
        																		
        																		<hr class="line_white">
        																		<div class="custom_tag_b">
        																			<div class="card_notice"> 
  																						<div class=""><!--custTitle--></div> 
  																						<div class="notice_cont"><!--custMemo--></div> 
																					</div>
																				</div>
    																		</div>
																		</div>
																	</div>
																</div>
																
																

																<div class="detail">
																<p class="route">석식 (현지식)</p>
																</div>
																
																<div class="detail">
																<p class="route">호텔로 이동합니다.</p>
																</div>

															</div>
														</div>
														<div class="detail_area">
															<div class="js_acc">
																<div class="inr additional_area">
																	<a href="#add_hotel_0" class="header">
																		<span class="tit hotel">호텔</span>
																		<strong>총 <em>1개</em>의 <em>예정 호텔</em>이 있습니다.</strong>
																			출발 3일전까지 홈페이지를 통해 알려드리겠습니다.
                                                                   			<p class="stxt3">출발 1일전 발송되는 알림톡에서도 확인가능 합니다.</p>
                                                                   	</a>
                                                                   	<div id="add_hotel_0" class="view">
                                                                   		<div class="additional_list">
                                                                   			<div class="link_list ing">
                                                                   				<strong class="tit">히든 베이 호텔</strong>
                                                                   				<p class="wrap_star">
                                                                   					<span class="star_value" style="width: 80%;"></span>
                                                                   				</p>
                                                                   				
                                                                   			</div>
                                                                   		</div>
                                                                   	</div>
                                                                </div>
                                                            </div>
                                                            <div class="js_acc mt0"><!----></div>
                                                            <div class="additional_area"><span class="tit food">식사</span>
                                                            	<div class="list_txt">
                                                            		<span>[조식] <span></span></span>
                                                            		<span>[중식] <span></span></span>
                                                            		<span>[석식] <span>현지식</span></span>
                                                            	</div>
                                                            </div>
                                                      	</div>
                                                    </div>
                                                </div>
                                                
                                                <!-- 여행 5일차 펼친 후-->
												<div class="inr">
													<!-- 클릭시 5일차 펼침 -->
													<a href="#acc_con4" class="nojq header daylist">
														<span class="tit_left"><strong>5일차</strong>06/08(화)</span>
														<strong>베르겐,인천</strong>
														<p>프레데릭스보르 성</p>
													</a>
													<div id="acc_con4" class="view active" style="display: none;">
														<div class="schedule_detail">
															<div class="detail_wrap">
																<div class="detail">
																	<p class="route"><b>인천</b></p>
																</div>
																<div class="detail">
																	<p class="route"><b>모스크바</b><br>
																	조식(호텔식)<br>
																	</p><br>
																</div>
																
																<div class="detail type">
																	<div class="detail_area">
																		<div class="card_mngr">
    																		<div class="card_unit type3">
        																		<div class="_tit title">
        																			<strong class="eps">모스크바 관광</strong>
        																		</div>
        																		
        																		<div class="_tit_comt sub"><p class="eps"><b>성 바실리 사원</b><br>불균형이 가져다주는 묘한 아름다움, 성 바실리 사원</p></div>
        																		<div class="_info_section cont_box">
            																		<div class="_thumb thumb">
            																			<div class="img_list">
            																				<img src="<%=cp %>/resources/image/list/detail/ne2/ne_4_hh.jpg">
            																				</div>
            																		</div>
            																		<div class="_txt_cont txt_conts">
            																			<div>붉은 광장 진입로로 들어서는 모든 관광객들의 시선을 한눈에 사로잡아 버리는<br>
            																				아름다우면서도 묘한 느낌을 주는 성바실리 성당이다.<br>
																							200여년간 러시아를 점령하고 있던 몽골의 카잔 한(汗)을 항복시킨 것을<br>
																							기념하기 위해 이반 대제의 명령으로 지어진 건축물로, 사원의 이름은<br>
																							이반 대제에게 많은 영향을 끼친 수도사 바실리에서 유래되었다고 한다.<br>
																							1555년에 착공해 1561년에 이르러서야 완성되자 이반 대제는 그 아름다움에 탄복,<br>
																							더 이상 이와 같은 성당을 짓지 못하라는 뜻으로 설계자인 포스토닉과 바르마의<br>
																							두 눈을 뽑아버렸다는 이야기가 전해지고 있다.<br>
																							</div>
																					</div>
            																		<div class="_local_info txt_box disc"></div>           
            																		<div class="custom_tag_a">
            																			<div class="lead_time">
            																				<div class="time"></div>
            																				<div class="tour"></div>
            																			</div>
            																		</div>
        																		</div>
        																		
        																		<div class="_tit_comt sub"><p class="eps"><b>붉은 광장</b><br>검지만 아름다운 붉은광장</p></div>
        																		<div class="_info_section cont_box">
            																		<div class="_thumb thumb">
            																			<div class="img_list">
            																				<img src="<%=cp %>/resources/image/list/detail/ne2/ne_2_hh.jpg">
            																				</div>
            																		</div>
            																		<div class="_txt_cont txt_conts">
            																			<div>붉은 광장은 국립 역사 박물관과 굼 백화점 및 양파머리 모양의 바실리 사원에<br>
            																				 둘러싸여 있는데 전에는 시내 중심부에 있던 시장이었다. 끄라스나야 쁠로샤지,<br>
            																				 즉 현재는 "붉은"으로 해석되는 이 광장의 명칭은 고대 러시아어로는<br>
            																				 "아름다운, 예쁜"이라는 뜻이었기 때문에 본 의미는 "아름다운 광장"이었으나<br>
            																				 많은 이들은 메이데이와 혁명 기념일에 붉은색의 현수막이 국립 역사 박물관과<br>
            																				 굼 백화점의 벽에 걸리고, 사람들도 붉은 깃발을 손에 들고 있어서 광장이 온통<br>
            																				 붉은색이 되었다는 데서 그 명칭의 유래를 찾기도 한다.<br>
            																				 붉은 광장 주변에는 아직도 살았을 때의 모습 그대로 누워있는 레닌의 묘,<br>
            																				 불균형 속에 조화를 이루고 있는 성 바실리 사원, 국립 역사 박물관,<br>
            																				 모스크바 최대의 백화점인 굼 등이 있다.<br>
																							</div>
																					</div>
            																		<div class="_local_info txt_box disc"></div>           
            																		<div class="custom_tag_a">
            																			<div class="lead_time">
            																				<div class="time"></div>
            																				<div class="tour"></div>
            																			</div>
            																		</div>
        																		</div>
        																		
        																		<div class="_tit_comt sub"><p class="eps"><b>굼 백화점</b><br>러시아 최대의 굼 백화점</p></div>
        																		<div class="_info_section cont_box">
            																		<div class="_thumb thumb">
            																			<div class="img_list">
            																				<img src="<%=cp %>/resources/image/list/detail/ne2/ne_1_hh.jpg">
            																				</div>
            																		</div>
            																		<div class="_txt_cont txt_conts">
            																			<div>붉은 광장 내 레닌 묘 맞은 편에 길게 세워져 있는 베이지 색의 건물이 러시아 최대의<br>
            																				국영백화점인 굼(Gum)이다. 이 백화점은 러시아의 최대 백화점인 동시에 가장 오래된<br>
            																				백화점이다. 오랜 역사를 자랑하듯 건물을 밖에서 볼 때는 낡은 건물이지만 1950년대에<br>
            																				대폭적인 내부 수리가 이루어져 오늘날까지도 러시아에서 최고급 백화점으로 손꼽히고 있다.<br>
            																				3층 높이의 이 건물의 1, 2층에는 200여점에 이르는 최고급 외제산 상점들이 위치하여<br>
            																				손님들을 맞이하고 있다. 블라디보스톡에도 체인을 두고 있을 만큼 큰 규모와 양질을<br>
            																				자랑하는 곳이다. 특히나 모스크바는 세계적인 대부호들이 많이 사는 도시로<br>
            																				명품들의 명품을 구경할 수 있다.<br>
																							</div>
																					</div>
            																		<div class="_local_info txt_box disc"></div>           
            																		<div class="custom_tag_a">
            																			<div class="lead_time">
            																				<div class="time"></div>
            																				<div class="tour"></div>
            																			</div>
            																		</div>
        																		</div>
        																		
        																		
        																		
        																		<hr class="line_white">
        																		<div class="custom_tag_b">
        																			<div class="card_notice"> 
  																						<div class=""><!--custTitle--></div> 
  																						<div class="notice_cont"><!--custMemo--></div> 
																					</div>
																				</div>
    																		</div>
																		</div>
																	</div>
																</div>
																
																

																<div class="detail">
																<p class="route">석식 (현지식)</p>
																</div>
																
																<div class="detail">
																<p class="route">호텔로 이동합니다.</p>
																</div>

															</div>
														</div>
														<div class="detail_area">
															<div class="js_acc">
																<div class="inr additional_area">
																	<a href="#add_hotel_0" class="header">
																		<span class="tit hotel">호텔</span>
																		<strong>총 <em>1개</em>의 <em>예정 호텔</em>이 있습니다.</strong>
																			출발 3일전까지 홈페이지를 통해 알려드리겠습니다.
                                                                   			<p class="stxt3">출발 1일전 발송되는 알림톡에서도 확인가능 합니다.</p>
                                                                   	</a>
                                                                   	<div id="add_hotel_0" class="view">
                                                                   		<div class="additional_list">
                                                                   			<div class="link_list ing">
                                                                   				<strong class="tit">히든 베이 호텔</strong>
                                                                   				<p class="wrap_star">
                                                                   					<span class="star_value" style="width: 80%;"></span>
                                                                   				</p>
                                                                   				
                                                                   			</div>
                                                                   		</div>
                                                                   	</div>
                                                                </div>
                                                            </div>
                                                            <div class="js_acc mt0"><!----></div>
                                                            <div class="additional_area"><span class="tit food">식사</span>
                                                            	<div class="list_txt">
                                                            		<span>[조식] <span></span></span>
                                                            		<span>[중식] <span></span></span>
                                                            		<span>[석식] <span>현지식</span></span>
                                                            	</div>
                                                            </div>
                                                      	</div>
                                                    </div>
                                                </div>
                                                
									</div>
								</div>
								<hr class="pkg">
									<!-- 쇼핑 정보 -->
									<div class="cont_unit shopping">
										<div class="text_wrap big">
											<strong class="tit">쇼핑정보</strong>
											<p class="txt exclam em">해당상품은 쇼핑센터에 방문하지 않습니다.</p>
										</div>
										<div class="js_tabs type1">
											<ul class="tabs">
												<li class="" style="display: none; width: 50%;">
													<a href="#shopping01">교환 / 환불 안내</a>
												</li>
												<li class="selected" style="display: none; width: 50%;">
													<a href="#shopping02">쇼핑 시 유의사항</a>
												</li>
												<li style="display: none; width: 50%;">
													<a href="#shopping03">쇼핑센터정보</a>
												</li>
											</ul>
											<div class="panels">
												<div id="shopping01" class="panel" style="display: none;">
													<ul class="list_bul nostyle"></ul>
												</div>
												<div id="shopping02" class="panel selected" style="display: none;">
													<ul class="list_bul nostyle"></ul>
												</div>
												<div id="shopping03" class="panel" style="display: none;">
													<div class="tbl">
														<table class="type1">
															<colgroup>
																<col>
																<col style="width: 35%;">
																<col style="width: 35%;">
																<col style="width: 15%;">
															</colgroup>
															<thead>
																<tr>
																	<th>도시</th>
																	<th>쇼핑샵명(위치)</th>
																	<th>품목</th>
																	<th>소요시간</th>
																</tr>
															</thead>
															<tbody></tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
									<hr class="pkg">
									<!-- 여행시 유의사항 -->
									<div class="cont_unit">
										<div class="text_wrap big"><strong class="tit">여행시 유의사항</strong></div>
										<div class="prod_notice">
											<ul class="list_bul nostyle">
												<li>2014년부터 한국국적인은 러시아비자 면제입니다. 하지만 외국국적인은 러시아비자가 필요하니 꼭 확인하시기 바랍니다.<br>
													☞ 우산 및 계절에 맞는 옷과 계절옷보다 조금더 보온성 있는 옷을 준비하는 것이 좋습니다.<br>
													☞ 호텔에서 수영장, 사우나를 즐기실 분은 수영복을 준비해 주시기 바랍니다.<br>
													☞ 환전은 유로화로 하세요. 객실 TIP등으로 미국달러 1달러짜리로 약 10장정도 준비하시는 것이 편리합니다.<br>
													☞ 유럽의 금연객실에서 흡연을 하실 경우(창문을 열고 피우시는것도 포함),<br>
													   적발시 벌금이 부과될 수 있으니 이점 양지하시어 불이익을 받지 않으시길 바랍니다.<br>
													☞ 유럽의 식당에 판매가 허락되지 않은 주류를 반입하는 것은 법으로 엄격히 금지하고 있으니, 식당내의 주류반입은 삼가시기 바랍니다.<br>
													☞ 유럽 식당내 외부 음식 반입이 안되는 곳이 대부분이기 때문에 한국에서 가져온 반찬 등은 반입 안될 수 있습니다.<br>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<!-- 호텔&관광지 Tabs -->
								<div id="sticky02" class="panel">
									<div class="cont_unit tour">
										<div class="js_tabs type1 v-tabs">
											<ul class="tabs">
												<li class="selected" style="width: 50%;"><a href="#tour02">관광지정보</a></li>
												<li style="width: 50%;"><a href="#tour04">호텔정보</a></li>
											</ul>
											<div class="panels">
												<!-- 호텔&관광지 Tabs // 관광지 정보 상세내용 -->
												<div id="tour02" class="panel selected">
													<div class="spot_detail_wrap">
														<div class="spot_area">
															<div class="text_wrap">
																<strong class="tit">1일차</strong>
																<span class="txt">2021.01.18(월)</span>
															</div>
															<div class="spot_info">
																<div class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal">
																	<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);">
																		<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/15/10000/e64bd119-27ac-495e-8d38-0469531d16e6.jpg" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/15/10000/157b9b06-f6a5-4fbb-a9cf-74dc00b05959.jpg" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/15/10000/5af35c0f-bdd2-4ee4-938b-56ef82515719.jpg" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-duplicate-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/15/10000/e64bd119-27ac-495e-8d38-0469531d16e6.jpg" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-duplicate" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/15/10000/157b9b06-f6a5-4fbb-a9cf-74dc00b05959.jpg" title="" data-src="" alt="">
																		</div>
																	</div>
																	<a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide"><span class="blind">이전</span></a>
																	<a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide"><span class="blind">다음</span></a>
																	<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
																</div>
																<div class="info">
																	<div class="text_wrap"><strong class="tit">천은사</strong></div>
																	<p class="txt">지리산에 위치한 3대 사찰 중 하나로 화엄사, 쌍계사와 함께 지리산을 대표하는 사찰입니다.
																	 			   통일신라시대 흥덕왕 3년 때 인도 승려 덕운이 창건한 천년고찰로 '아미타후불탱'을 비롯한 문화재와 주변의 빼어난 경치가 볼거리입니다.
																	  			   앞뜰에 있는 샘물을 마시면  정신이 맑아진다고 하여 감로사라고도 했는데  중건 당시 감로사의 샘가에는 큰 구렁이가 자주 나타나 한 승려가 이를 잡아 죽였더니
																	   			   그 뒤로부터는 샘이 솟아나지 않았고, 샘이 숨었다 해서 천은사로 개명했다고 합니다.
																	</p>
																	<a href="#none" class="txt em">자세히보기</a>
																</div>
															</div>
															<div class="spot_info">
																<div class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal">
																	<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);">
																		<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="3">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2017/02/28/10000/308ddbe2-079f-4772-9eaa-ff30470b7eed.jpg" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2013/05/03/10000/fc63c324-5a48-4458-b33f-9b5865aac533.jpg" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/02/21/10000/3161a1d7-da4b-48a9-ad5b-0f14c9bf8d12.png" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2018/09/10/10000/08c0de01-29ca-4608-8c5d-f5abfca45a4d.JPG" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-duplicate-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="3">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2017/02/28/10000/308ddbe2-079f-4772-9eaa-ff30470b7eed.jpg" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-duplicate" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2013/05/03/10000/fc63c324-5a48-4458-b33f-9b5865aac533.jpg" title="" data-src="" alt="">
																		</div>
																	</div>
																	<a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide"><span class="blind">이전</span></a>
																	<a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide"><span class="blind">다음</span></a>
																	<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
																</div>
																<div class="info">
																	<div class="text_wrap"><strong class="tit">순천만 습지</strong></div>
																	<p class="txt">한국관광공사 선정 3회 연속 추천 웰니스 관광지로 선정된 순천만 습지는 남북으로 30km에 달하는 세계적인 연안 습지입니다.
																				   들꽃을 닮은 칠면초와 여의도 면적에 맞먹는 드넓은 갈대밭, 끝이 보이지 않는 광활한 갯벌이 압권입니다.
																				   겨울이면 흑두루미, 재두루미, 큰고니 등 철새 희귀종들이 순천만을 찾아오며 2008년 국가지정문화재 명승 제41호로 지정된 순천만습지는
																				   가장 인기 있는 생태문화관광지입니다.
																	</p>
																	<a href="#none" class="txt em">자세히보기</a>
																</div>
															</div>
															<div class="spot_info">
																<div class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal">
																	<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);">
																		<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/04/08/460000/e1781f54-035d-40e3-8273-9d5fa5ac9c99.jpg" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/15/10000/f721d95f-1307-4166-b211-3861e2fe920f.jpg" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2008/02/29/10000/9bf39d4a-6c83-4c4a-9e7b-4e795982d76a.jpg" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-duplicate-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/04/08/460000/e1781f54-035d-40e3-8273-9d5fa5ac9c99.jpg" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-duplicate" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/15/10000/f721d95f-1307-4166-b211-3861e2fe920f.jpg" title="" data-src="" alt="">
																		</div>
																	</div>
																	<a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide"><span class="blind">이전</span></a>
																	<a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide"><span class="blind">다음</span></a>
																	<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
																</div>
																<div class="info">
																	<div class="text_wrap"><strong class="tit">호텔 사우나</strong></div>
																	<p class="txt">호텔 사우나에서 여행 중에 쌓인 피로감과 일상의 스트레스를 말끔히 풀어내는 여유로운 시간을 가질 수 있습니다.
																				   사우나는 찜질이나 온천욕에 비해 수분을 방출하는 효과가 뛰어나 부종예방에 좋습니다.
																				   또한 피로회복, 혈액순환 촉진, 노폐물 제거, 원기 충전에 효과적입니다.
																	</p>
																	<a href="#none" class="txt em">자세히보기</a>
																</div>
															</div>
														</div>
														<div class="spot_area">
															<div class="text_wrap">
																<strong class="tit">2일차</strong>
																<span class="txt">2021.01.19(화)</span>
															</div>
															<div class="spot_info">
																<div class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal">
																	<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);">
																		<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/02/21/10000/cf908e5f-a9bc-4b21-a0b0-cb163e0badda.png" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/02/21/10000/6be279d4-b8f8-49b6-b57d-76db9286a994.png" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/02/21/10000/55e96fa1-c722-4d4f-8759-4443df5085c5.png" title="" data-src="" alt="">
																		</div><div class="swiper-slide swiper-slide-duplicate-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/02/21/10000/cf908e5f-a9bc-4b21-a0b0-cb163e0badda.png" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-duplicate" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/02/21/10000/6be279d4-b8f8-49b6-b57d-76db9286a994.png" title="" data-src="" alt="">
																		</div>
																	</div>
																	<a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide"><span class="blind">이전</span></a>
																	<a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide"><span class="blind">다음</span></a>
																	<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
																</div>
																<div class="info"><div class="text_wrap"><strong class="tit">여수 해양레일바이크</strong></div>
																	<p class="txt">국내 최초 '해변을 따라 운행'하는 레일바이크로 탁 트인 여수 바다를 조망하며 3.5km 철길을 따라 달릴 수 있습니다.
																				   한려해상국립공원의 비경을 즐길 수 있으며 터널 구간의  LED 조명으로 볼거리를 갖춘 여수의 대표적인 이색 레저입니다.
																				   남녀노소 누구나 즐길 수 있으며 시원한 바닷바람을 맞으며 열심히 페달을 밟다보면 아름다운 낭만의 도시 여수를 만끽할 수 있습니다.											
																	</p>
																	<a href="#none" class="txt em">자세히보기</a>
																</div>
															</div>
															<div class="spot_info">
																<div class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal">
																	<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);">
																		<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2012/11/21/10000/4289da62-985e-4a54-acaa-bf7e43d55414.jpg" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2016/11/04/10000/7a2e3b6b-ebea-4bd3-be16-184140688fd6.jpg" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2017/02/27/10000/47656b01-45c3-4c03-aa8b-8a0b7ed846e4.jpg" title="" data-src="" alt="">
																		</div>
																		<div class="swiper-slide swiper-slide-duplicate-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																			<img src="https://image.hanatour.com/usr/cms/resize/400_0/2012/11/21/10000/4289da62-985e-4a54-acaa-bf7e43d55414.jpg" title="" data-src="" alt="">
																		</div>
																	<div class="swiper-slide swiper-slide-duplicate" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2016/11/04/10000/7a2e3b6b-ebea-4bd3-be16-184140688fd6.jpg" title="" data-src="" alt="">
																	</div>
																</div>
																<a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide"><span class="blind">이전</span></a>
																<a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide"><span class="blind">다음</span></a>
																<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
															</div>
															<div class="info">
																<div class="text_wrap">
																	<strong class="tit">오동도</strong>
																</div>
																<p class="txt">한려해상국립공원에 속한 오동도에는 과거 오동나무가 많이 심겨있었습니다.
																			   멀리서 보면 섬 자체가 '오동나무 잎'을 닮았다고 하여 오동도라는 이름을 얻었습니다.
																			   이제는 오동나무 대신 '여수의 꽃'인 동백나무 3천여그루가 빼곡히 심겨있습니다.
																			   오동도 방파제 길은 한국의 아름다운 길 100선에 선정되었으며 입구에는 임진왜란때 이순신 장군이 만들었다는 거북선과 판옥선의 모형이 서 있습니다.
																</p>
																<a href="#none" class="txt em">자세히보기</a>
															</div>
														</div>
														<div class="spot_info">
															<div class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal">
																<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);">
																	<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2014/06/13/10000/c447bd73-6ec6-40f8-88c8-8b9f2d9be1ae.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2014/06/13/10000/578adcd9-c7dc-47c3-bfd0-df571b16108d.jpg" title="" data-src="" alt="">
																	</div><div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2012/08/07/10000/886c2c4f-bb37-4dc6-94f2-7a0e8e7d3f48.jpg" title="" data-src="" alt="">
																	</div><div class="swiper-slide swiper-slide-duplicate-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2014/06/13/10000/c447bd73-6ec6-40f8-88c8-8b9f2d9be1ae.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-duplicate" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2014/06/13/10000/578adcd9-c7dc-47c3-bfd0-df571b16108d.jpg" title="" data-src="" alt="">
																	</div>
																</div>
																<a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide"><span class="blind">이전</span></a>
																<a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide"><span class="blind">다음</span></a>
																<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
															</div>
															<div class="info">
																<div class="text_wrap">
																	<strong class="tit">원예예술촌</strong>
																</div>
																<p class="txt">원예 전문가들이 모여 집과 정원을 개인별 작품으로 조성한 마을로 각 나라의 특징적인 정원의 형태와 토피어리, 풍차, 풀꽃 지붕, 채소정원 등이
																			   조화를 이루고 있습니다. 배우 "박원숙"의 카페가 있어 더욱 유명해졌습니다. 정원, 산책, 포토존, 영상실, 옥외공연장 등
																			   아름다움과 다양한 문화체험이 가능한 장소입니다.
																</p>
																<a href="#none" class="txt em">자세히보기</a>
															</div>
														</div>
														<div class="spot_info">
															<div class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal">
																<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);">
																	<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="7">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2009/08/06/10000/a7e693bd-c823-4c4b-8088-7f9566a59ffb.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/09/06/10000/57893558-50d6-415a-b579-d8b814d9e4d7.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2015/07/03/10000/2fc8bea9-8c55-4b8e-8a2a-c59173d31000.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2012/08/07/10000/1f0499b6-be19-4caa-a3d5-8f4d7e7c5814.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="3">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2009/08/06/10000/eef43683-0752-406d-9a41-cc59e656e9f1.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="4">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2009/08/06/10000/90c7216a-16a9-4925-b631-0715cabf4569.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="5">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2009/08/06/10000/f7f410aa-0ed6-4885-b320-fb8c7d9ee4c3.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="6">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2009/08/06/10000/8744b5b9-b805-4336-9a03-624af0a629d5.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-duplicate-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="7">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2009/08/06/10000/a7e693bd-c823-4c4b-8088-7f9566a59ffb.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-duplicate" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/09/06/10000/57893558-50d6-415a-b579-d8b814d9e4d7.jpg" title="" data-src="" alt="">
																	</div>
																</div>
																<a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide"><span class="blind">이전</span></a>
																<a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide"><span class="blind">다음</span></a>
																<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
															</div>
															<div class="info">
																<div class="text_wrap">
																	<strong class="tit">독일마을</strong>
																</div>
																<p class="txt">독일마을의 주택건축은 독일교포들이 직접 독일의 재료를 수입하여 전통 독일식 주택을 신축하고 있는데 지금은 29동 정도가 완공되어
																			   독일 교포들이 생활하고 있으며 관광객을 위한 민박을 운영하고 있기도 합니다.																
																			   독일교포 정착마을은 남해군에서도 가장 아름답고 자연경관이 뛰어난 삼동면 동천마을 문화예술촌 안에 조성되었으며, 남해에서도 산과 바다를 함께 조망할 수 있는 몇 안되는 곳입니다.
																			   바로 앞으로 펼쳐진 방조어부림의 시원한 바다와 남해안에서 가장 아름다운 해안 드라이브코스인 물미 해안도로와 더불어
																			   2005년 독일월드컵과 함께 남해 보물섬의 새로운 관광지로 부상하고 있습니다. 정착촌 바로 옆에는 산림욕장, 나비생태공원 등 자연학습장이 들어서고 있으며,
																			   2001년 10월부터 창선~사천간 연륙교가 완공되어 교통이 더욱 좋아져 한려수도의 중심 휴양지로 자리잡았습니다.
																</p>
																<a href="#none" class="txt em">자세히보기</a>
															</div>
														</div>
														<div class="spot_info">
															<div class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal">
																<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);">
																	<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/07/07/10000/1af66bfe-f76b-4721-a622-6edfbfb40bb8.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2008/09/09/10000/68333cc9-2ea9-4818-a22f-ee7b1425fd5b.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2008/09/09/10000/772f2d74-014c-4e15-9994-34faa2b5c6d5.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-duplicate-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/07/07/10000/1af66bfe-f76b-4721-a622-6edfbfb40bb8.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-duplicate" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2008/09/09/10000/68333cc9-2ea9-4818-a22f-ee7b1425fd5b.jpg" title="" data-src="" alt="">
																	</div>
																</div>
																<a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide"><span class="blind">이전</span></a>
																<a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide"><span class="blind">다음</span></a>
																<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
															</div>
															<div class="info">
																<div class="text_wrap"><strong class="tit">창선-삼천포대교</strong></div>
																<p class="txt">남해의 새로운 관문으로 2003년 개통한 창선-삼천포 대교는 남해 관광자원 개발과 한려수도 관광 활성화 및 이동시간 단축으로 인한
																		  	   지역경제 활성화 등 큰 기대를 받고있는 의미있는 다리이다.  총 길이 3.4km의 연륙교로 엉개교, 단항대교, 늑도교, 초양교, 삼천포대교라는
																		  	   다섯 개의 교량이 각기 다른 형식으로 천혜의 자연과 어우러져 특히 야경이 장관이다.	우리나라 최초로 섬과 섬을 연결한 다리이다.								
																</p>
																<a href="#none" class="txt em">자세히보기</a>
															</div>
														</div>
														<div class="spot_info">
															<div class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal">
																<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);">
																	<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/17/20000/f0045e25-873f-4e5b-a2a3-bc5b74223696.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/17/20000/77da6521-5ad4-45f1-8803-553d389b71ce.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/17/20000/4f8825c8-b5aa-4b6c-ab9d-eb3fad580397.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-duplicate-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/17/20000/f0045e25-873f-4e5b-a2a3-bc5b74223696.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-duplicate" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/17/20000/77da6521-5ad4-45f1-8803-553d389b71ce.jpg" title="" data-src="" alt="">
																	</div>
																</div>
																<a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide"><span class="blind">이전</span></a>
																<a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide"><span class="blind">다음</span></a>
																<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
															</div>
															<div class="info">
																<div class="text_wrap"><strong class="tit">사천 바다 케이블카</strong></div>
																<p class="txt">'산-바다-섬'을 잇는 형식의 국내 최초 케이블카로 2.43km(약 20분)의 길이입니다. 섬(초양도), 바다, 산(각산)을 이으며
																				3개 정류장의 승하차 시스템으로 다양한 볼거리를 즐길 수 있습니다.
																				* 기상악화로 케이블카 운행이 불가할 경우 대체 일정으로 진행됩니다. 대체 관광으로 진행될 경우 관광지 입장료 차액 환불은 불가합니다.
																</p>
																<a href="#none" class="txt em">자세히보기</a>
															</div>
														</div>
														<div class="spot_info">
															<div class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal">
																<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);">
																	<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/04/08/460000/e1781f54-035d-40e3-8273-9d5fa5ac9c99.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/15/10000/f721d95f-1307-4166-b211-3861e2fe920f.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2008/02/29/10000/9bf39d4a-6c83-4c4a-9e7b-4e795982d76a.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-duplicate-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/04/08/460000/e1781f54-035d-40e3-8273-9d5fa5ac9c99.jpg" title="" data-src="" alt="">
																	</div>
																	<div class="swiper-slide swiper-slide-duplicate" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/15/10000/f721d95f-1307-4166-b211-3861e2fe920f.jpg" title="" data-src="" alt="">
																	</div>
																</div>
																<a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide"><span class="blind">이전</span></a>
																<a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide"><span class="blind">다음</span></a>
																<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
															</div>
															<div class="info">
																<div class="text_wrap"><strong class="tit">호텔 사우나</strong></div>
																<p class="txt">호텔 사우나에서 여행 중에 쌓인 피로감과 일상의 스트레스를 말끔히 풀어내는 여유로운 시간을 가질 수 있습니다.
	    																	   사우나는 찜질이나 온천욕에 비해 수분을 방출하는 효과가 뛰어나 부종예방에 좋습니다.
	    																	   또한 피로회복, 혈액순환 촉진, 노폐물 제거, 원기 충전에 효과적입니다.
	    														</p>
	    														<a href="#none" class="txt em">자세히보기</a>
	    													</div>
	    												</div>
	    											</div>
	    											<div class="spot_area">
	    												<div class="text_wrap">
	    													<strong class="tit">3일차</strong>
	    													<span class="txt">2021.01.20(수) </span>
	    												</div>
	    												<div class="spot_info">
	    													<div class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal">
	    														<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);">
	    															<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/01/31/10000/8ea96bb7-701e-4d12-8100-026acba40fac.png" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/17/20000/0264da7b-bf6b-4095-817d-349bf438e18d.jpg" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/01/31/10000/1fdf3520-da78-4e64-96cb-f8a793b6eebe.png" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-duplicate-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/01/31/10000/8ea96bb7-701e-4d12-8100-026acba40fac.png" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-duplicate" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/17/20000/0264da7b-bf6b-4095-817d-349bf438e18d.jpg" title="" data-src="" alt="">
	    															</div>
	    														</div>
	    														<a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide"><span class="blind">이전</span></a>
	    														<a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide"><span class="blind">다음</span></a>
	    														<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
	    													</div>
	    													<div class="info">
	    														<div class="text_wrap">
	    															<strong class="tit">거제 맹종죽 테마파크</strong>
	    														</div>
	    														<p class="txt">바다가 보이는 맹종죽 죽림욕장은 "효"의 상징으로 일컫는 맹종죽의 풍부한 음이온을 이용한 자연치유를 목적으로 조성되었습니다.
	    																	   맹종죽을 이용한 다양한 놀이와 체험이 가능하며 이를 통해 심신의 균형을 잡고 스트레스를 없애는 데 큰 도움이 됩니다.
	    														</p>
	    														<a href="#none" class="txt em">자세히보기</a>
	    													</div>
	    												</div>
	    												<div class="spot_info">
	    													<div class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal">
	    														<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);">
	    															<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2010/12/15/10000/eb96853b-0d43-444a-9640-8a7d81900dac.jpg" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/05/04/10000/fa58d88b-08d3-44c9-93af-afcaa0acbc3a.png" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/08/11/10000/f913d9b6-4823-4cd1-8f22-a6b57b784c1d.jpg" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-duplicate-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2010/12/15/10000/eb96853b-0d43-444a-9640-8a7d81900dac.jpg" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-duplicate" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/05/04/10000/fa58d88b-08d3-44c9-93af-afcaa0acbc3a.png" title="" data-src="" alt="">
	    															</div>
	    														</div>
	    														<a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide"><span class="blind">이전</span></a>
	    														<a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide"><span class="blind">다음</span></a>
	    														<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
	    													</div>
	    													<div class="info">
	    														<div class="text_wrap">
	    															<strong class="tit">거가 대교</strong>
	    														</div>
	    														<p class="txt">부산 가덕도와 거제 유호리를 연결하는 다리로 가덕도-대죽도-중죽도-저도-유호리를 통과합니다.
	    																	   길이 8.2km, 왕복 4차선 도로로 가덕도-대죽도(3.7km)의 구간을 해저 침매터널로 만들었습니다.
	    																	   해저 침매터널 구간을 한국에서 최초로 내해(內海)가 아닌 파도와 바람, 조류가 심한 외해(外海)에서 건설되었다는 것에 역사적 의미가 있습니다.
	    														</p>
	    														<a href="#none" class="txt em">자세히보기</a>
	    													</div>
	    												</div>
	    												<div class="spot_info">
	    													<div class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal">
	    														<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);">
	    															<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="6">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/08/07/10000/4b15c234-f458-44ef-98e7-4b2d5f6f1cae.jpg" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/08/10/10000/3e55a6bb-0d20-40a9-8edc-54ed7f1284aa.jpg" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/08/10/10000/54a199ee-ac4e-4b93-8b9f-e6070e528a21.jpg" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/08/07/10000/31dd033b-27b7-4b5a-92a7-ec15e6d74112.JPG" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="3">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/08/07/10000/7b129a3b-920d-41e3-8bd9-dc403b1f20d3.JPG" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="4">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/08/07/10000/ad7c0aa7-94a3-469f-b58c-10aeaf564a66.jpg" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="5">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/08/07/10000/be95134a-c364-4cad-ba65-e350c4f8e0f8.JPG" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-duplicate-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="6">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/08/07/10000/4b15c234-f458-44ef-98e7-4b2d5f6f1cae.jpg" title="" data-src="" alt="">
	    															</div><div class="swiper-slide swiper-slide-duplicate" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/08/10/10000/3e55a6bb-0d20-40a9-8edc-54ed7f1284aa.jpg" title="" data-src="" alt="">
	    															</div>
	    														</div>
	    														<a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide"><span class="blind">이전</span></a>
	    														<a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide"><span class="blind">다음</span></a>
	    														<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
	    													</div>
	    													<div class="info">
	    														<div class="text_wrap">
	    															<strong class="tit">바람의 언덕(신선대)</strong>
	    														</div>
	    														<p class="txt">바람의 언덕의 옛 이름은 '띠밭늘'로, 바닷바람이 세게 분다고 하여 이름이 변경되었습니다.
	    																	   언덕에서 한려수도 바다를 바라보며 시원한 바람이 상쾌함을 선사합니다. 언덕에 풍차가 있어 이국적이면서도
	    																	   아름다운 바람의 언덕은 남해안 경관 명소 20곳에 선정되기도 했습니다.
	    																	   남쪽으로는 거친 해식애 지형인 신선대가 있어 천천히 걸으며 구경할 수 있습니다.
	    														</p>
	    														<a href="#none" class="txt em">자세히보기</a>
	    													</div>
	    												</div>
	    												<div class="spot_info">
	    													<div class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal">
	    														<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
	    															<div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;"><img src="" title="" data-src="" alt="" class="noimg"></div>
	    														</div>
	    														<a href="#none" class="prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true"><span class="blind">이전</span></a>
	    														<a href="#none" class="next swiper-button-disabled" tabindex="0" role="button" aria-label="Next slide" aria-disabled="true"><span class="blind">다음</span></a>
	    														<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
	    													</div>
	    													<div class="info">
	    														<div class="text_wrap">
	    															<strong class="tit">오륙도 스카이워크</strong>
	    														</div>
	    														<p class="txt">동해와 남해의 경계지점의 말의 안장처럼 생긴 승두말에 위치한 오륙도 스카이워크는 2013년도에 개장하였습니다.
	    																	   35m 해안절벽 위에 놓인 15m 길이의 유리 다리 위에서 파도가 절벽을 치는 모습을 보며 걷는 아찔한 경험을 해볼 수 있고,
	    																	   날씨가 맑으면 대마도까지도 볼 수 있습니다.
	    														</p>
	    														<a href="#none" class="txt em">자세히보기</a>
	    													</div>
	    												</div>
	    											</div>
	    											<div class="spot_area">
	    												<div class="text_wrap">
	    													<strong class="tit">4일차</strong>
	    													<span class="txt">2021.01.21(목) </span>
	    												</div>
	    												<div class="spot_info">
	    													<div class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal">
	    														<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);">
	    															<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2016/11/09/10000/7de7821d-3210-445d-b200-c5f481b38143.jpg" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2016/11/09/10000/ad951bf6-d6bc-4f50-a78e-32bdddf62494.jpg" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2016/11/09/10000/b021d787-27d3-45f4-8bb0-4fef1212fdd0.jpg" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-duplicate-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2016/11/09/10000/7de7821d-3210-445d-b200-c5f481b38143.jpg" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-duplicate" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2016/11/09/10000/ad951bf6-d6bc-4f50-a78e-32bdddf62494.jpg" title="" data-src="" alt="">
	    															</div>
	    														</div>
	    														<a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide"><span class="blind">이전</span></a>
	    														<a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide"><span class="blind">다음</span></a>
	    														<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
	    													</div>
	    													<div class="info">
	    														<div class="text_wrap">
	    															<strong class="tit">해운대 동백섬</strong>
	    														</div>
	    														<p class="txt">가수 '조용필'의 노랫가락에도 소개되는 해운대의 동백섬은 원래는 독립된 섬이었으나 현재는 육지가 되었습니다.
	    																	   동백섬 안에는 세계의 정상들이 모여 회의를 하던 누리마루APEC하우스가 있습니다.
	    																	   소나무와 동백숲으로 울창하여 사시사철 늘 푸르고 광안대교와 오륙도를 조망 할 수 있습니다.
	    														</p>
	    														<a href="#none" class="txt em">자세히보기</a>
	    													</div>
	    												</div>
	    												<div class="spot_info">
	    													<div class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal">
	    														<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);">
	    															<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/17/20000/11a7afa7-7c15-4852-a8df-e22f6842a1ad.jpg" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/17/20000/02ef7a2c-1cf7-4b81-b153-699a595ac7cb.jpg" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/17/20000/53433fd3-df80-4b3a-bf79-caf6ea85d724.jpg" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-duplicate-prev" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/17/20000/11a7afa7-7c15-4852-a8df-e22f6842a1ad.jpg" title="" data-src="" alt="">
	    															</div>
	    															<div class="swiper-slide swiper-slide-duplicate" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
	    																<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/09/17/20000/02ef7a2c-1cf7-4b81-b153-699a595ac7cb.jpg" title="" data-src="" alt="">
	    															</div>
	    														</div>
	    														<a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide"><span class="blind">이전</span></a>
	    														<a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide"><span class="blind">다음</span></a>
	    														<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
	    													</div>
	    													<div class="info">
	    														<div class="text_wrap">
	    															<strong class="tit">통도사</strong>
	    														</div>
	    														<p class="txt">양산의 영축산에 자리한 한국의 3대 사찰 중 하나로 부처의 진신사리를 모시고 있는 '불보사찰'로 불립니다.
	    																	   신라 선덕여왕 때 자장이 창건해 1,500년에 이르는 역사를 지닌 국보급 사찰입니다.
	    																	   신라의 승단(僧團)을 체계화하는 중심지가 되었습니다.
	    																	   창건의 정신적 근거이며 중심인 금강계단은 부처의 진신사리를 안치하여 오늘날까지 잘 보존되고 있습니다.
	    														</p>
	    														<a href="#none" class="txt em">자세히보기</a>
	    													</div>
	    												</div>
	    											</div>
	    										</div>
	    									</div>
	    										<!-- 호텔&관광지 Tabs // 호텔 정보 상세내용 -->
	    									<div id="tour04" class="panel">
	    										<div class="text_wrap">
	    											<strong class="tit exclam em"><em>예약 시 유의사항</em></strong>
	    											<ul class="list_bul disc">
	    												<li>현재 국제적으로 통용되는 호텔 등급의 표기 기준은 없으며 일부 국가에서는 자국의 기준에 따라 등급표기를 하는 경우가 있습니다.</li>
	    												<li>당사 일정표 및 호텔정보에 표기되는 호텔의 등급표기는 현지 호텔측으로부터 받은 등급 기준을 반영하여 정한 것으로 국제적으로 통용되는 등급은 아니며, 고객님의 선택의 편의를 도모하기 위함임을 양해바랍니다.</li>
	    												<li>본 정보는 호텔에 대한 전반적인 안내를 위한 것이며, 실제로 사용하시는 시설과는 이미지가 다를 수 있습니다.</li>
	    											</ul>
	    										</div>
	    										<div class="js_tabs hotel v-tabs">
	    											<ul id="hotel" class="tabs">
	    												<li class="selected" style="width: 33.3333%;">
	    													<a href="#none">
	    														<span class="city ing">한국(여수GH시)</span>
	    														<strong>히든 베이 호텔</strong>
	    													</a>
	    												</li>
	    												<li class="" style="width: 33.3333%;">
	    													<a href="#none">
	    														<span class="city ing">한국(거제시)</span>
	    														<strong>삼성 호텔 거제</strong>
	    													</a>
	    												</li>
	    												<li class="" style="width: 33.3333%;">
	    													<a href="#none">
	    														<span class="city ing">한국(undefined)</span>
	    														<strong>부산 웨스틴조선호텔</strong>
	    													</a>
	    												</li>
	    											</ul>
	    											<div class="panels">
	    												<div id="hotel01" class="panel selected">
	    													<div class="hotel_detail_wrap">
	    														<div class="hotel_info">
	    															<div id="hotel1" class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal" style="display: block;">
	    																 <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);">
	    																	<div class="swiper-slide swiper-slide-duplicate" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="4">
	    																	<img src="https://image.hanatour.com/usr/cms/resize/400_0/2012/08/29/10000/b5c0b3bb-efa8-4867-87c5-d1a67d196cd3.jpg" title="" data-src="">
	    																	</div>
	    																	<div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
	    																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2012/08/29/10000/9b7c6d16-59c3-48d1-9736-f441187394d2.jpg" title="" data-src="" alt="" class="">
	    																	</div>
	    																	<div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1">
	    																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2012/08/29/10000/279d432c-1986-4153-bfe1-d78b83238515.jpg" title="" data-src="" alt="">
	    																	</div>
	    																	<div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2">
	    																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2012/08/29/10000/1a634732-8626-43ad-af8e-2c5cd029aedc.jpg" title="" data-src="" alt="">
	    																	</div>
	    																	<div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="3">
	    																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2012/08/29/10000/0bf11078-60df-44c2-93d7-15c8a092ef4d.jpg" title="" data-src="" alt="">
	    																	</div>
	    																	<div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="4">
	    																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2012/08/29/10000/b5c0b3bb-efa8-4867-87c5-d1a67d196cd3.jpg" title="" data-src="" alt="">
	    																	</div>
	    																	<div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0">
	    																		<img src="https://image.hanatour.com/usr/cms/resize/400_0/2012/08/29/10000/9b7c6d16-59c3-48d1-9736-f441187394d2.jpg" title="" data-src="" alt="" class="noimg">
	    																	</div>
	    																</div> 			
	    																<a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="false"><span class="blind">이전</span></a>
	    																<a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"><span class="blind">다음</span></a>
	    																<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
	    															</div>
	    															<div id="hotel2" class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal" style="display: none;"><div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);"><div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" data-swiper-slide-index="16" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/cb8a9096-4435-4067-a7b4-30cc265b0b40.jpg" title="" data-src=""></div><div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/612157b7-05b5-4135-b39c-f5ccbaa1b349.jpg" title="" data-src="" alt="" class=""></div><div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/cf1d916f-f7c3-4bcb-a825-6ce558b46cf1.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/61ddbabe-2b3c-4b77-9213-7ff93d51486b.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="3"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/e78fce6f-c943-43b1-b362-a6545c918412.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="4"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/812c618b-62c5-43c1-ad3e-0cb0c62c627f.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="5" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/965332dd-89f1-4d57-ab39-fb164ad78eed.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="6" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/0e427fe9-250a-47b1-9c12-595934bed122.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="7" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/9d7c216f-688f-4c02-ac16-a0cf43660e97.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="8" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/999c65e6-4537-449e-974a-e2e65a2b7258.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="9" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/6c916a1e-c855-4c50-9d57-a3af771ed8b6.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="10" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/2333584d-f581-44fb-8529-b59ebf3af3d2.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="11" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/49c5aa73-59ed-4712-a8b8-a78a18bf8920.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="12" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/3905990d-e760-46b2-93e8-4d5a09224fd8.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="13" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/ff8b0eaa-067e-497c-b086-816cc3242b3f.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="14" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/0d0f7347-eaaf-496d-8e77-6010cb99a79e.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="15" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/be07e1ee-fce9-4774-bdb0-9136076ec431.jpg" title="" data-src="" alt=""></div><div class="swiper-slide swiper-slide-duplicate-prev" data-swiper-slide-index="16" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/cb8a9096-4435-4067-a7b4-30cc265b0b40.jpg" title="" data-src="" alt=""></div><div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/612157b7-05b5-4135-b39c-f5ccbaa1b349.jpg" title="" data-src="" alt="" class=""></div></div> <a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="false"><span class="blind">이전</span></a> <a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"><span class="blind">다음</span></a><span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
	    															<div id="hotel3" class="img_box swiper-container prevNext v-swiper2 swiper-container-initialized swiper-container-horizontal" style="display: none;"><div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-390px, 0px, 0px);"><div class="swiper-slide swiper-slide-duplicate swiper-slide-prev" data-swiper-slide-index="23" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/a09fd1ce-3777-43b4-a5d8-f002f0368009.jpg" title="" data-src="" alt=""></div><div class="swiper-slide swiper-slide-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2010/12/24/10000/9e864e8b-1f2a-4be4-a614-3171ccd029d8.jpg" title="" data-src="" alt="" class=""></div><div class="swiper-slide swiper-slide-next" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="1"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2011/08/04/10000/5c361261-ed7c-4c28-9d7d-3d4a114b6786.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="2"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2011/08/04/10000/38dffbe3-a5a1-4629-9b25-e68b321d2d1d.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="3"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2011/08/04/10000/3a9b4f62-4ceb-46e4-b70b-7a2627bec7d3.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="4"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2009/04/03/10000/6c14c7e5-261e-45b8-98f3-1f9002fb2f74.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="5"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2009/04/03/10000/8bb327e2-1ece-426a-9ffb-cca63818a87e.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="6"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/110ca176-dbc2-4e00-88bb-65c553ff6157.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="7"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/2422aef5-67bf-4aac-901f-12c9082a6243.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="8"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/b211eab6-224c-4449-b62c-91e1819618a0.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="9"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/5927c74d-7b3b-48f8-9a8e-94dc92c5edef.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="10"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/b931602c-1ff6-4967-b386-fbc22363bcd7.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="11"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/9fdd4cb2-8402-4298-851d-0575662b3e2a.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="12"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/d380939a-c254-411d-b532-f1b39af17e5e.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="13"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/22477c2b-899c-4b5a-baf0-567f8dff3340.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="14"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/0a8a3cbd-7a85-4ffc-bd23-af9f403435b9.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="15"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/10353167-ff00-40c1-acf5-6fc2570a3a2a.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="16"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/6dfc61a8-e7d4-49b6-9f9d-e21b844872a7.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="17" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/cd2c0cba-4773-4ebd-83e0-af46035c9d04.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="18" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/4ccf7ad2-7975-4c06-bd99-e3e4c428ebc7.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="19" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/e7675489-b4d0-48b8-848c-fbebed6f21cf.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="20" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/f5115e9e-9b4b-4d98-9d48-f5e5422468e7.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="21" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/1c64b795-a340-44d3-9f4c-193e7ffd1528.jpg" title="" data-src="" alt=""></div><div class="swiper-slide" data-swiper-slide-index="22" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/42437de3-e9ec-4b5a-af79-532136cfc20a.jpg" title="" data-src="" alt=""></div><div class="swiper-slide swiper-slide-duplicate-prev" data-swiper-slide-index="23" style="width: 380px; margin-right: 10px;"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2019/04/04/10000/a09fd1ce-3777-43b4-a5d8-f002f0368009.jpg" title="" data-src="" alt=""></div><div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" style="width: 380px; margin-right: 10px;" data-swiper-slide-index="0"><img src="https://image.hanatour.com/usr/cms/resize/400_0/2010/12/24/10000/9e864e8b-1f2a-4be4-a614-3171ccd029d8.jpg" title="" data-src="" alt="" class=""></div></div> <a href="#none" class="prev" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="false"><span class="blind">이전</span></a> <a href="#none" class="next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"><span class="blind">다음</span></a><span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
	    															<div class="info">
	    																<div class="text_wrap">
	    																	<strong class="tit">히든 베이 호텔</strong>
	    																	<span>HIDDEN BAY HOTEL</span>
	    																</div>
	    																<p class="txt">여수 히든베이호텔</p>
	    															</div>
	    														</div>
	    														<div class="hotel_benefit">
	    															<span class="fitness">피트니스</span>
	    															<span class="desk">24시간 프런트 데스크</span>
	    															<span class="clean">세탁서비스</span>
	    															<span class="wifi">Wi-Fi(무료)</span>
	    															<span class="spa">사우나</span>
	    															<span class="swimming">수영장</span>
	    														</div>
	    														<div class="tbl">
	    															<div class="text_wrap mid">
	    																<strong class="tit">기본정보</strong>
	    															</div>
	    															<table class="type2">
	    																<colgroup>
	    																	<col style="width: 15%;">
	    																	<col style="width: 32%;">
	    																	<col style="width: 15%;">
	    																	<col>
	    																</colgroup>
	    																<tbody>
	    																	<tr>
	    																		<th>도시</th>
	    																		<td>한국, 여수시</td>
	    																		<th>주소</th>
	    																		<td>495-20, Sinwolro, Yeosu-si, Jeollanam-do, Korea</td>
	    																	</tr>
	    																	<tr>
	    																		<th>연락처</th>
	    																		<td>82-61-680-3000</td>
	    																		<th>홈페이지</th>
	    																		<td><a target="_blank" class="link" href="http://www.hiddenbay.co.kr">http://www.hiddenbay.co.kr</a></td>
	    																	</tr>
	    																	<tr>
	    																		<th>층수 / 객실수</th>
	    																		<td>10 층 / 131 객실</td>
	    																		<th>체크인/<br>체크아웃</th>
	    																		<td>체크인 3:00 PM / 체크아웃 11:00 AM</td>
	    																	</tr>
	    																	<tr>
	    																		<th>위치</th>
	    																		<td colspan="3">공항근처</td>
	    																	</tr>
	    																</tbody>
	    															</table>
	    														</div>
	    														<div class="tbl">
	    															<div class="text_wrap mid">
	    																<strong class="tit">부대시설 및 객실시설</strong>
	    															</div>
	    															<table class="type2">
	    																<colgroup>
	    																	<col style="width: 15%;">
	    																	<col style="width: 35%;">
	    																	<col style="width: 15%;">
	    																	<col>
	    																</colgroup>
	    																<tbody>
	    																	<tr>
	    																		<th>부대시설</th>
	    																		<td class="vtop">
	    																			<ul class="service_list">
	    																				<li class="mb10"></li>
	    																				<li style="white-space: pre-line;">
	    																					※하기의 시설 및 서비스는 호텔내 혹은 부근에서 이용가능하시며 상황에 따라 비용이 추가로 발생할 수 있습니다
																							- 레스토랑
																							- 라운지
																							- 바
																							- 사우나
																							- 휘트니스센터
																							- 수영장
																							- 연회장
																							- 웨딩시설
																						</li>
																					</ul>
																				</td>
																				<th>객실시설</th>
																				<td class="vtop">
																					<ul class="service_list">
																						<li class="mb10"></li>
																						<li style="white-space: pre-line;">
																							객실안내
																							- 디럭스 더블 : 2인 기준
																							- 디럭스 트윈 :  2인 기준
																							- 헐리우드 트윈 : 2인 기준
																							- 온돌 : 2인 기준
																							- 온돌베드 : 2인기준
																						</li>
																					</ul>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
								<!-- 참고사항 Tabs -->
							<div id="sticky04" class="panel">
								<div class="cont_unit notice">
									<div class="js_tabs type1 v-tabs">
										<ul class="tabs">
											<li class="selected" style="width: 50%;">
												<a href="#notice02">결제/혜택/보험</a>
											</li>
											<li style="width: 50%;">
												<a href="#notice03">비상연락방법</a>
											</li>
										</ul>
										<div class="panels">
											<!-- 참고사항 Tabs // 혜택/보험 내용  -->
											<div id="notice02" class="panel selected">
												<div class="prod_notice"><ul class="list_bul nostyle">
													<li>
														<strong class="tit">결제 안내</strong>
															<ul class="list_bul disc">
																<li>
																	<strong class="tit">결제 방법</strong>
																	하나투어 법인계좌(가상계좌 포함)로의 송금, 신용카드의 경우 하나투어본사의 ARS(1577-0015) 또는 하나투어 홈페이지에서 온라인결제
																</li>
																<li>
																	<strong class="tit mt15">결제 확인</strong>하나투어 홈페이지 내 "예약확인/결제" 하나투어 공식결제 방법을 이용하셔야 법적권리 및 소비자 권익을 보호 받으실 수 있으며, 현금영수증 발급은 여행용역 제공 후 발급해드리고 있습니다. www.hanatour.com 홈페이지 접수
																</li>
															</ul>
														</li>
														<li>
															<strong class="tit">추가혜택</strong>
															<ul class="list_bul disc">
																<li>
																	<strong class="tit mt0">카드혜택</strong>
																	<a href="#none" class="btn">카드혜택 상세보기</a>
																</li>
																<li>
																	<strong class="tit mt15">하나투어 마일리지</strong>
																	<ul class="list_bul dash">
																		<li><strong>가입확인</strong><br>하나투어 홈페이지, 하나투어앱, 모바일카드, 상담여행사</li>
                                                                        <li><strong>마일리지 적립/사용</strong>
                                                                        	<ul class="list_bul disc">
                                                                        		<li>국내/해외 모든 항공/여행/숙박/입장권/레저(성수기 제약 없음, 자유로운 부분 결제 가능)</li>
                                                                        		<li>웨딩, 교육, 쇼핑(300여 공급자의 1만여 상품), 주유/F&amp;B/영화/공연 등 업종별 메이저 기업 서비스</li>
                                                                        		<li>회원 전용 다양한 마일리지 우대 서비스</li>
                                                                        	</ul>
                                                                        </li>
                                                                        <li>
                                                                        	<strong>모바일 카드</strong>
                                                                        	<p>스마트월렛 모바일앱 (시럽,모카,마이원 등)에서 하나투어 멤버십 발급 적립내역확인,면세점/환전/공항버스/공항철도/외투보관 할인 등 다양한 혜택!
                                                                        	</p>
                                                                        </li>
                                                                        <li>
                                                                        	<strong>하나투어 카드</strong>
                                                                        	<div class="ly_wrap mt10">
                                                                        		<div class="inr" style="width: 30%;">
                                                                        			<div class="img_box">
                                                                        				<img src="https://image.hanatour.com/usr/static/img/pc/pmt/img_card.png" title="" data-src="" alt="">
                                                                        			</div>
                                                                        		</div>
                                                                        		<div class="inr" style="width: 56%;">
                                                                        			<div class="text_wrap sml top">
                                                                        				<strong class="tit mt0">하나투어 KB국민카드</strong>
                                                                        			</div>
                                                                        			<ul class="list_bul disc">
                                                                        				<li>하나투어 천원당 30ⓜ</li>
                                                                        				<li>어디서나 천원당 10~100ⓜ 파격적립</li>
                                                                        				<li>면세점/해외 천원당 20ⓜ</li>
                                                                        				<li>전국 영화 7천원 할인 등</li>
                                                                        			</ul>
                                                                        		</div>
                                                                        	</div>
                                                                        </li>
                                                                    </ul>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li>
                                                        	<strong class="tit">영업보증보험</strong>
                                                        	<p class="txt">하나투어는 영업보증보험 22억 1천만원에 가입되어 있습니다.
                                                        		<a href="#none" class="btn">영업보증보험 바로가기</a>
                                                        	</p>
                                                        	<p class="txt">※ 문의 - 롯데손해보험 고객센터: 1588-3344 (www.lotteins.co.kr)</p>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <!-- 참고사항 Tabs // 비상연락방법  -->
                                            <div id="notice03" class="panel">
                                            	<div class="prod_notice">
                                            		<ul class="list_bul nostyle">
                                            			<li>
                                            				<strong class="tit">첫 만남시 긴급 상황 발생한 경우</strong>
                                            				<p style="white-space: pre-line;">☎ 02-2127-1000</p>
                                            				<p style="white-space: pre-line;">상품관련 문의는 예약하신 하나투어상품판매점(도우미여행사)로 주시기 바랍니다.</p>
                                            			</li>
                                            			<li>
                                            				<strong class="tit">여행불편 상담</strong>
                                            				<p> 고객센터 1577-1233</p>
                                            				<p> 한국여행업협회 여행불편처리센터 1588-8692</p>
                                            				<p> 1372소비자상담센터 (국번없이)1372</p>
                                            			</li>
                                            		</ul>
                                            	</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            	<!-- 상품평 Tabs -->
                            <div id="sticky06" class="panel">
                            	
                            	<div class="cont_unit review"><div class="review_wrap">
                            		<div class="option_wrap list_txt">
                            			<span><a href="#none" class="select">전체(0)</a></span>
                            			<span><a href="#none" class="">부부/연인(0)</a></span>
                            			<span><a href="#none" class="">가족여행(0)</a></span>
                            			<span><a href="#none" class="">아동동반(0)</a></span>
                            			<span><a href="#none" class="">친구(0)</a></span>
                            			<span><a href="#none" class="">나홀로(0)</a></span>
                            			<span><a href="#none" class="">허니문(0)</a></span>
                            			<span><a href="#none" class="">기타(0)</a></span>
                            			<div class="right_cont">
                            				<a href="#none" class="btn sml gray"><span>상품평쓰기</span></a>
                            			</div>
                            		</div>
                            		<div class="js_tabs type1 v-tabs">
                            			<ul class="tabs">
                            				<li class="" style="width: 50%;">
                            					<a href="#review01">프리미엄상품평</a>
                            				</li>
                            				<li class="selected" style="width: 50%;">
                            					<a href="#review02">일반상품평</a>
                            				</li>
                            			</ul>
                            			<div class="panels">
                            				<!-- 상품평 Tabs // 프리미엄상품평  -->
                            				<div id="review01" class="panel">
                            					<ul class="list_review"></ul>
                            					<div class="data_no">
                            						<div class="cont"><strong>작성된 상품평이 없습니다.</strong></div>
                            					</div>
                            					<div class="paginate_wrap" style="display: none;">
                            						<div class="paginate">
                            							<div>
                            								<a href="#none" class="direction prevend" style="display: none;">처음</a>
                            								<a href="#none" class="direction prev" style="display: none;">이전</a>
                            								<span><strong>1</strong></span>
                            								<a href="#none" class="direction next" style="display: none;">다음</a>
                            								<a href="#none" class="direction nextend" style="display: none;">끝</a>
                            							</div>
                            						</div>
                            					</div>
                            				</div>
                            				<!-- 상품평 Tabs // 일반상품평 -->
                            				<div id="review02" class="panel selected">
                            					<ul class="list_review"></ul>
                            					<div class="data_no">
                            						<div class="cont"><strong>작성된 상품평이 없습니다.</strong></div>
                            					</div>
                            					<div class="paginate_wrap" style="display: none;">
                            						<div class="paginate">
                            							<div>
                            								<a href="#none" class="direction prevend" style="display: none;">처음</a>
                            								<a href="#none" class="direction prev" style="display: none;">이전</a>
                            								<span><strong>1</strong></span>
                            								<a href="#none" class="direction next" style="display: none;">다음</a>
                            								<a href="#none" class="direction nextend" style="display: none;">끝</a>
                            							</div>
                            						</div>
                            					</div>
                            				</div>
                            			</div>
                            		</div>
                            	</div>
                            </div>
                        </div>
                    </div>
                </div>		
                			<!-- 가장 맨아래 배너 -->
                			<div class="banner_wrap">
                				<a href="/assets/micro/pc/competitiv/" target="_blank" class="banner">
                					<img src="https://image.hanatour.com/usr/manual/update/pc/schedule/1c/001.jpg" 
                					title="대한민국 해외여행각 4명중 1명의 선택 : 해외여행은 역시 하나투어! 1등이라 다른 5가지 이유" 
                					data-src="" alt="대한민국 해외여행각 4명중 1명의 선택 : 해외여행은 역시 하나투어! 1등이라 다른 5가지 이유">
                				</a>
                			</div>
                			<div class="banner_wrap">
                				<div class="banner inr" style="width: 430px; height: 120px;">
                					<div class="swiper-container v-swiper2">
                						<div class="swiper-wrapper"></div>
                					</div>
                				</div>
                				<div class="banner inr right" style="width: 430px; height: 120px;">
                					<div class="swiper-container v-swiper2">
                						<div class="swiper-wrapper"></div>
                					</div>
                				</div>
                			</div>                			
						</div>
						<div class="inr right">
							<div class="text_wrap big">
								<strong class="tit">인원선택</strong>
							</div>
							<div class="cont_unit js_sticky" style="right: auto; left: 0px;">
								<div class="member_count">
									<ul>
										<!-- 성인 수량 버튼 -->
										<li>
											<p class="tit">
												<span class="txt">성인</span>
												<span class="price">3,040,000원</span>
											</p>
											<span id="adult" class="num_count_group">
												<button class="btn_decrement down"></button>
												<span class="inpt_counter">1</span>
												<button class="btn_increment up"></button>
											</span>
										</li>
										<li>
											<!-- 아동 수량 버튼 -->
											<p class="tit">
												<span class="txt">아동
													<span class="tooltip right">
														<span class="tooltiptext">아동(만 12세 미만)<br>2009.02.02 ~ 2019.02.01</span>
													</span>
												</span>
												<span class="price">1,320,000원</span>
											</p>
											<span id="child" class="num_count_group">
												<button class="btn_decrement down"></button>
												<span class="inpt_counter">0</span>
												<button class="btn_increment up"></button>
											</span>
										</li>
										<li>
											<!-- 유아 수량 버튼 -->
											<p class="tit">
												<span class="txt">유아
													<span class="tooltip right">
														<span class="tooltiptext">유아(만 2세 미만)<br>2019.02.02 ~ 2021.02.01<br></span>
													</span>
												</span>
												<span class="price">150,000원</span>
											</p>
											<span id="baby" class="num_count_group">
												<button class="btn_decrement down"></button>
												<span class="inpt_counter">0</span>
												<button class="btn_increment up"></button>
											</span>
										</li>
									</ul>
								</div>
								<div class="cont_wrap">
									<hr class="pkg">
									<!-- 총금액 -->
									<div class="total_money">
										<p class="tit">총 금액</p>
										<!-- 여기 금액은 el로 처리해야될거 같습니다 -->
										<p id="price" class="price">3,040,000<span>원</span></p>
										<div class="mileage_save">
											<a href="#none" class="txt arrow_r">하나투어 마일리지 <em>9,600<span class="icn mileage em"></span></em>적립예정</a>
										</div>
									</div>
									<div class="price_info">
										<a href="#price_info" class="js_toggle">상품가격 안내</a>
										<ul id="price_info" class="list_bul billiard">
											<li>아동, 유아요금은 성인 2인과 같은 방 사용조건이며, 미충족시 아동추가 요금이 발생합니다.</li>
											<li>1인 객실 사용시 추가요금 발생됩니다. <p>- 1인 객실 사용료 : 195,000원</p></li>
										</ul>
									</div>
									<hr class="pkg">
									<div class="cont_unit foot">
										<div class="btn_wrap">
											<a href="#none" class="btn big pink">예약하기</a>
											<a id="bag" href="#none" class="btn big line" onclick="sendIt();"><span class="icn cart">장바구니</span></a>
										</div>
									<div class="benefit_link">
										<a href="#none"><span class="icn card"></span> 카드/제휴혜택</a>
										<span class="divider_line"></span>
										<a href="https://card.kbcard.com/CXPRICAC0076.cms?mainCC=a&amp;cooperationcode=01234&amp;solicitorcode=7021234000?dotcom=Y?hanacode=main_TNB_credit" target="_blank">
											<span class="icn mileage"></span> 추가 적립/할인
										</a>
									</div>
									<a href="#none" class="banner">
										<img src="https://image.hanatour.com/usr/static/img/pc/com/banner_request_group.png" title="우리 여행은 우리맘대로! 단체맞춤여행 견적문의" data-src="" alt="우리 여행은 우리맘대로! 단체맞춤여행 견적문의">
									</a>
								</div>
							</div>
						</div>
					</div>
					</div>						
				</div>
			</div>
		</div>
	</div>
</div>
<form action="" name="koreaData" method="post">
<input type="hidden" name="subject" value="${dto.subject }">
<input type="hidden" name="code" value="${dto.code }">
<input type="hidden" name="title" value="${dto.title }">
<input type="hidden" name="firstCreate" value="${dto.firstCreate }">
<input type="hidden" name="num" value="${dto.num }">
</form>
</div>
</div>
</div>

<div class="pop"></div>
<div id="footer">
	<div class="inr">
		<div class="service_info_wrap">
			<div class="fl">
				<dl>
					<dt>아이티윌투어 모바일을 소개 합니다</dt>
					<dd>
						<div class="notice_list swiper-container v-swiper2 swiper-container-initialized swiper-container-vertical">
							<div class="swiper-wrapper" style="transform: translate3d(0px, -60px, 0px); transition-duration: 0ms;">
							<a href="/els/mbs/CHPC0MBS0001M200" class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next" style="height: 30px; cursor: pointer;" data-swiper-slide-index="2"><span></span>하나투어 - 해외여행, 항공, 호텔, 현지투어, 국내여행 하나면 돼!</a>
							<a href="/els/mbs/CHPC0MBS0001M200" class="swiper-slide swiper-slide-prev" style="height: 30px; cursor: pointer;" data-swiper-slide-index="0"><span></span>하나투어 항공 - 전세계 최저가 항공권 실시간 예약!</a>
							<a href="/els/mbs/CHPC0MBS0001M200" class="swiper-slide swiper-slide-active" style="height: 30px; cursor: pointer;" data-swiper-slide-index="1"><span></span>하나투어 호텔 - 전세계 호텔 쉽고 빠른 최저가 예약!</a>
							<a href="/els/mbs/CHPC0MBS0001M200" class="swiper-slide swiper-slide-next" style="height: 30px; cursor: pointer;" data-swiper-slide-index="2"><span></span>하나투어 - 해외여행, 항공, 호텔, 현지투어, 국내여행 하나면 돼!</a>
							<a href="/els/mbs/CHPC0MBS0001M200" class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev" style="height: 30px; cursor: pointer;" data-swiper-slide-index="0"><span></span>하나투어 항공 - 전세계 최저가 항공권 실시간 예약!</a>
							</div>
							<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
						</div>
					</dd>
				</dl>
			</div>
			<div class="fr">
				<ul class="sns_list">
					<li><a href="https://www.facebook.com/HanaTour.fb" target="_blank" class="facebook">facebook</a></li>
					<li><a href="https://www.instagram.com/hanatour_official" target="_blank" class="instagram">instagram</a></li>
					<li><a href="http://blog.hanatour.com/" target="_blank" class="blog">blog</a></li>
					<li><a href="https://pf.kakao.com/_ftrPI" target="_blank" class="kakaoplus">kakaoplus</a></li>
					<li><a href="https://www.youtube.com/user/HanaTour" target="_blank" class="youtube">youtube</a></li>
					<li><a href="https://story.kakao.com/#ch/hanatour" target="_blank" class="kakaostory">kakaostory</a></li>
				</ul>
			</div>
		</div>
		<div class="company_info_wrap">
			<div class="fl">
				<ul class="company_provision">
					<li><a href="http://www.hanatourcompany.com/kor/main/main.asp?hanacode=main_bottom_01" target="_blank">회사소개</a></li>
					<li><a href="/els/prv/CHPC0PRV0004M200">이용약관</a></li> <li><a href="/els/prv/CHPC0PRV0002M200"><strong>개인정보처리방침</strong></a></li>
					<li><a href="/els/prv/CHPC0PRV0003M200">여행약관</a></li> <li><a href="/els/etc/CHPC0ETC0008M200">해외여행자보험</a></li>
					<li><a href="/els/etc/CHPC0ETC0001M200">마케팅제휴</a></li> <li><a href="/els/etc/CHPC0ETC0004M200">공식인증예약센터 검색</a></li>
				</ul>
				<div>
					<div>
						<address class="footer_licensee">
							<span><strong>(주)아이티윌투어</strong></span>
							<span>대표 : 115기, 3조&nbsp;</span>
							<span>주소 : 서울특별시 강남구 테해란로 124 4층(역삼동,삼원타워)</span>
						</address>
						<p class="footer_licensee">
							<span>사업자등록번호 : 220-86-20171</span>
							<span><a href="http://www.ftc.go.kr/www/bizCommList.do?key=232" target="_blank">사업자정보확인</a></span>
							<span>통신판매업신고번호 : 강남 제-3339호</span>
							<span>관광사업자 등록번호 : 제1993-000006호</span>
						</p>
						<p class="footer_licensee">
							<span>개인정보 보호책임자 : 115기3조&nbsp;</span>
							<span>영업보증보험 : 22억 1천만원 가입</span>
							<span>팩스: 02-569-8069</span>
							<span>이메일 : itwilltour@itwilltour.com</span>
							<span><strong class="customer_center"><span>고객센터</span> 02-6255-8061&nbsp;</strong></span>
							<span style="display:none;"><a class="js_btn_lypop" href="javascript%3Avoid%20;" onclick="window.open('/pub_html/pc/dispute/conflict.html','','resizable=no scrollbars=yes width= 822, height=480 left=0 top=0');return false">분쟁처리절차</a></span>
						</p>
						<p class="guide_txt">※ 부득이한 사정에 의해 여행일정이 변경되는 경우 사전 동의를 받습니다.
							<br>※ 아이티윌투어는 개별 항공권 단독 판매, 단품 및 일부 여행상품에 대하여 통신판매중개자로서 통신판매의 당사자가 아니며 해당상품의 거래정보 및 거래등에 대해 책임을 지지 않습니다.
						</p>
						<p class="copy">COPYRIGHTⓒ HANATOUR SERVICE INC. ALL RIGHTS RESERVED</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="certification_mark">
		<div class="list_merit">
			<div class="award_list_wrap">
				<div class="award_list swiper-container v-swiper2 swiper-container-initialized swiper-container-horizontal">
					<div class="swiper-wrapper" style="transform: translate3d(-880px, 0px, 0px); transition-duration: 0ms;">
						<div class="item swiper-slide swiper-slide-duplicate" style="width: 220px; cursor: pointer;" data-swiper-slide-index="8">
							<span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-13.png" alt="로고"></span>
							2018<br>문화체육관광부<br>문화예술후원 우수기관 인증
						</div>
						<div class="swiper-slide swiper-slide-invisible-blank swiper-slide-duplicate" data-swiper-slide-index="9" style="width: 220px;"></div>
						<div class="swiper-slide swiper-slide-invisible-blank swiper-slide-duplicate" data-swiper-slide-index="10" style="width: 220px;"></div>
						<div class="swiper-slide swiper-slide-invisible-blank swiper-slide-duplicate swiper-slide-prev" data-swiper-slide-index="11" style="width: 220px;"></div>
						<div class="item swiper-slide swiper-slide-active" style="width: 220px; cursor: pointer;" data-swiper-slide-index="0">
							<span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-01.png" alt="로고"></span>대한민국<br>100대 브랜드
						</div>
						<div class="item swiper-slide swiper-slide-next" style="width: 220px; cursor: pointer;" data-swiper-slide-index="1">
							<span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-02.png" alt="로고"></span>한국능률협회선정<br>15년연속(2005~2019)<br>브랜드파워 1위
						</div>
						<div class="item swiper-slide" style="width: 220px; cursor: pointer;" data-swiper-slide-index="2">
							<span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-03.png" alt="로고"></span>브랜드스톡선정<br>15년연속(2005~2019)<br>브랜드스타 1위
						</div>
						<div class="item swiper-slide" style="width: 220px; cursor: pointer;" data-swiper-slide-index="3">
							<span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-04.png" alt="로고"></span>KMAC 선정<br>11년 연속(2009~2019)<br>한국산업의 고객만족도 여행사부문1위
						</div>
						<div class="item swiper-slide" style="width: 220px; cursor: pointer;" data-swiper-slide-index="4">
							<span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-05.png" alt="로고"></span>국가고객만족도(NCSI)<br>여행사 서비스업 부문 6년 연속 1위<br>(2014~2019)
						</div> 
						<div class="item swiper-slide" style="width: 220px; cursor: pointer;" data-swiper-slide-index="5">
							<span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-06.png" alt="로고"></span>한국능률협회선정<br>12년연속 (2017~2019)<br>한국에서 가장 존경받는 기업 대상
						</div>
						<div class="item swiper-slide" style="width: 220px; cursor: pointer;" data-swiper-slide-index="6">
							<span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-07.png" alt="로고"></span>2016<br>존경받는사회공헌기업대상<br>메세나ㆍ문화예술부문 대상
						</div>
						<div class="item swiper-slide" style="width: 220px; cursor: pointer;" data-swiper-slide-index="7">
							<span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-12.png" alt="로고"></span>2017 제5회<br>사랑의열매<br>기부 분야 금상 수상
						</div>
						<div class="item swiper-slide" style="width: 220px; cursor: pointer;" data-swiper-slide-index="8">
							<span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-13.png" alt="로고"></span>2018<br>문화체육관광부<br>문화예술후원 우수기관 인증
						</div>
						<div class="swiper-slide swiper-slide-invisible-blank" data-swiper-slide-index="9" style="width: 220px;"></div>
						<div class="swiper-slide swiper-slide-invisible-blank" data-swiper-slide-index="10" style="width: 220px;"></div>
						<div class="swiper-slide swiper-slide-invisible-blank swiper-slide-duplicate-prev" data-swiper-slide-index="11" style="width: 220px;"></div>
						<div class="item swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" style="width: 220px; cursor: pointer;" data-swiper-slide-index="0">
							<span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-01.png" alt="로고"></span>대한민국<br>100대 브랜드
						</div>
						<div class="item swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next" style="width: 220px; cursor: pointer;" data-swiper-slide-index="1">
							<span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-02.png" alt="로고"></span>한국능률협회선정<br>15년연속(2005~2019)<br>브랜드파워 1위
						</div>
						<div class="item swiper-slide swiper-slide-duplicate" style="width: 220px; cursor: pointer;" data-swiper-slide-index="2">
							<span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-03.png" alt="로고"></span>브랜드스톡선정<br>15년연속(2005~2019)<br>브랜드스타 1위
						</div>
						<div class="item swiper-slide swiper-slide-duplicate" style="width: 220px; cursor: pointer;" data-swiper-slide-index="3">
							<span><img src="https://image.hanatour.com/usr/static/img/pc/com/award-logo-04.png" alt="로고"></span>KMAC 선정<br>11년 연속(2009~2019)<br>한국산업의 고객만족도 여행사부문1위
						</div>
					</div>
					<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
				</div>
				<a href="#" class="btn_prev" tabindex="0" role="button" aria-label="Previous slide">이전보기</a>
				<a href="#" class="btn_next" tabindex="0" role="button" aria-label="Next slide">다음보기</a>
			</div>
				<ul class="travel_mark">
					<li>
						<a href="http://tourinfo.or.kr/standard/standard_01.asp" target="_blank">
							<span><img src="https://image.hanatour.com/usr/static/img/pc/com/mark_01.png" alt="mark"></span>국외여행상품 정보제공 표준안 참여여행사
						</a>
					</li>
					<li>
						<a style="cursor:pointer">
							<span><img src="https://www.eprivacy.or.kr/images/mng/sub/mark1_eprivacy.png" alt="mark"></span>개인정보보호우수사이트
						</a>
					</li>
					<li>
						<a href="http://www.kca.go.kr/ccm/certSystemOutlineView.do" target="_blank">
							<span><img src="https://image.hanatour.com/usr/static/img/pc/com/mark_03.png" alt="mark"></span>CCM
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>