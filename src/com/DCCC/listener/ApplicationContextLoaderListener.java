package com.DCCC.listener;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.DCCC.context.ApplicationContextLoader;


public class ApplicationContextLoaderListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent ctxEvent) {
		ServletContext ctx = ctxEvent.getServletContext();
		String beanConfigXml = ctx.getInitParameter("contextConfigLocation");

//		System.out.println("변경전 : " + beanConfigXml);
		
		beanConfigXml = ctx.getRealPath("/WEB-INF/classes/")
				+ beanConfigXml.replace("classpath:", "")
				.replace("/",File.separator);
//		System.out.println("변경후 : "+beanConfigXml);
		
		try {
			ApplicationContextLoader.build(beanConfigXml);
		} catch (Exception e) {
			e.printStackTrace();
			//에러처리
		}

	}		
}

	

