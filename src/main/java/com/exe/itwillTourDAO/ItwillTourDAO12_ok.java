package com.exe.itwillTourDAO;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import com.zaxxer.hikari.HikariConfig;

@Repository
public interface ItwillTourDAO12_ok {
	
	Map<String, String> getNoticeCon(int detail);	
}
