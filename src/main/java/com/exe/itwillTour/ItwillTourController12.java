package com.exe.itwillTour;

import java.io.File;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.exe.itwillTourDTO.ItwillTourDTO12;

import com.exe.itwillTourService.ItwillTourService12;



@Controller
public class ItwillTourController12 {

	@Autowired
	ItwillTourService12 serv;
	ItwillTourDTO12 itwillTourDTO12;
	String notice = "notice";
	String s_s, s_k ="";
	

	@RequestMapping("/itwillTour12")
	public String itwillTour12 (Model model,
			HttpServletRequest request,
			@RequestParam(value="search_select",required = false) String search_select,
			@RequestParam(value="serch_keyword",required = false) String search_keyword
			) {
		
		System.out.println("1-분류는 '" + search_select + "' 입니다.");
		System.out.println("1-키워드는 '" + search_keyword + "' 입니다.");
		
		
		if(search_select==null||search_keyword==null) {
			
			if(search_select==null) {
				search_select="";
				
			}
			if(search_keyword==null) {
				search_keyword="";
			}
		
		if(search_select.equals("")||(search_keyword.equals(""))) {
			
			model.addAttribute("noticeInfo", serv.getNoticeInfo(notice));
		}
	}
		
		////////////////여기까지 완료
		if(search_keyword!=null) {

			if (search_select.equals("sub")) {//제목
				
				model.addAttribute("searchInfo", serv.getSearchSubInfo(search_keyword));
			}
			
			if (search_select.equals("con")) {//내용
				model.addAttribute("searchInfo", serv.getSearchConInfo(search_keyword));
			}
			if (search_select.equals("sub_con")) {//제목+내용
				model.addAttribute("searchInfo", serv.getSearchSub_ConInfo(search_keyword));
			}
			
		}
		
		
		
		
		
		
		return "/itwillTour10to19/itwillTour12";
	}
	
	@RequestMapping("/itwillTour12.action")
	public String itwillTour12 (Model model,
			@RequestParam(value="search_select",required = false) String search_select,
			@RequestParam(value="serch_keyword",required = false) String search_keyword
			) {
		
		
		return "/itwillTour10to19/itwillTour12";

	}

	@ResponseBody
	@PostMapping("noticeINFO.action")
	public String noticeINFOTestAction(HttpServletRequest multi) {

		Map<String, String> send = new HashMap<String, String>();
		send.put("notice_subject", multi.getParameter("notice_subject"));
		System.out.println(send.put("notice_subject", multi.getParameter("notice_subject")));

		return "itwillTour10to19/itwillTour12_ok";
	}

}
