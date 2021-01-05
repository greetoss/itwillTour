var file1_buffer = "";

function submitForm(){
	var formData = new FormData($("#myForm")[0]);
	$.ajax({
		type:"POST",
		url:"fileUpload.action",
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
	$("#file1").change(function(){
		thumbChange(1);
	});
	$("#file2").change(function(){
		thumbChange(2);
	});	
	$("#file3").change(function(){
		thumbChange(3);
	});	
	$("#file_delete1").click(function(){
		cancelFile(1);
	});
	$("#file_delete2").click(function(){
		cancelFile(2);
	});
	$("#file_delete3").click(function(){
		cancelFile(3);
	});
});

function thumbChange(num){
	const target = $("#file"+num);
	const file = target[0].files[0];
	const fileName = file.name;
	const fileEx = fileName.slice(fileName.indexOf(".") + 1).toLowerCase();
    if(fileEx != "jpg" && fileEx != "png" &&  fileEx != "gif" &&  fileEx != "bmp"){
         alert("파일은 (jpg, png, gif, bmp) 형식만 등록 가능합니다.");
         target.val("");
         return false;
    }			
	$("#file_click"+num).css("background-image", "url('"+URL.createObjectURL(file)+"')");
	$("#file_click"+num).css("background-repeat", "no-repeat");
	$("#file_click"+num).css("background-size", "cover");
}

function cancelFile(num){
	$("#file"+num).val("");
	$("#file_click"+num).css("background-image", "none");	
}


/*
		 
function thumbChange(num){
	const target = document.getElementsByName("file"+num);
	alert("!!");
	 $.each(target[0].files, function(index, file){
		 const fileName = file.name;
		 

		 var img_html='<img src="'+URL.createObjectURL(file)+'">';
		 
		 const fileEx = fileName.slice(fileName.indexOf(".") + 1).toLowerCase();
         if(fileEx != "jpg" && fileEx != "png" &&  fileEx != "gif" &&  fileEx != "bmp"){
             alert("파일은 (jpg, png, gif, bmp) 형식만 등록 가능합니다.");
             target[0].select();
             document.selection.clear();
             return false;
         }		 
         
         $("#file_click"+num).attr("background", "url('"+URL.createObjectURL(file)+"') no-repeat contain center center");
		 
	 }
}*/
/*

 * 	        const target = document.getElementsByName('new_content');
	        var html = '';
	        
	        $.each(target[0].files, function(index, file){
	            const fileName = file.name;
	            
	            var img_html='<img src="'+URL.createObjectURL(file)+'">';
	            
	            const fileEx = fileName.slice(fileName.indexOf(".") + 1).toLowerCase();
	            if(fileEx != "jpg" && fileEx != "png" &&  fileEx != "gif" &&  fileEx != "bmp" && fileEx != "wmv" && fileEx != "mp4" && fileEx != "avi"){
	                alert("파일은 (jpg, png, gif, bmp, wmv, mp4, avi) 형식만 등록 가능합니다.");
	                resetFile();
	                return false;
	            }
	            
	            $('#layerWrap').html(html);
	            $('#img_title').html(title);
	            $('#img_date').html(final_date);	 
	            $('#img_img').html(img_html);	     
	            $('#img_content').html(content);	
 * 
 * 
 */