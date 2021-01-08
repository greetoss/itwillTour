package com.exe.itwillTour;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.exe.itwillTourService.ItwillTourService12;

@Controller
public class ItwillTourController12 {

	@Autowired
	ItwillTourService12 serv;

	@RequestMapping ("/itwillTour12")
	public String itwillTour12 (Model model) {
		
		String notice = "notice";
		
		model.addAttribute("noticeInfo", serv.getNoticeInfo(notice));

		return "/itwillTour10to19/itwillTour12";

	}
	
	@ResponseBody
	@PostMapping("noticeINFO.action")
	public String noticeINFOTestAction(HttpServletRequest multi) {

		Map<String, String> send = new HashMap<String, String>();
		send.put("notice_subject", multi.getParameter("notice_subject"));



		
		//serv.getNoticeINFO(send);
		
		return "itwillTour10to19/itwillTour12_ok";
	}
	
	
	
	

}
