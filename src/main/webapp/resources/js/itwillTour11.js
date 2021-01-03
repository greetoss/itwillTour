function submitForm(){
	var formData = new FormData($("#myForm")[0]);
	$.ajax({
		type:"post",
		url:"submitInquiry.action",
		data:formData,
		processData : false,
		contentType : false,
		success : function(html) {
			alert("문의를 성공적으로 등록하였습니다.");
		},
		error : function(html) {
			alert("문의 등록에 실패하였습니다.");
		}
		
	});
	
	
	
	
	
	myForm.submit();
	
}

