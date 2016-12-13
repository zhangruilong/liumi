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
	<div class="weui-panel">
        <div class="weui-panel__hd"></div>
        <div class="weui-panel__bd">
            <div class="weui-media-box weui-media-box_text">
                <h4 class="weui-media-box__title">标题一</h4>
                <p class="weui-media-box__desc">由各种物质组成的巨型球状天体，叫做星球。星球有一定的形状，有自己的运行轨道。</p>
                <ul class="weui-media-box__info">
                    <li class="weui-media-box__info__meta">文字来源</li>
                    <li class="weui-media-box__info__meta">时间</li>
                    <li class="weui-media-box__info__meta weui-media-box__info__meta_extra">其它信息</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
$(function(){
	$.ajax({
			url : "OrdermAction.do?method=selAll",
			type : "post",
			data : {
				/* wheresql : "ordermcustomer='"+window.localStorage.getItem("openid")+"'" */
			},
			success:function(resp){
				var respText = eval('('+resp+')');
				$(".weui-panel__bd").html("");
				 $.each(respText.root, function(i, item) {
					$(".weui-panel__bd").append('<div class="weui-media-box weui-media-box_text">'+
							'<h4 class="weui-media-box__title">'+item.ordermgoods+'</h4>'+
			                '<p class="weui-media-box__desc">充值手机：（'+item.ordermplace+'）'+item.ordermphone+'</p>'+
			                '<ul class="weui-media-box__info">'+
			                    '<li class="weui-media-box__info__meta">'+item.ordermdate+'</li>'+
			                    '<li class="weui-media-box__info__meta weui-media-box__info__meta_extra">¥'+item.ordermmoney+'(元)</li>'+
			                '</ul>'+
			            '</div>');
			   });
			},
			error : function(resp){
				var respText = eval('('+resp+')');
				alert(respText.msg);
			}
		});
})
</script>
</html>