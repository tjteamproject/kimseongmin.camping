package kimseongmin.camping.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler, ModelAndView mv) throws Exception {
		HttpSession session = request.getSession();
		ModelMap modelMap = mv.getModelMap();
		Object user = modelMap.get("user");
		Object admin = modelMap.get("admin");
		
		if(user != null) {
			session.setAttribute("login", user);
			//session.setAttribute("user", user);
			makeCookie(request, response);
		}
		
		if(admin != null) {
			session.setAttribute("login", admin);
			session.setAttribute("admin", admin);
			makeCookie(request, response);
		}
	}
	
	public void makeCookie(HttpServletRequest request, HttpServletResponse response) {
		String idCheck = request.getParameter("userIdStorageCheck");
		
		if(idCheck != null) {
			Cookie loginCookie = new Cookie("loginCookie", request.getParameter("userId"));
			loginCookie.setPath(request.getContextPath() + "/");
			loginCookie.setMaxAge(86400 * 30);
			
			response.addCookie(loginCookie);
		}
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}
		
		return true;
	}
}
