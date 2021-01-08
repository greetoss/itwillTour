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
	
	public List<Map<String, String>> getNoticeINFO(String send) {
		return dao.getNoticeINFO(send);
	}
	
}
