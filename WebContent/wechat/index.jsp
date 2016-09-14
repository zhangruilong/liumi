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
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>流秘</title>
    <link rel="stylesheet" href="../style/weui.css"/>
    <link rel="stylesheet" href="./example.css"/>
</head>
<body ontouchstart>
<form id="form" enctype="application/x-www-form-urlencoded">
    <table>
      <tr><td>商品名称</td><td><input name="body" value="喵喵喵"/></td></tr>
      <tr><td>价格</td><td><input name="total_fee" value="0.01"/></td></tr>
      <tr><td>openid</td><td><input id="openid" name="openid" size="32" /><button type="button" onclick="javascript:getOpenid(event)">acquire</button></td></tr>
      <tr><td></td><td><button type="submit" name="action" value="sign">创建订单</button><button id="do-pay-button" type="button" onclick="javascript:buybuybuy(event);" disabled>支付</button></td></tr>
    </table>
    </form>
<div class="hd">
	<div class="weui_cells">
        <div class="weui_cell">
            <div class="weui_cell_bd weui_cell_primary">
                <input id="ordermphone" maxlength="11" class="weui_input" type="number" pattern="[0-9]*" placeholder="请输入手机号">
            </div>
            <div id="ordermplace" class="weui_cell_ft">
            </div>
        </div>
    </div>
</div>
<div class="bd">
    <div class="weui_cells weui_cells_access" style="display: none;">
        <a onclick="dobuy('移动流量包10M',3)" class="weui_cell" href="javascript:;">
            <div class="weui_cell_bd weui_cell_primary">
                <p>移动流量包10M</p>
            </div>
            <div class="weui_cell_ft" style="color: red;">3.00(元)</div>
        </a>
        <a onclick="dobuy('移动流量包30M',5)" class="weui_cell" href="javascript:;">
            <div class="weui_cell_bd weui_cell_primary">
                <p>移动流量包30M</p>
            </div>
            <div class="weui_cell_ft" style="color: red;">5.00(元)</div>
        </a>
        <a onclick="dobuy('移动流量包100M',10)" class="weui_cell" href="javascript:;">
            <div class="weui_cell_bd weui_cell_primary">
                <p>移动流量包100M</p>
            </div>
            <div class="weui_cell_ft" style="color: red;">10.00(元)</div>
        </a>
        <a onclick="dobuy('移动流量包300M',20)" class="weui_cell" href="javascript:;">
            <div class="weui_cell_bd weui_cell_primary">
                <p>移动流量包300M</p>
            </div>
            <div class="weui_cell_ft" style="color: red;">20.00(元)</div>
        </a>
        <a onclick="dobuy('移动流量包500M',30)" class="weui_cell" href="javascript:;">
            <div class="weui_cell_bd weui_cell_primary">
                <p>移动流量包500M</p>
            </div>
            <div class="weui_cell_ft" style="color: red;">30.00(元)</div>
        </a>
        <a onclick="dobuy('移动流量包700M',40)" class="weui_cell" href="javascript:;">
            <div class="weui_cell_bd weui_cell_primary">
                <p>移动流量包700M</p>
            </div>
            <div class="weui_cell_ft" style="color: red;">40.00(元)</div>
        </a>
        <a onclick="dobuy('移动流量包1G',50)" class="weui_cell" href="javascript:;">
            <div class="weui_cell_bd weui_cell_primary">
                <p>移动流量包1G</p>
            </div>
            <div class="weui_cell_ft" style="color: red;">50.00(元)</div>
        </a>
        <a onclick="dobuy('移动流量包2G',70)" class="weui_cell" href="javascript:;">
            <div class="weui_cell_bd weui_cell_primary">
                <p>移动流量包2G</p>
            </div>
            <div class="weui_cell_ft" style="color: red;">70.00(元)</div>
        </a>
        <a onclick="dobuy('移动流量包3G',100)" class="weui_cell" href="javascript:;">
            <div class="weui_cell_bd weui_cell_primary">
                <p>移动流量包3G</p>
            </div>
            <div class="weui_cell_ft" style="color: red;">100.00(元)</div>
        </a>
        <a onclick="dobuy('移动流量包4G',130)" class="weui_cell" href="javascript:;">
            <div class="weui_cell_bd weui_cell_primary">
                <p>移动流量包4G</p>
            </div>
            <div class="weui_cell_ft" style="color: red;">130.00(元)</div>
        </a>
        <a onclick="dobuy('移动流量包6G',180)" class="weui_cell" href="javascript:;">
            <div class="weui_cell_bd weui_cell_primary">
                <p>移动流量包6G</p>
            </div>
            <div class="weui_cell_ft" style="color: red;">180.00(元)</div>
        </a>
        <a onclick="dobuy('移动流量包11G',280)" class="weui_cell" href="javascript:;">
            <div class="weui_cell_bd weui_cell_primary">
                <p>移动流量包11G</p>
            </div>
            <div class="weui_cell_ft" style="color: red;">280.00(元)</div>
        </a>
    </div>
</div>
<!--BEGIN dialog1-->
<div class="weui_dialog_confirm" id="dialog1" style="display: none;">
    <div class="weui_mask"></div>
    <div class="weui_dialog">
        <div class="weui_dialog_hd"><strong class="weui_dialog_title">确定购买</strong></div>
        <div class="weui_dialog_bd">是否跳转到微信支付?</div>
        <div class="weui_dialog_ft">
            <a href="javascript:;" class="weui_btn_dialog default">取消</a>
            <a href="javascript:;" class="weui_btn_dialog primary">确定</a>
        </div>
    </div>
</div>
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
<!--END dialog1-->
</body>
<script src="./zepto.min.js"></script>
<script type="text/javascript">
$('#ordermphone').bind('input propertychange', function() { 
 	//进行相关操作 
 	var value = $("#ordermphone").val();
	if(value.indexOf("136")==0){
		$('#ordermplace').text("江苏无锡");
	}
	if(11==value.length){
		$('.weui_cells_access').show();
	}else if(value.length>11){
		//截取前11个字符
		value = value.substring(0,11);
		$("#ordermphone").val(value);
	}
});
 
function dobuy(ordermgoods,ordermmoney){
	$('#dialog1').show().on('click', '.default', function () {
	    $('#dialog1').off('click').hide();
	}).on('click', '.primary', function () {
		//确定
		var json = '[{ORDERMPHONE:"'+$("#ordermphone").val()
			+'",ORDERMGOODS:"'+ordermgoods
			+'",ORDERMMONEY:"'+ordermmoney
			+'",ORDERMPLACE:"'+$('#ordermplace').text()
			+'"}]';
		$.ajax({
			url : "OrdermAction.do?method=insAll",
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
	    $('#dialog1').off('click').hide();
	});
}
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
      }
      else
      {
        alert(res.err_msg);
      }
      // 使用以上方式判断前端返回,微信团队郑重提示：res.err_msg 将在用户支付成功后返回 ok，但幵丌保证它绝对可靠。
    }
  );

  ev && ev.preventDefault();
}
</script>
</html>
