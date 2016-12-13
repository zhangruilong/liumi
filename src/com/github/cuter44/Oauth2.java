package com.github.cuter44;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.server.WxToken;
import com.system.tools.CommonConst;
import com.system.tools.util.CommonUtil;
import com.system.tools.util.HttpRequest;

public class Oauth2 extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		先设置微信菜单路径
//		https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx72be01715edde1fb&redirect_uri=http%3A%2F%2Fszslsl.com%2Fliumi%2FOauth2&response_type=code&scope=snsapi_base&state=1#wechat_redirect
		
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		// 获取方法名
		String code = request.getParameter("code");
		System.out.println("code: " + code);

		// 发送 GET 请求
		String s = HttpRequest.sendGet(
				"https://api.weixin.qq.com/sns/oauth2/access_token",
				"appid=wx72be01715edde1fb&secret=1b42b786ddb190fdd1eabb4e2b7b038b&code="
						+ code + "&grant_type=authorization_code");
		System.out.println(s);

		if (CommonUtil.isNotEmpty(s)) {
			java.lang.reflect.Type TYPE = new com.google.gson.reflect.TypeToken<WxToken>() {
			}.getType();
			WxToken mWxToken = CommonConst.GSON.fromJson(s, TYPE);
			System.out.println("openid: " + mWxToken.getOpenid());
			try {
				response.sendRedirect("oauth2.jsp?openid="+mWxToken.getOpenid());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			RequestDispatcher dispatcher = request
//					.getRequestDispatcher("oauth2.jsp");
//			request.setAttribute("openid", mWxToken.getOpenid());
//			try {
//				dispatcher.forward(request, response);
//			} catch (ServletException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}