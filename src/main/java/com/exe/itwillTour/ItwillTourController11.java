package com.exe.itwillTour;

import java.io.File;

import java.security.Provider.Service;
import java.util.ArrayList;
import java.util.HashMap;
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
	@PostMapping("fileUpload.action")
	public String fileUploadTestAction(MultipartHttpServletRequest multi) {
		
		String uploadPath = multi.getSession().getServletContext().getRealPath("/").replace(".metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\", "")+"src\\main\\webapp\\resources\\upload\\";
		
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("user_name", multi.getParameter("user_name"));
		paramMap.put("user_tel", multi.getParameter("user_tel"));
		paramMap.put("user_email", multi.getParameter("user_email"));
		paramMap.put("category", multi.getParameter("category"));
		paramMap.put("subject", multi.getParameter("subject"));
		paramMap.put("content", multi.getParameter("content"));
		paramMap.put("answerMethod", multi.getParameter("answerMethod"));
		
		long time = System.currentTimeMillis();
		
		List<MultipartFile> fileList = new ArrayList<MultipartFile>();
		if(!multi.getFile("file1").getOriginalFilename().equals("")) {
			fileList.add(multi.getFile("file1"));
			}
		if(!multi.getFile("file2").getOriginalFilename().equals("")) {
			fileList.add(multi.getFile("file2"));
		}
		if(!multi.getFile("file3").getOriginalFilename().equals("")) {
			fileList.add(multi.getFile("file3"));		
		}
		
		System.out.println("파일 개수 : "+fileList.size());
		
		System.out.println("upload된 파일 개수 : "+fileList.size());
		paramMap.put("fileCount", fileList.size()+"");
		
		File fileDir = new File(uploadPath);
		if(!fileDir.exists()) fileDir.mkdirs();
		
		if(fileList.size()!=0) {
		
			String temp_str = "";
			long temp = 0;
			int cnt = 0;
			String originFileName, saveFileName;
		
			for (MultipartFile mf : fileList) {
				
				originFileName = mf.getOriginalFilename();
				time = System.currentTimeMillis();
				
				if (temp == time && originFileName.equals(temp_str)) {
					time+= 1;
				}
				
				temp=time;
				temp_str = originFileName;
				
				saveFileName = String.format("%d_%s",time,originFileName);
				
				if(saveFileName.getBytes().length>200) {
					int lastDotIndex = saveFileName.lastIndexOf(".");
					String frontName = saveFileName.substring(0, lastDotIndex);
					String extent = saveFileName.substring(lastDotIndex, saveFileName.length());
					System.out.println("extent : "+extent);
					int frontNameBytes = frontName.getBytes().length;
					int extentBytes = extent.getBytes().length;
					int frontBytesLimit = 200-extentBytes;
					
					String strBuffer = ""; 
					String str = "";
					int strBytes = 0;
					int bufferBytes = 0;
					for(int i=0; i<frontBytesLimit; i++) {
						str = String.valueOf(frontName.charAt(i));
						strBytes = str.getBytes().length;
						bufferBytes += strBytes;
						if(bufferBytes>frontBytesLimit) break;
						strBuffer += str;
					}
					saveFileName = strBuffer+extent;
					System.out.println("이름이 200자가 넘어서 이름을 자른 파일(file"+(cnt+1)+") : "+saveFileName);
					System.out.println("편집된 파일명 bytes(file"+(cnt+1)+") : "+saveFileName.getBytes().length);
				}
				
				paramMap.put("file"+(++cnt), saveFileName);
				try {
					mf.transferTo(new File(uploadPath, saveFileName));
				} catch (Exception e) {
					e.printStackTrace();
				}

				System.out.println("upload된 파일명"+cnt+" : "+saveFileName);
				
			}
		}
		
		serv.submitInquiry(paramMap);
		
		return "itwillTour10to19/itwillTour11";
	}
	
/*	
	@ResponseBody
	@PostMapping("submitInquiry.action")
	public String submitInquiry(MultipartHttpServletRequest multi) {
		
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
*/
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
