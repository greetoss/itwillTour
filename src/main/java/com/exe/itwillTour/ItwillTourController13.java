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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.exe.itwillTourService.ItwillTourService13;
import com.sun.mail.handlers.multipart_mixed;

@Controller
public class ItwillTourController13 {
	
	@Autowired
	ItwillTourService13 serv;
	
	String returnPath = "";
	
	@RequestMapping ("/itwillTour13")
	public String itwillTour13 (HttpSession session, Model model,HttpServletRequest request) {
		
		
		//test
		session.setAttribute("sessionUserId", "apple");
		//test
		
		System.out.println("접속");
		String id = (String) session.getAttribute("sessionUserId");
		model.addAttribute("qna2Info", serv.getQna2Info(id));
		
		String delete = request.getParameter("delete");
		System.out.println("딜리트값: "+ delete + " 입니다");
		
		if(request.getParameter("delete")!=null&&delete.equals("delete")) {
			String qna2no = request.getParameter("qna2no");
			serv.deleteQna2(qna2no);
			returnPath = "redirect:itwillTour13";
		} else {
			returnPath = "itwillTour10to19/itwillTour13";
		}
		
		return returnPath;
		
	}
	



}
