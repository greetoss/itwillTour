var file1_buffer = "";

function submitForm(){
	var formData = new FormData($("#myForm")[0]);
	$.ajax({
		type:"POST",
		url:"/itwillTour12_ok",
		data:formData,
		processData : false,
		contentType : false,
		success : function() {
			
				location.href="itwillTour12_ok";

		},
		error : function() {
			alert("에러");
		}
		
	});
}