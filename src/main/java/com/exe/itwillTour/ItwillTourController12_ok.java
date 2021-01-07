package com.exe.itwillTour;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import com.exe.itwillTourService.ItwillTourService12_ok;

@Controller
public class ItwillTourController12_ok {

	@Autowired
	ItwillTourService12_ok serv;

	@RequestMapping ("/itwillTour12_ok")
	public String itwillTour12_ok (Model model) {
		
		//test
		String subject = "테스트3";
		//test
		
		model.addAttribute("noticeCon", serv.getNoticeCon(subject));

		return "/itwillTour10to19/itwillTour12_ok";

	}

}
