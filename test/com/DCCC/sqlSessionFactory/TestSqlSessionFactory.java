package com.DCCC.sqlSessionFactory;

import java.io.File;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import com.DCCC.context.ApplicationContext;
import com.DCCC.context.ApplicationContextLoader;
import com.DCCC.dto.AdminVO;

public class TestSqlSessionFactory {
	private Map<String,Object> container;
	private SqlSessionFactory sqlSessionFactory;
	{
		   String beanConfigXml = "C:\\workspaces\\jsp\\DCCC\\build\\classes\\com\\DCCC\\context";//workspaces안에application context가있는 경로 
		      beanConfigXml+=File.separator+"application-context.xml";
		      try {
				ApplicationContextLoader.build(beanConfigXml);
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	@Before
	public void initContainer() throws Exception {
		container = ApplicationContext.getApplicationContext();
		sqlSessionFactory = (SqlSessionFactory)container.get("sqlSessionFactory");
	}
	
	@Test
	public void testSqlSessionFactory() throws Exception {
		SqlSession session = sqlSessionFactory.openSession();
		AdminVO admin = session.selectOne("Admin-Mapper.selectAdminById", "etest01");
		
		Assert.assertEquals("etest01", admin.getAdm_id());
	}
}
