package cn.ztq.MyWeb.controller;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControllerUtility {
	//cookie内容必须编码和解码
	public static String addLoginCookie(HttpServletRequest request, HttpServletResponse response,String username) throws UnsupportedEncodingException {
		Cookie cookie=new Cookie("login", java.net.URLEncoder.encode(username, "UTF-8"));
		//保存一小时
		cookie.setMaxAge(60*60);
		response.addCookie(cookie);
		request.setAttribute("first_login", true);
		return "Content/content";
	}
	
	public static String readLoginCookie(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		if(request.getCookies()!=null){
			for(Cookie cookie:request.getCookies()){
				if(cookie.getName().equals("login")){
					return java.net.URLDecoder.decode(cookie.getValue(),"UTF-8");
				}
			}
		}
		return null;
	}
}
