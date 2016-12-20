package com.server.action.more;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.server.poco.OrdermPoco;
import com.server.pojo.Orderm;
import com.system.tools.CommonConst;
import com.system.tools.util.CommonUtil;
import com.system.tools.util.DateUtils;
import com.system.tools.util.HttpRequest;

/**
 * 充值记录 逻辑层
 *@author ZhangRuiLong
 */
public class OrdermAction extends com.server.action.OrdermAction {
	//新增
	public void minsAll(HttpServletRequest request, HttpServletResponse response){
		// 判断是否微信支付成功？
		
		String json = request.getParameter("json");
		System.out.println("json : " + json);
		json = json.replace("\"\"", "null");
		if(CommonUtil.isNotEmpty(json)) cuss = CommonConst.GSON.fromJson(json, TYPE);
		for(Orderm temp:cuss){
			if(CommonUtil.isNull(temp.getOrdermid())){
				temp.setOrdermid(CommonUtil.getNewId());
			}
			temp.setOrdermdate(DateUtils.getDateTime());
			temp.setOrdermstatue("待充值");
			result = insSingle(temp);
			if(CommonConst.SUCCESS.equals(result)){
				//充流量
				// 发送 GET 请求
				String s = HttpRequest.sendGet(
						"http://114.55.54.41:8089/dtstp/suopai/openapi/charge.action",
						"userNo=148185391192801&userKey=4ad41695-b7e4-4135-81bc-4d68bba05b68&mobile="
								+ temp.getOrdermphone() + "&productNo="+temp.getOrdermcode()
								+ "&orderId=" + temp.getOrdermid());
				System.out.println(s);
				// 充流量失败要退钱？
				
			}
		}
		responsePW(response, result);
	}
	//接受索派流量异步通知
	public void suopairesp(HttpServletRequest request, HttpServletResponse response){
		String orderId = request.getParameter("orderId");
		String status = request.getParameter("status");
		System.out.println(status+" : " + orderId);
		if("1".equals(status)){
			Orderm temp = new Orderm();
			temp.setOrdermid(orderId);
			temp.setOrdermstatue("已充值");
			result = updSingle(temp,OrdermPoco.KEYCOLUMN);
		}else{
			// 充流量失败要退钱？
			System.out.println(orderId+"失败 : " + request.getParameter("remark")+request.getParameter("statusTime"));
		}
		responsePW(response, result);
	}
}
