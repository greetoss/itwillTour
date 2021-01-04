<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload Test</title>

	<!--JQUERY(AJAX)-->
	<script src="/itwillTour/resources/js/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="/itwillTour/resources/js/jquery.ajax-cross-origin.min.js"></script>

	<!--JAVASCRIPT-->
	<script src="/itwillTour/resources/js/fileUploadTest.js"></script>

</head>
<body>
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
                                            <span class="file_click" id="file_click1">+</span>
                                            <span class="file_click" id="file_click2">+</span>
                                            <span class="file_click" id="file_click3">+</span>
                                        </p>
                                        <input type="file" id="file1" name="file1">
                                        <br/><input type="file" id="file2" name="file2">
                                        <br/><input type="file" id="file3" name="file3">
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
</body>
</html>