package com.exe.itwillTourService;

import java.util.List;

import java.util.Map;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Service;
import com.exe.itwillTourDAO.ItwillTourDAO13;

@Service
public class ItwillTourService13 {
	
	@Autowired
	ItwillTourDAO13 dao;
	
	public List<Map<String, String>> getQna2Info(String name) {
		return dao.getQna2Info(name);
	}

}
