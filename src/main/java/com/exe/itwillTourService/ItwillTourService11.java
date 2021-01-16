package com.exe.itwillTourService;

import java.util.Map;

import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Service;
import com.exe.itwillTourDAO.ItwillTourDAO11;


@Service
public class ItwillTourService11 {
	
	@Autowired
	ItwillTourDAO11 dao;
	
	public int submitInquiry(Map<String, String> params) {
		
		String condition1, condition2;
		String answerMethod = params.get("answerMethod");
		
		if (answerMethod.equals("휴대폰")) {
			condition1 = "QNA2USERTEL"; 
			condition2 = params.get("user_tel");
		} else {
			condition1 = "QNAUSEREMAIL"; 
			condition2 = params.get("user_email");
		}
		
		//QNA2USERTEL, QNAUSEREMAIL
		params.put("condition1", condition1);
		params.put("condition2", condition2);
		
		int fileCount = Integer.parseInt(params.get("fileCount"));
		String fileColumn = "";
		String fileValue = "";
		if(fileCount == 0) {
			params.put("fileColumn", "");
			params.put("fileValue", "");
		} else {
			for(int i=0; i<fileCount; i++){
				fileColumn+=", QNA2FILE"+(i+1);
			}
			for(int i=0; i<fileCount; i++){
				fileValue+=", '"+params.get("file"+(i+1))+"'";
			}		
			params.put("fileColumn", fileColumn);
			params.put("fileValue", fileValue);
		}
		
		//test
		System.out.println("fileColumn : "+fileColumn);
		System.out.println("fileValue : "+fileValue);
		//test
		
		int result = dao.submitInquiry(params);
		System.out.println(result);
		return result;
	}		
	
	public Map<String, String> getUserInfo(String id) {
		return dao.getUserInfo(id);
	}
	
	
}
