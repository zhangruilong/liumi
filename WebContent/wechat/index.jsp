<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0">
<title>流秘</title>
<link rel="stylesheet" href="../style/weui.css" />
<link rel="stylesheet" href="./example.css" />
<script src="./zepto.min.js"></script>
<script src="./weui.min.js"></script>
<script src="../zrlextpages/common/commonunits.js"></script>
</head>
<body ontouchstart>
	<div class="page home js_show">
		<!-- <div class="page__hd">
			<div class="weui-cells">
				<div class="weui-cell">
					<div class="weui-cell__bd">
						<input id="ordermphone" class="weui-input" type="tel"
							placeholder="请输入手机号">
					</div>
					<div id="ordermplace" class="weui-cell__ft">归属地</div>
				</div>
			</div>
		</div> -->
		<div class="page__bd" style="height: 100%;">
        <div class="weui-tab">
            <div class="weui-tab__panel">
			<div class="weui-cells">
				<div class="weui-cell"></div>
				<div class="weui-cell">
					<div class="weui-cell__bd">
						<input id="ordermphone" class="weui-input" type="tel"
							placeholder="请输入手机号">
					</div>
					<div id="ordermplace" class="weui-cell__ft">未知归属地</div>
				</div>
				<div class="weui-cell"></div>
				<a onclick="dobuy('100010','移动流量包10M','3.00')" class="weui-cell weui-cell_access"
					href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包10M</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">3.00(元)</div>
				</a><a onclick="dobuy('100030','移动流量包30M','5.00')" class="weui-cell weui-cell_access"
					href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包30M</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">5.00(元)</div>
				</a> <a onclick="dobuy('100100','移动流量包100M','10.00')"
					class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包100M</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">10.00(元)</div>
				</a> <a onclick="dobuy('100300','移动流量包300M','20.00')"
					class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包300M</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">20.00(元)</div>
				</a> <a onclick="dobuy('100500','移动流量包500M','30.00')"
					class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包500M</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">30.00(元)</div>
				</a> <a onclick="dobuy('100700','移动流量包700M','40.00')"
					class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包700M</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">40.00(元)</div>
				</a> <a onclick="dobuy('101024','移动流量包1G','50.00')" class="weui-cell weui-cell_access"
					href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包1G</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">50.00(元)</div>
				</a> <a onclick="dobuy('102048','移动流量包2G','70.00)" class="weui-cell weui-cell_access"
					href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包2G</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">70.00(元)</div>
				</a> <a onclick="dobuy('103072','移动流量包3G','100.00')"
					class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包3G</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">100.00(元)</div>
				</a> <a onclick="dobuy('104096','移动流量包4G','130.00')"
					class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包4G</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">130.00(元)</div>
				</a> <a onclick="dobuy('106144','移动流量包6G','180.00')"
					class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包6G</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">180.00(元)</div>
				</a> <a onclick="dobuy('111264','移动流量包11G','280.00')"
					class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包11G</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">280.00(元)</div>
				</a>
			</div>
            </div>
            <div class="weui-tabbar">
                <a href="javascript:;" class="weui-tabbar__item weui-bar__item_on">
                    <span style="display: inline-block;position: relative;">
                        <img src="./images/icon_tabbar.png" alt="" class="weui-tabbar__icon">
                        <span class="weui-badge" style="position: absolute;top: -2px;right: -13px;">12</span>
                    </span>
                    <p class="weui-tabbar__label">商城</p>
                </a>
                <a href="choujiang.jsp" class="weui-tabbar__item">
                    <img src="./images/icon_tabbar.png" alt="" class="weui-tabbar__icon">
                    <p class="weui-tabbar__label">抽奖</p>
                </a>
                <a href="javascript:;" class="weui-tabbar__item">
                    <span style="display: inline-block;position: relative;">
                        <img src="./images/icon_tabbar.png" alt="" class="weui-tabbar__icon">
                        <span class="weui-badge weui-badge_dot" style="position: absolute;top: 0;right: -6px;"></span>
                    </span>
                    <p class="weui-tabbar__label">发现</p>
                </a>
                <a href="mine.jsp" class="weui-tabbar__item">
                    <img src="./images/icon_tabbar.png" alt="" class="weui-tabbar__icon">
                    <p class="weui-tabbar__label">我</p>
                </a>
            </div>
        </div>
    </div>
	</div>
	<!--BEGIN dialog1-->
	<div class="js_dialog" id="iosDialog1" style="display: none;">
		<div class="weui-mask"></div>
		<div class="weui-dialog">
			<div class="weui-dialog__hd">
				<strong class="weui-dialog__title">确定购买</strong>
			</div>
			<div class="weui-dialog__bd">是否跳转到微信支付?</div>
			<div class="weui-dialog__ft">
				<a href="javascript:;"
					class="weui-dialog__btn weui-dialog__btn_default">取消</a> <a
					href="javascript:;"
					class="weui-dialog__btn weui-dialog__btn_primary">确定</a>
			</div>
		</div>
	</div>
	<!--BEGIN dialog2-->
        <div class="js_dialog" id="iosDialog2" style="display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <div class="weui-dialog__bd">请填写正确的手机号码！</div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary">知道了</a>
                </div>
            </div>
        </div>
        <!--BEGIN dialog1-->
	<div class="js_dialog" id="iosDialog3" style="display: none;">
		<div class="weui-mask"></div>
		<div class="weui-dialog">
			<div class="weui-dialog__hd">
				<strong class="weui-dialog__title">马上注册送积分</strong>
			</div>
			<div class="weui-dialog__bd">
			<div class="weui-cell weui-cell_vcode">
                <div class="weui-cell__bd">
                    <input id="regedictphone" class="weui-input" type="tel" placeholder="请输入手机号">
                </div>
            </div>
			</div>
			<div class="weui-dialog__ft">
				<a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary">注册</a>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
$(function(){
	$.ajax({
			url : "CustomerAction.do?method=selAll",
			type : "post",
			data : {
				wheresql : "openid='"+window.localStorage.getItem("openid")+"'"
			},
			success:function(resp){
				var respText = eval('('+resp+')');
				if(typeof(respText.root[0]) == 'undefined'){
					$('#iosDialog3').fadeIn(200).on('click', '.weui-dialog__btn_default',
							function() {
								$(this).parents('.js_dialog').fadeOut(200);
							}).on(
							'click',
							'.weui-dialog__btn_primary',
							function() {
								//确定
								//用户注册
								regedict();
								location.reload();
							});
				}else if(respText.root[0].customerstatue=='禁用'){
					alert('您的账号已被禁用,请联系客服！');
					window.localStorage.removeItem("customer");			//将customer移除
					return;
				}else{
					window.localStorage.setItem("customer",respText.root[0]);
				}
				
			},
			error : function(resp){
				var respText = eval('('+resp+')');
				alert(respText.msg);
			}
		});
})
function regedict(){
	var regedictphone = $("#regedictphone").val();
	//进库
    var json = '[{customerphone:"'+regedictphone
   			+'",openid:"'+window.localStorage.getItem("openid")
			+'",customerpoint:"'+88
			+'"}]';
		$.ajax({
			url : "CustomerAction.do?method=insAll",
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
$('#ordermphone').bind('input propertychange', function() {
	//进行相关操作 
	var value = $("#ordermphone").val();
	if (value.indexOf("136") == 0) {
		$('#ordermplace').text("江苏无锡");
	}
	if (11 == value.length) {
		$('.weui_cells_access').show();
	} else if (value.length > 11) {
		//截取前11个字符
		value = value.substring(0, 11);
		$("#ordermphone").val(value);
	}
});
function dobuy(ordermcode, ordermgoods, ordermmoney) {
	var value = $("#ordermphone").val();
	if (11 != value.length) {
		$('#iosDialog2').fadeIn(200).on('click', '.weui-dialog__btn_primary',
				function() {
					$(this).parents('.js_dialog').fadeOut(200);
				})
	}else{
		$('#iosDialog1').fadeIn(200).on('click', '.weui-dialog__btn_default',
				function() {
					$(this).parents('.js_dialog').fadeOut(200);
				}).on(
				'click',
				'.weui-dialog__btn_primary',
				function() {
					//确定
					var ordermid = getNewId();
					window.localStorage.setItem("ordermid",ordermid);
					window.localStorage.setItem("ordermphone",$("#ordermphone").val());
					window.localStorage.setItem("ordermplace",$("#ordermplace").text());
					window.localStorage.setItem("ordermcode",ordermcode);
					window.localStorage.setItem("ordermgoods",ordermgoods);
					window.localStorage.setItem("ordermmoney",ordermmoney);
					window.location.href = "demo-pay.jsp?action=sign&openid="
							+ window.localStorage.getItem("openid") + "&body="
							+ ordermgoods + "&total_fee=" + 0.01
							+ "&out_trade_no=" + ordermid;
				});
	}
}
</script>
</html>