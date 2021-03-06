<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path=request.getContextPath();
	String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basepath %>" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品列表</title>
<link rel="stylesheet" href="css/common.css"/>
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/icons.css" />
<link rel="stylesheet" href="css/table.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/list.js"></script>
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
    	<a href="index"><img src="images/logo.png"></a>
    	<div class="h3_center">
        	<div class="search_box">
            	<input type="text"/>
                <span>搜索</span>
            </div>
            <p>
            	<c:forEach items="${category_list }" var="category">
	            	<a href="#">${category.name }</a>|
            	</c:forEach>
            </p>
        </div>
        <div class="h3_right">
        	<div class="myyy">
            	<a href="userinfo.html">个人信息</a>
                <span class="sj_down"></span>
             </div>
            <div class="tsc">
            	<a href="shopCart.html">去购物车结算</a>
                <span class="sj_right"></span>
            </div>
        </div>
    </div>
    <!--头部导航-->
    <div class="nav_top">
    	<div class="nav_top_center">
            <div>
                全部图书分类
            </div>
            <ul>
            	<c:forEach items="${category_list }" var="category">
	            	<li><a href="#">${category.name }</a></li>
            	</c:forEach>
            </ul>
        </div>
    </div>
    
    <!--内容-->
    <div class="container4">
    	<!--热卖-->
    	<div class="c4_b1">
        	<ul class="c4_b1_boxes">
        	<c:forEach items="${productbycategory_list }" var="product" begin="0" step="1" end="3">
        		<li>
                	<img src="${product.images.split('#')[0] }">
                    <div class="c4_b1_box_txt">
                    	<p>${product.name } </p>
                        <h1>活动价：<b>￥${product.price }</b></h1>
                        <h2>立即抢购</h2>
                    </div>
                </li>
        	</c:forEach>
            </ul>
        </div>
        <div class="c4_b2">
            <h1 class="c4_b2_x">
            	<c:forEach items="${categoryDetail_list }" var="categoryDetail" begin="0" step="1" end="0">
	            	<c:set var="getCategoryId" value="${categoryDetail.category.id }" scope="session"></c:set>
	            	<a href="#">${categoryDetail.category.name }&nbsp;&nbsp;></a>
	                <span><a href="#">${categoryDetail.name }</a></span>
            	</c:forEach>
            </h1> 
                
            <ul class="c4_b2_y">
            	<li>
                	<span class="search_key">价格：</span>
                    <span id="list_price" class="search_val">0-99</span>
                    <span class="search_del"></span>
                </li>
                <li>
                	<span class="search_key">出版社：</span>
                    <span id="list_publish" class="search_val">清华出版社</span>
                    <span class="search_del"></span>
                </li>
            </ul>
        </div>
        <div class="c4_b3">
        	<h1></h1>
        	<div>
            	<ul class="c4_b3_search">
                	<li class="c4_b3_name">价格：</li>
                    <li class="c4_b3_vals">
	                    <c:forEach items="${priceRank_list }" var="priceRank">
	                        <a onclick="getPrice(this)" name="categoryId=${getCategoryId }&price_min=${priceRank.min_price }&price_max=${priceRank.max_price}">${priceRank.min_price }-${priceRank.max_price }</a>
	                    </c:forEach>
					</li>
                </ul><ul class="c4_b3_search">
                	<li class="c4_b3_name">出版社：</li>
                    <li class="c4_b3_vals">
                    <c:forEach items="${publish_list }" var="publish">
                        <a onclick="getPublish(this)" name="categoryId=${getCategoryId }&publishId=${publish.id }">${publish.name }</a>
                    </c:forEach>
					</li>
                </ul>
            </div>
        </div>
    	<div class="c4_b4">
        	<div class="c4_b4_x">
            	<ul class="c4_b4_nav">
                	<li class="current"><a onclick="getOrder(this)" name="categoryId=${getCategoryId }&method=p.id">默认</a></li>
                    <li><a onclick="getOrder(this)" name="categoryId=${getCategoryId }&method=p.sale_num">销量</a></li>
                    <li><a onclick="getOrder(this)" name="categoryId=${getCategoryId }&method=p.price">价格</a></li>
                    <li><a onclick="getOrder(this)" name="categoryId=${getCategoryId }&method=p.start_date">新品</a></li>
                </ul>
                <div class="c4_b4_search">
                	<input type="text"/><span>确认</span>
                </div>
                <div class="c4_b4_pages">
                	
                </div>
				<div class="clear"></div>
            </div>
             <div class="c4_b4_y">
            	<ul>
                    <li><input type="checkbox"> 仅显示有货</li>
                </ul>               
            </div>
       	</div>
    	<!--商品列表-->
        <div class="c4_b5" id="list_ajax">	
        	<div class="c4_b5_content">
            	<ul class="c4_b5_c_boxes">
            	<c:forEach items="${productbycategory_list }" var="product">
            		<li class="c4_b5_c_box">
                    	<!--图片-->
                    	<div class="c4_b5_c_box_pic">
                        	<div class="c4b5_pic_view">
                            	<a href="#"><img src="${product.images.split('#')[0] }"></a>
                            </div>
                        </div>
                        <!--价钱-->
                        <div class="c4_b5_c_box_txt">
                        	<h1>￥ ${product.price }</h1>
                            <h2><a href="viewBook.html">${product.name }</a></h2>
                        </div>
                        <!--购买等操作-->
                        <div class="c4b5_el">
                        	<div class="c4b5_el_x">
                            	<span class="wjx01"></span>
                            </div>
                        </div>
                        <ul class="c4b5_option">
                                <li class="shopcar_box"><span class="shopcar01"></span><a href="javascript:void(0)" onclick="addShopCart('book_1')">加入购物车 </a></li>
                        </ul>
                    </li>
            	</c:forEach>
                </ul>
            </div>
        </div>
    </div>
    <!--脚部-->
    <div class="footer3">
    	<div class="f3_top">
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
            <p>沪ICP备14033591号-8 杰普briup.com版权所有 杰普软件科技有限公司 </p>
          	<img src="images/police.png">
        </div>
    </div>

</body>
</html>