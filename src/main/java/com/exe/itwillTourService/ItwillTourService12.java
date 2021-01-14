package com.exe.itwillTourService;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Service;
import com.exe.itwillTourDAO.ItwillTourDAO12;

@Service
public class ItwillTourService12 {
	
	@Autowired
	ItwillTourDAO12 dao;
	
	public List<Map<String, String>> getNoticeInfo(String notice) {
		return dao.getNoticeInfo(notice);
	}

	//-------------------------------------------------------------------
	
	public List<Map<String, String>> getSearchSubInfo(String search_keyword) {
		System.out.println("서비스: " + "제목일 때 - " + search_keyword);
		return dao.getSearchSubInfo(search_keyword);
	}
	
	public List<Map<String, String>> getSearchConInfo(String search_keyword) {
		System.out.println("서비스: " + "내용일 때 - " + search_keyword);
		return dao.getSearchConInfo(search_keyword);
	}
	
	public List<Map<String, String>> getSearchSub_ConInfo(String search_keyword) {
		System.out.println("서비스: " + "제목+내용일 때 - " + search_keyword);
		return dao.getSearchSub_ConInfo(search_keyword);
	}
	
	
}
