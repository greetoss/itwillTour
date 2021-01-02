package com.exe.itwillTour;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exe.itwillTourDTO.ItwillTourDTO11;
import com.exe.itwillTourService.ItwillTourService11;

@Controller
public class ItwillTourController11 {
	
	@RequestMapping("/itwillTour11")
	public String itwillTour11() {
		
		return "itwillTour10to19/itwillTour11";
	}
	
	/* @RequestParam으로 데이터 받는 방법
	 	@PostMapping("submitInquiry.action")
		public String submitInquiry(
				@RequestParam("category") String category,
				@RequestParam("userName") String userName) {
			
				System.out.println("category: " + category + ", suerName: " + userName );
			
			
			return "itwillTour10to19/itwillTour13";
		}
	*/	
	
	/* DTO로 데이터 받는 방법
	@PostMapping("submitInquiry.action")
	public String submitInquiry(ItwillTourDTO11 itwillTourDTO11) {
		
		System.out.println(itwillTourDTO11.getCategory());
		System.out.println(itwillTourDTO11.getUserName());
		System.out.println(itwillTourDTO11.getAnswerMethod());
		System.out.println(itwillTourDTO11.getSubject());
		System.out.println(itwillTourDTO11.getContent());
		
		
		return "itwillTour10to19/itwillTour13";
	}
	*/
	@Autowired
	ItwillTourService11 serv;
	
	@PostMapping("submitInquiry.action")
	public String submitInquiry(@RequestParam Map<String, String> params) {
		serv.submitInquiry(params);
		return "redirect:itwillTour13";
	}	

}
