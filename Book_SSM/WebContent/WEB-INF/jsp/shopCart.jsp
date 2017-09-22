<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path=request.getContextPath();
	String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<base href="<%=basepath %>" />
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<title>购物车页面</title>
<link rel="stylesheet" href="css/fullCar.css" />
<link rel="stylesheet" href="css/common.css"/>
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/icons.css" />
<link rel="stylesheet" href="css/table.css" />
<script type="text/javascript" src="js/shopCar.js" ></script>
<script type="text/javascript">
	if(window.closed){
		alert("关闭了");
	}
</script>
</head>
<body>
	<!--顶部-->
	<div class="top">
    	<div class="top_center">
            <ul class="top_bars">
            	<li><a href="#">退出</a>|</li>
                <li><a href="#">我的订单<span class="jt_down"></span></a>|</li>
                <li><a href="#">关注杰普<span class="jt_down"></span></a>|</li>
                <li><a href="#">网站导航<span class="jt_down"></span></a></li>
            </ul>
        </div>
    </div>
    <!--头部-->
    <div class="header3">
    	<a href="index.jsp"><img src="images/logo.png"  class="oneImg"></a>
    
        <div class="h3_right">
        	<img src="images/play_03.png" alt="">
        </div>
       
    </div>
<!--中间部分div-->
<div class="empty">
	<div class="peisong"><pre>全部商品 ${fn:length(orderLine_list) }</pre></div>
	<div class="mainCenter">
		<div class="allCheck">
			<input type="checkbox" name="ck" onclick="checkall()"><p>全选</p>
			<p class="leftM">商品</p>
			<p class="rightM">单价(元)</p>
			<p class="leftM">数量</p>
			<p class="leftM">小计(元)</p>
			<p class="leftM">操作</p>
		</div>
		<div class="mainPro">
			<div class="aa">
				<input type="checkbox" onclick="checkall()"><span id="but">自营</span>
			</div>
			<c:forEach items="${orderLine_list }" var="orderline">
			<div class="bb" id="${orderline.product.id }">
				<input id="${orderline.id}" type="checkbox" onclick="checkOne()" >
				<img src="${orderline.product.images.split('#')[0]}" width="100px" height="100px" >
				 <span>
                   	${orderline.product.name }
                    <br>
                </span>
                <div class="mm">
                	<span>¥${orderline.product.price }</span>
                </div>
                 <div id="shopcar_num_icon">
			    	<button id="span111" onclick="add(${orderline.product.stock},this)" >+</button>
			    	<input type="text" value="${orderline.amount }" id="book_num" />
			         <button id="span222" onclick="sub(this)" >-</button>
			    </div>
                <div class="ri">¥${orderline.single_price }元</div>
               	<div class="righ">
               		 <div class="rig"><a href="DeleteOrderlineServlet?id=${orderline.id }">删除</a></div>
               	</div>
			</div>
			</c:forEach>
		</div>
		<div class="allButtom">
			<p class="caozuo"> <a onclick="getMessage()" >去结算</a> </p>
			<span>已选择<font id="fone_size">0</font>件商品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总价(不含运费)：<font id="total_price">0</font></span>
		</div>
	</div>
</div>
     <!--脚部-->
    <div class="footer3" style="margin: auto;">
    	<div class="f3_top" style="width:100% ;margin: auto;">
        	<div class="f3_center">
                <div class="ts1">品目繁多 愉悦购物</div>
                <div class="ts2">正品保障 天天低价</div>
                <div class="ts3">极速物流 特色定制</div>
                <div class="ts4">优质服务 以客为尊</div>
            </div>
        </div>
        <div class="f3_middle">
        	<ul class="f3_center">
            	<li class="f3_mi_li01">
                	<h1>购物指南</h1>
                    <p>常见问题</p>
                    <p>找回密码</p>
                    <p>会员介绍</p>
                    <p>购物演示</p>
                </li>
                <li class="f3_mi_li01">
                	<h1>配送方式</h1>
                    <p>常见问题</p>
                    <p>找回密码</p>
                    <p>会员介绍</p>
                    <p>购物演示</p>
                </li>
                <li class="f3_mi_li01">
                	<h1>支付方式</h1>
                    <p>常见问题</p>
                    <p>找回密码</p>
                    <p>会员介绍</p>
                    <p>购物演示</p>
                </li>
                <li class="f3_mi_li01">
                	<h1>售后服务</h1>
                    <p>常见问题</p>
                    <p>找回密码</p>
                    <p>会员介绍</p>
                    <p>购物演示</p>
                </li>
                <li class="f3_mi_li01">
                	<h1>服务保障</h1>
                    <p>常见问题</p>
                    <p>找回密码</p>
                    <p>会员介绍</p>
                    <p>购物演示</p>
                </li>
                <li class="f3_mi_li06">
                	<h1>客服中心</h1>
                    <img src="images/qrcode_jprj.jpg" width="80px" height="80px">
                    <p>抢红包、疑问咨询、优惠活动</p>
                </li>
            </ul>
        </div>
         <div class="f3_bottom">
        	<p class="f3_links">
                <a href="#">关于我们</a>|
                <a href="#">联系我们</a>|
                <a href="#">友情链接</a>|
                <a href="#">供货商入驻</a> 
           	</p>
            <p>沪ICP备14033591号-8 杰普软件briup.com版权所有 杰普软件科技有限公司 </p>
          	<img src="images/police.png">
        </div>
    </div>
</body>
</html>