package com.exe.itwillTour;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ItwillTourController12 {
	
	@RequestMapping ("/itwillTour12")
	public String itwillTour12 () {
		return "/itwillTour10to19/itwillTour12";
		
	}
}
