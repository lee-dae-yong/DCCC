package com.DCCC.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.action.Action;
import com.DCCC.controller.HandlerMapper;

public class DispatcherServlet extends HttpServlet {

	private HandlerMapper handlerMapper;

	@Override
	public void init(ServletConfig config) throws ServletException {
		String initUrl = config.getInitParameter("initUrl");
		initUrl = initUrl.replace(".properties", "");
		try {
			handlerMapper = new HandlerMapper(initUrl);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		requestPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		requestPro(request, response);
	}

	private void requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 사용자 URI 검출
		String command = request.getRequestURI(); // contextPath 포함.
		if (command.indexOf(request.getContextPath()) == 0) { // contextPath 삭제
			command = command.substring(request.getContextPath().length());
		}
		System.out.println("command : " + command);
		Action action = null;
		String view = null;

		if (handlerMapper != null) {
			action = handlerMapper.getAction(command);
			if (action != null) {
				System.out.println(action);
				try {
					view = action.execute(request, response);
					if (view == null) {
						return;
					}
					System.out.println("view : " + view);
					if(view.contains("redirect:")) {
						view = request.getContextPath()+view.replace("redirect:","");
						response.sendRedirect(view);
					}else {
						request.getRequestDispatcher(view).forward(request, response);
						System.out.println("실행땜");
					}				
					
				} catch (Exception e) {
					System.out.println("요기1");
					e.printStackTrace();
					response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
				}
			} else {
				System.out.println("요기2");
				response.sendError(HttpServletResponse.SC_NOT_FOUND);
			}
		} else {
			System.out.println("요기3");
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		}
	}

}
