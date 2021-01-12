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
		session.setAttribute("userID", "apple");
		//test
		
		String id = (String) session.getAttribute("userID");
		model.addAttribute("userInfo", serv.getUserInfo(id));
		
		return "/itwillTour10to19/itwillTour13";
		
	}
}
