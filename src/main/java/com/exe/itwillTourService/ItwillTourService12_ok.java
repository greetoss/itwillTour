package com.exe.itwillTourService;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Service;
import com.exe.itwillTourDAO.ItwillTourDAO12_ok;

@Service
public class ItwillTourService12_ok {
	
	@Autowired
	ItwillTourDAO12_ok dao;
	
	public Map<String, String> getNoticeCon(String subject) {
		return dao.getNoticeCon(subject);
	}
	
}
