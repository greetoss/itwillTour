package com.exe.itwillTour;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ItwillTourController_detail {
	
	@RequestMapping("/itwillTour_detail_ne2")
	public String itwillTour_detail(Model model) {

		return "itwillTour10to19/itwillTour_detail_ne2";
	}
	

}
