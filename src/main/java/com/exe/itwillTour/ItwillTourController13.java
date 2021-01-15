package com.exe.itwillTour;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.exe.itwillTourService.ItwillTourService13;

@Controller
public class ItwillTourController13 {
	
	@Autowired
	ItwillTourService13 serv;
	
	@RequestMapping ("/itwillTour13")
	public String itwillTour13 (HttpSession session, Model model) {
		
		//test
		session.setAttribute("userName", "유재석");
		//test
		
		String name = (String) session.getAttribute("userName");
		model.addAttribute("qna2Info", serv.getQna2Info(name));
		
		return "/itwillTour10to19/itwillTour13";
		
	}
}
