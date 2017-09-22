package com.briup.web.intecepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class IsLoginIntecepter extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		if(request.getSession().getAttribute("my_user")==null){
			response.sendRedirect("login");
		}
		return true;
	}
}
