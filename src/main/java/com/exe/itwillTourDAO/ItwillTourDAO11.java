package com.exe.itwillTourDAO;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import com.zaxxer.hikari.HikariConfig;

@Repository
public interface ItwillTourDAO11 {
	
	int submitInquiry(Map<String, String> params);
	
	Map<String, String> getUserInfo(String id);	
}
