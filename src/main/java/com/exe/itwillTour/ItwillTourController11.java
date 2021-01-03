package com.exe.itwillTour;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exe.itwillTourDTO.ItwillTourDTO11;
import com.exe.itwillTourService.ItwillTourService11;

@Controller
public class ItwillTourController11 {

	@Autowired
	ItwillTourService11 serv;

	@RequestMapping("/itwillTour11")
	public String itwillTour11(HttpSession session, Model model) {
		
		//test
		session.setAttribute("userID", "apple");
		//test

		String id = (String) session.getAttribute("userID");
		model.addAttribute("userInfo", serv.getUserInfo(id));

		return "itwillTour10to19/itwillTour11";
	}

	@ResponseBody
	@PostMapping("submitInquiry.action")
	public String submitInquiry(/*@RequestParam Map<String, String> params*/MultipartHttpServletRequest multi) {
		
		
		multi.getParameter("category");
		multi.getParameter("user_name");
		multi.getParameter("user_tel");
		multi.getParameter("user_email");
		multi.getParameter("subject");
		multi.getParameter("content");
		
		List<MultipartFile> fileList = new ArrayList<MultipartFile>();
		fileList.add(multi.getFile("file1"));
		fileList.add(multi.getFile("file2"));
		fileList.add(multi.getFile("file3"));
		
		//int result = serv.submitInquiry(params);
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

}
