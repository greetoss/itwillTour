
function submitForm(){
	var formData = new FormData($("#myForm")[0]);
	$.ajax({
		type:"POST",
		url:"fileUploadTest.action",
		data:formData,
		processData : false,
		contentType : false,
		success : function() {
			if(confirm("문의를 성공적으로 등록하였습니다.")){
				location.href="itwillTour13";
			} else {
				location.href="itwillTour13";
			}
		},
		error : function() {
			alert("문의 등록에 실패하였습니다.");
		}
		
	});
}

$(document).ready(function(){
	$("#file_click1").click(function(){
		$("#file1").click();
	})
	$("#file_click2").click(function(){
		$("#file2").click();
	})
	$("#file_click3").click(function(){
		$("#file3").click();
	})
})
