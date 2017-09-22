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
<title>商品详情</title>
<link rel="stylesheet" href="css/common.css"/>
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/icons.css" />
<link rel="stylesheet" href="css/table.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/viewbook.js"></script>
<style type="text/css">
	.red_publish{
		background-color: red;
	}
</style>
</head>
<body>
	<!--顶部-->
	<div class="top">
    	<div class="top_center">
            <ul class="top_bars">
            	<li><a href="index.html">退出</a>|</li>
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
	            	<a href="ListProduct/byCategory?categoryId=${category.id }">${category.name }</a>|
            	</c:forEach>
            </p>
        </div>
        <div class="h3_right">
        	<div class="myyy">
            	<a href="userinfo">个人信息</a>
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
                	<li><a href="ListProduct/byCategory?categoryId=${category.id }">${category.name }</a></li>
            	</c:forEach>
            </ul>
        </div>
    </div>
    
	<div class="container5">
    	<div class="cn5_top">
            <div class="cn5_top_x center01">
            	<a class="font20" href="#">书籍</a>
                <a href="#">${product_vb.cate_detail.name }</a>
            </div>
            <div class="cn5_top_y center01">
            	<div class="cn5topy_1">
                	<div class="cn5topy_imgview">
                    	<img src="${product_vb.images.split('#')[0] }"/>
                        <ul class="cn5topy_imglist">
                        	<li><a href="#"><img src="${product_vb.images.split('#')[0] }"></a></li>
                            <li class="current"><a href="#"><img src="${product_vb.images.split('#')[0] }"></a></li>
                            <li><a href="#"><img src="${product_vb.images.split('#')[0] }"></a></li>
                            <li><a href="#"><img src="${product_vb.images.split('#')[0] }"></a></li>
                            <li><a href="#"><img src="${product_vb.images.split('#')[0] }"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="cn5topy_2">
                	<h1 class="pro_title font15">${product_vb.name}</h1>
                    <div class="pro_price">
                            <div class="pro_price_x">
                                <p> briup价：<b>￥${product_vb.price}</b> <a href="#">(降价通知)</a></p>
                            </div>
                            
                    </div>
                    <div class="pro_ship">
                        <div>
                        	<div class="pro_key fl">服&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务：</div>
                            <ul class="pro_service f1">
                                <li class="service_fq">${product_vb.service_fg}</li>
                                <li class="service_myf">${product_vb.service_myf}</li>
                                <li class="service_zt">${product_vb.service_zt}</li>
                                <li class="service_th">${product_vb.service_th}</li>
                            </ul>
                        </div>
                    </div>
                    <div class="pro_selects">
                    	<div class="pro_select">
                        	<div class="pro_key pro_key_vertical fl">选择版本：</div>
                            <ul class="pro_select_vals">
                            	<!-- 按照数据库中数据，设置1为简装版 -->
                                <li class="red_publish">精装版</li>
                                <li>简装版</li>
                                <li>收藏版</li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="pro_buy">
                    	<div class="pro_buy_nums">
                        	<input type="text" value="1" id="book_num"/>
                            <dl>
                            	<dd onclick="add(${product_vb.stock})" >+</dd>
                                <dd onclick="sub()" >-</dd>
                            </dl>
                        </div>
                        <div class="pro_addshop"> <a id="shopcarid" href="shopCar/add?goodsid=${product_vb.id }&num=1" onclick="addShopCart('当前书')">加入购物车 </a></div>
                    </div>
                </div>
            </div>
        </div>
    	<div class="c5_b2">
        	
            <div class="c5_b2_right">
            	<!--选项卡-->
            	<ul class="c5_b2_tabs">
                	<li id="vb_title_1" onclick="change(1)" >商品介绍</li>
                    <li id="vb_title_2" onclick="change(2)" class="current">规格参数</li>
                    <li id="vb_title_3" onclick="change(3)" >包装清单</li>
                    <li id="vb_title_4" onclick="change(4)" >商品评价</li>
                </ul>
                <!--内容-->
                <div id="vb_ggcs_1" style="display: none;">
                	 <div class="intro_pics">
                        <div style="width: 500px; height: 280px;">
		              		<pre style="font-size: 20px;">：${product_vb.description}</pre>
                        </div>
               		</div>
                 </div>
                 <div id="vb_ggcs_2">
              		<div class="c5_b2_right_1 box">
                        <div class="introduce_item">
                          <ul>
                            <li>书名：${product_vb.name}</li>
                            <li>作者：${product_vb.writer}</li>
                            <li>书籍编号：${product_vb.ISBN}</li>
                            <li>书籍上架时间：${product_vb.start_date}</li>
                            <li>书籍价格：${product_vb.price}元</li>
                            <li class="fr"><a class="color_link1" href="#">更多参数>></a></li>
                          </ul>
                        </div>
               		</div>
                    <div class="intro_pics">
                    	<img class="intro_pic" src="${product_vb.images.split('#')[0] }" style="width: 300px; height: 300px;">
                    </div>
                 </div>
                 <div id="vb_ggcs_3" style="display: none;">
              		<div class="c5_b2_right_1 box">
                        <div class="introduce_item">
                          <ul>
                            <li>书籍编号：${product_vb.ISBN}</li>
                            <li>书籍页数：${product_vb.pages}</li>
                            <li>书籍出版时间：${product_vb.publish_date}</li>
                            <li>付款方式：${product_vb.service_fg}</li>
                             <li>退货情况提示：${product_vb.service_th}</li>
                            <li class="fr"><a class="color_link1" href="#">更多参数>></a></li>
                          </ul>
                        </div>
               		</div>
                 </div>
                 <div id="vb_ggcs_4" style="display: none;">
              		<div class="c5_b2_right_1 box">
              			<div style="width: 500px; height: 300px;">
              			<c:if test="${evaluate_vblist!=null }">
	              			<c:forEach items="${evaluate_vblist }" var="evaluate_vb">
	              				<p style="font-size: 16px;">
			                  	 购买用户: <span style="font-weight: bold;">${evaluate_vb.user.name }说:</span>
			                      <br>&nbsp;&nbsp;&nbsp;&nbsp;${evaluate_vb.content }
	              				</p>
	              			</c:forEach>
              			</c:if>
              			<c:if test="${evaluate_vblist==null }">
              				<span style="font-size: 16px;">暂无用户评论</span>
              			</c:if>
              			</div>
               		</div>
                 </div>
            </div>
                
                
            <div class="c5_b2_right">
              	<div class="c5_b2_right_2">
                    	<h1>正品行货</h1>
                        <p>briup网上商城向您保证所售商品均为正品，briup自营商品开具机打发票或电子发票。</p>
                        
                        <h1>全国联保</h1>
                        <p>凭质保证书及briup网上商城发票，可享受全国联保服务，与您亲临商场选购的商品享受相同的质量保证。briup网上商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！</p>
                        
                        <h1>正品行货</h1>
                        <p>briup网上商城向您保证所售商品均为正品，briup自营商品开具机打发票或电子发票。</p>
                        
                        <h1>全国联保</h1>
                        <p>凭质保证书及briup网上商城发票，可享受全国联保服务，与您亲临商场选购的商品享受相同的质量保证。briup网上商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！</p>
                        
            		</div> 
            </div>
            
            <!--左侧栏-->
            <div class="c5_b2_left_container">
                <div class="c5_b2_left box">
                    <h1>服务时间 早9：00~凌晨1：00</h1>
                    <p>
                    <a href="#">
                        <img class="callmebyqq" src="images/icon_qq_03.png"/>
                    </a>
                    </p>
                </div>
                
                <div class="c5_b2_left box">
                    <h1>其他种类</h1>
                    <dl>
                        <dd>文学类</dd>
                        <dd>漫画类</dd>
                        <dd>通书类</dd>
                    </dl>
                    <dl>
                        <dd>文学类</dd>
                        <dd>漫画类</dd>
                        <dd>通书类</dd>
                    </dl>
                </div>
            </div> 
        </div>
    </div>
    	
    <div class="c20"></div>
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
