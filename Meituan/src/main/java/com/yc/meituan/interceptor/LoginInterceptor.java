package com.yc.meituan.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.yc.meituan.entity.Admin;

//登录认证的拦截器 
public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {

		System.out.println("到达拦截器。。。");
		String url = request.getRequestURI();
		System.out.println(" == > " + url);
		// 判断url是否是公开地址(实际使用时将公开地址配置到配置文件中)
		// if (url.indexOf("login") >= 0) {
		// return true;
		// }

		// 从session中取出用户份信息
		Admin admin = (Admin) request.getSession().getAttribute("admin");
		System.out.println(admin);
		if (admin != null) {
			// 身份存在，放行
			return true;
		}

		if (url.endsWith("/backMeituan/")
				|| url.endsWith("backMeituan/index.jsp")
				|| url.endsWith("home.html")) {
			// 执行这里表示用户身份需要验证，跳转到登录界面
			request.getRequestDispatcher("/backMeituan/login.jsp").forward(
					request, response);
			return false;
		}

		return true;
	}

	// 进入Handler方法之后，返回modelAndView之前执行
	// 应用场景从modelAndView出发：将公用的模型数据(比如菜单导航)在这里
	// 传到视图，也可以在这里统一指定视图
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("这里可以同步传值...");
	}

	// 执行Handler完成执行此方法
	// 应用场景：统一异常处理，统一日志处理
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("视图成功到达...");
	}
}
