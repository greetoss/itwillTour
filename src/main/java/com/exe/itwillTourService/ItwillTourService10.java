package com.exe.itwillTourService;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exe.itwillTourDAO.ItwillTourDAO10;

@Service
public class ItwillTourService10 {
	
	@Autowired
	ItwillTourDAO10 dao;
	
	public List<Map<String, String>> getQna1Info(String qna1) {
		return dao.getQna1Info(qna1);
	}

}
