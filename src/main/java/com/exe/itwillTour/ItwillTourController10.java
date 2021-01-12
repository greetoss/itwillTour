package com.exe.itwillTour;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exe.itwillTourService.ItwillTourService10;


@Controller
public class ItwillTourController10 {
	
	@Autowired
	ItwillTourService10 serv;
	
	@RequestMapping("/itwillTour10")
	public String itwillTour10(Model model) {
		
		String qna1 = "qna1";
		
		model.addAttribute("qna1Info", serv.getQna1Info(qna1));
		
		return "itwillTour10to19/itwillTour10";
	}

}
