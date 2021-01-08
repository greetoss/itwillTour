package com.exe.itwillTourDAO;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import com.zaxxer.hikari.HikariConfig;

@Repository
public interface ItwillTourDAO12 {
	
	List<Map<String, String>> getNoticeInfo(String notice);
	List<Map<String, String>> getNoticeINFO(String send);	
}
