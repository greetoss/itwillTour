var current_page = 1;

function noticeList(now_page){
	var html = "";
	var start_index = 0;
	var end_index = 0;
	
	$("#article3_table tbody").html("");

	if(now_page===1) {
		start_index = 0;
		end_index = dataListSize > 10? end_index= 9 : dataListSize-1;
	} else {
		start_index = (now_page-1)*10;
		end_index = dataListSize-((now_page-1)*10);
	}
	
	for(var i=start_index; i<=end_index; i++){
		html += "<tr>";
		
		html += "<td>";
		html += dataList[i].no;
		html += "</td>";
		
		html += "<td>";
		html += dataList[i].category;
		html += "</td>";
		
		html += "<td>";
		html += dataList[i].subject;
		html += "</td>";
		
		html += "<td>";
		html += dataList[i].created;
		html += "</td>";
		
		html += "</tr>";		
	}	
	$("#article3_table tbody").html(html);
	$("#article3_table td").css("width", "100px");
	$("#article3_table td:nth-child(3)").css("width", "710px");
	$("#article3_table td:nth-child(4)").css("border-right", "none");
	$("#article3_table td").css("text-align", "center");
	
	current_page = now_page;
	
}

$(document).ready(function(){
	
	if(dataListSize>10){
		var result = parseInt(dataListSize / 10); //몫
		var remainder = dataListSize % 10;	//나머지
		var last_page =  remainder === 0 ? result : result+1 ;
		for(var i=2; i<=last_page; i++){
			$("#page_one").next("<span class='page_num'><a>"+i+"</a></span>");
		}
	}
	
	
	$(".page_num").click(function(e){
		noticeList(Number(e.target.children("a").text()));
	})
});