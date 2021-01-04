package com.exe.itwillTour;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class itwillTourTestController {
	
	@RequestMapping("fileUploadTest")
	public String fileUploadTest() {
		return "itwillTour10to19/fileUploadTest";
	}
	
	@ResponseBody
	@PostMapping("fileUploadTest.action")
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
		
		File fileDir = new File(uploadPath);
		if(!fileDir.exists()) fileDir.mkdirs();
		
		if(fileList.size()!=0) {
			time = System.currentTimeMillis();
			
			int cnt = 0;
			String originFileName, saveFileName;
			for (MultipartFile mf : fileList) {
				originFileName = mf.getOriginalFilename();
				saveFileName = String.format("%d_%s",time,originFileName);
				paramMap.put("file"+(++cnt), saveFileName);
				try {
					mf.transferTo(new File(uploadPath, saveFileName));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}		
		}
		
		return "itwillTour10to19/fileUploadTest";
	}
	
}
