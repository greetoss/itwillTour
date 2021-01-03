package com.exe.itwillTour;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ItwillTourController13 {
	
	@RequestMapping ("/itwillTour13")
	public String itwillTour13 (HttpSession session) {
		
		//test
		session.removeAttribute("userID");
		//test
		
		return "/itwillTour10to19/itwillTour13";
		
	}
}
