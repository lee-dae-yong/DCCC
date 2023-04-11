package com.DCCC.context;


import java.io.File;

import org.junit.Before;
import org.junit.Test;

import com.DCCC.context.ApplicationContextLoader;

public class TestApplicationContext {
	 @Before
	   public void init() {}
	   
	   @Test
	   public void testApplicationBuild()throws Exception {
	      String beanConfigXml = "C:\\Users\\fhakd\\Documents\\jsp\\DCCC\\build\\classes\\com\\DCCC\\context";//workspaces안에 application context가있는 경로 
	      beanConfigXml+=File.separator+"application-context.xml";
	      ApplicationContextLoader.build(beanConfigXml);
	   }
}
