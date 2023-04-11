package com.DCCC.controller;

import java.io.File;

import org.junit.Test;

import com.DCCC.context.ApplicationContextLoader;

public class TestHandlerMapper {
	{
		   String beanConfigXml = "C:\\Users\\fhakd\\Documents\\jsp\\DCCC\\build\\classes\\com\\DCCC\\context";//workspaces안에application context가있는 경로 
		      beanConfigXml+=File.separator+"application-context.xml";
		      try {
				ApplicationContextLoader.build(beanConfigXml);
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	@Test
	public void testHandlerMapper() throws Exception {
		new HandlerMapper();
	}
}
