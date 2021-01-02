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
	
	@Resource(name = "ItwillTourDAO11")
	ItwillTourDAO11 dao;
	
	public String submitInquiry(Map<String, String> params) {
		dao.submitInquiry(params);
		return"";
	}		
	
	
}
