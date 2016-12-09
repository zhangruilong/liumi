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
</head>
<body ontouchstart>
	<div class="page home js_show">
		<div class="page__hd">
			<div class="weui-cells">
				<div class="weui-cell">
					<div class="weui-cell__bd">
						<input id="ordermphone" class="weui-input" type="tel"
							placeholder="请输入手机号">
					</div>
					<div id="ordermplace" class="weui-cell__ft">归属地</div>
				</div>
			</div>
		</div>
		<div class="page__bd">
			<div class="weui-cells">
				<a onclick="dobuy('移动流量包10M',3)" class="weui-cell weui-cell_access"
					href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包10M</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">3.00(元)</div>
				</a><a onclick="dobuy('移动流量包30M',5)" class="weui-cell weui-cell_access"
					href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包30M</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">5.00(元)</div>
				</a> <a onclick="dobuy('移动流量包100M',10)"
					class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包100M</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">10.00(元)</div>
				</a> <a onclick="dobuy('移动流量包300M',20)"
					class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包300M</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">20.00(元)</div>
				</a> <a onclick="dobuy('移动流量包500M',30)"
					class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包500M</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">30.00(元)</div>
				</a> <a onclick="dobuy('移动流量包700M',40)"
					class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包700M</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">40.00(元)</div>
				</a> <a onclick="dobuy('移动流量包1G',50)" class="weui-cell weui-cell_access"
					href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包1G</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">50.00(元)</div>
				</a> <a onclick="dobuy('移动流量包2G',70)" class="weui-cell weui-cell_access"
					href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包2G</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">70.00(元)</div>
				</a> <a onclick="dobuy('移动流量包3G',100)"
					class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包3G</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">100.00(元)</div>
				</a> <a onclick="dobuy('移动流量包4G',130)"
					class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包4G</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">130.00(元)</div>
				</a> <a onclick="dobuy('移动流量包6G',180)"
					class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包6G</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">180.00(元)</div>
				</a> <a onclick="dobuy('移动流量包11G',280)"
					class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__bd">
						<p>移动流量包11G</p>
					</div>
					<div class="weui-cell__ft" style="color: red;">280.00(元)</div>
				</a>

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
</body>
<script type="text/javascript">
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
	function dobuy(ordermgoods, ordermmoney) {
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
						window.localStorage.setItem("ordermphone",$("#ordermphone").val());
						window.localStorage.setItem("ordermplace",$("#ordermplace").text());
						window.localStorage.setItem("ordermgoods",ordermgoods);
						window.localStorage.setItem("ordermmoney",ordermmoney);
						window.location.href = "demo-pay.jsp?action=sign&openid="
								+ window.localStorage.getItem("openid") + "&body="
								+ ordermgoods + "&total_fee=" + 0.01
								+ "&orderphone=" + $("#ordermphone").val()
								+ "&orderplace=" + $('#ordermplace').text();
					});
		}
	}
</script>
</html>