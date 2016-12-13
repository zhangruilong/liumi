<%@ page language="java"  pageEncoding="UTF-8" 
  import="
    java.util.Date,
    java.net.URLEncoder,
    com.github.cuter44.wxpay.*,
    com.github.cuter44.wxpay.reqs.*,
    com.github.cuter44.wxpay.resps.*,
    com.github.cuter44.wxpay.constants.*
  "
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
  <title>流秘</title>
  <link rel="stylesheet" href="../style/weui.css"/>
  <link rel="stylesheet" href="./example.css"/>
  <script src="./zepto.min.js"></script>
<script src="./weui.min.js"></script>
</head>

<body ontouchstart>
  <div class="container" id="container">
  <div class="page home js_show">
    <div class="page__hd">
        <h1 class="page__title">Preview</h1>
        <h4 class="page__desc">表单预览</h4>
    </div>
    <div class="page__bd">
        <div class="weui-form-preview">
            <div class="weui-form-preview__hd">
                <div class="weui-form-preview__item">
                    <label class="weui-form-preview__label">付款金额</label>
                    <em id="ordermmoney" class="weui-form-preview__value">¥2400.00</em>
                </div>
            </div>
            <div class="weui-form-preview__bd">
                <div class="weui-form-preview__item">
                    <label class="weui-form-preview__label">商品</label>
                    <span id="ordermgoods" class="weui-form-preview__value">电动打蛋机</span>
                </div>
                <div class="weui-form-preview__item">
                    <label class="weui-form-preview__label">手机号码</label>
                    <span id="ordermphone" class="weui-form-preview__value">名字名字名字</span>
                </div>
                <div class="weui-form-preview__item">
                    <label class="weui-form-preview__label">支付说明</label>
                    <span id="ordermplace" class="weui-form-preview__value">江苏省内流量同一个号码同一个流量包本月只能充值一次，每月最后两天充值次月生效，充值结果状态20分钟后方可查询。</span>
                </div>
            </div>
            <div class="weui-form-preview__ft">
                <a onclick="javascript:buybuybuy(event);" class="weui-form-preview__btn weui-form-preview__btn_primary" href="javascript:">去支付</a>
            </div>
        </div>
    </div>
</div>
</div>  
  
  
    <h1>微信支付样例</h1>
    ↓ 付款之后会显示喵喵喵 o("≧ω≦)o
    <p />
    <form id="form" enctype="application/x-www-form-urlencoded">
    <table>
      <tr><td>商品名称</td><td><input name="body" value="喵喵喵"/></td></tr>
      <tr><td>价格</td><td><input name="total_fee" value="0.01"/></td></tr>
      <tr><td>openid</td><td><input id="openid" name="openid" size="32" /><button type="button" onclick="javascript:getOpenid(event)">acquire</button></td></tr>
      <tr><td></td><td><button type="submit" name="action" value="sign">创建订单</button><button id="do-pay-button" type="button" onclick="javascript:buybuybuy(event);" disabled>支付</button></td></tr>
    </table>
    </form>

    <%
      String action = request.getParameter("action");
      if ("sign".equals(action))
      {
        request.setCharacterEncoding("utf-8");
        WxpayFactory factory = WxpayFactory.getDefaultInstance();

        UnifiedOrder order = ((UnifiedOrder)factory.instantiate(UnifiedOrder.class))
          .setBody          (request.getParameter("body")                         )
          .setTotalFee      (Double.valueOf(request.getParameter("total_fee"))    )
          .setOpenid        (request.getParameter("openid")                       )
          .setOutTradeNo    ("wxpay-demopay-"+Long.toString(new Date().getTime()) )
          .setSpbillCreateIp(request.getRemoteAddr()                              )
          .setTradeType     (TradeType.JSAPI                                      )
          .build()
          .sign();

        UnifiedOrderResponse orderResp = order.execute();

        GetBrandWCPayRequest gbwxpr = ((GetBrandWCPayRequest)factory.instantiate(
            GetBrandWCPayRequest.class,
            orderResp.getProperties()
          ))
          .build()
          .sign();

        String jsonGbwxpr = gbwxpr.toJSON();

        response.sendRedirect(
          "demo-pay.jsp"
          +"?"+
          "openid="+request.getParameter("openid")
          +"&"+
          "gbwxpr="+URLEncoder.encode(jsonGbwxpr, "utf-8")
        );

        return;
      }
    %>
    
    <script>
      function getParamValue(name)
      {
        try {
          return(
            location.search.match(new RegExp("[\?&]"+name+"=[^&#]*"))[0].split("=")[1]
          );
        } catch (ex) {
          return(null);
        }
      }

      function getOpenid(ev)
      {
        var thisUrl = location.href;
        location.href="snsapi-base.api?redir="+encodeURIComponent(thisUrl);

        ev || ev.preventDefault();
      }

      document.getElementById("openid").value = getParamValue("openid") || "";  
      document.getElementById("do-pay-button").disabled = (getParamValue("gbwxpr")==null);

      function buybuybuy(ev)
      {
        if (!getParamValue("gbwxpr"))
        {
          return;
          // to submit form
        }

        var gbwcpr = JSON.parse(decodeURIComponent(getParamValue("gbwxpr")));
        WeixinJSBridge.invoke(
          'getBrandWCPayRequest',
          gbwcpr,
          function(res){
            if(res.err_msg == "get_brand_wcpay_request:ok" )
            {
              alert("喵喵喵! ฅ(`Д´#)ฅ");
            //进库
            var json = '[{ORDERMPHONE:"'+$("#ordermphone").val()
           		+'",ORDERMCODE:"'+ordermcode
	  			+'",ORDERMGOODS:"'+ordermgoods
	  			+'",ORDERMMONEY:"'+ordermmoney
	  			+'",ORDERMPLACE:"'+$('#ordermplace').text()
	  			+'",ordermcustomer:"'+window.localStorage.getItem("openid")
	  			+'"}]';
	  		$.ajax({
	  			url : "OrdermAction.do?method=minsAll",
	  			type : "post",
	  			data : {
	  				json : json
	  			},
	  			success:function(resp){
	  				var respText = eval('('+resp+')');
	  				alert(respText.msg);
	  			},
	  			error : function(resp){
	  				var respText = eval('('+resp+')');
	  				alert(respText.msg);
	  			}
	  		});
            }
            else
            {
              //alert(res.err_msg);
              alert("支付失败!");
            }
            // 使用以上方式判断前端返回,微信团队郑重提示：res.err_msg 将在用户支付成功后返回 ok，但幵丌保证它绝对可靠。
          }
        );

        ev && ev.preventDefault();
      }
          
    </script>
    <script type="text/javascript">
    $(function(){
    	$("#ordermmoney").text("¥"+window.localStorage.getItem("ordermmoney"));
    	$("#ordermgoods").text(window.localStorage.getItem("ordermgoods"));
    	$("#ordermphone").text("("+window.localStorage.getItem("ordermplace")+")"+window.localStorage.getItem("ordermphone"));
    	//$("#ordermplace").text(window.localStorage.getItem("ordermplace"));
    })
    </script>
  </body>
</html>
