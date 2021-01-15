function Formsubmit() {
	
	var search_keyword = $("#search_keyword").val().trim();
	
	if (search_keyword=="") {
		alert("검색어를 입력해주세요.");
		return false;
	}else{//$("#myForm").submit();
		return true;
	}

}