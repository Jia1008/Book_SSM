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
<title>briup电子商务-首页</title>
<link rel="stylesheet" href="css/common.css"/>
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/icons.css" />
<link rel="stylesheet" href="css/table.css" />
<script type="text/javascript" src="js/indexScroll.js"></script>
</head>
<body onload="show()">
这个东西很好
	<!--顶部-->
	<div class="top">
    	<div class="top_center">
    		
    		<ul class="top_lr">
            	<c:if test="${my_user==null }">
	            	<li style="float: left;"><a href="login" style="color: red;">亲,请登入</a></li>
	                <li style="float: left; margin-left: 20px;"><a href="register">免费注册</a></li>
	            </c:if>
	            <c:if test="${my_user!=null }">
	            	<li>欢迎&nbsp;<a href="userinfo" style="color: red;">${my_user.name }</a></li>
	            </c:if>
            </ul>
            <ul class="top_bars">
            	<c:if test="${my_user!=null }">
            		<li><a href="#">退出登录<span class="jt_down"></span></a>|</li>
            	</c:if>
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
           	  <a href="emptyCar.html">去购物车结算</a>
              <span class="sj_right"> </span>
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
    
	<div class="container3">
    	<div class="c3_b1">
        	<div class="c3_b1_left">
            	<dl>
            	<c:forEach items="${category_list }" var="category">
            		<dd>
                    	<h1>${category.name }</h1>
                    	<p>
                    		<c:forEach items="${category.cate_detail }" var="category_detail">
                    			<a href="ListProduct/byCategory?categoryId=${category.id }&categorydetailId=${category_detail.id}">${category_detail.name }</a>
                    		</c:forEach>
                      	</p>
                    </dd>
            	</c:forEach>
                </dl>
            </div>
            <div class="c3_b1_center">
            	<div style="width: 696px; height: 295px;">
                	<!-- <a href="viewBook.html"><img src="images/ad1.png"></a> -->
               		<div style=" position:absolute;">
						<img src="product/ad1.png" width="696px" height="288px" style=" display:none" id="div1" border="0" />
					    <img src="product/ad2.png" width="696px" height="288px" style=" display:none" id="div2" border="0" />
					    <img src="product/ad3.png" width="696px" height="288px" style=" display:none" id="div3" border="0" />
					    <img src="product/ad4.png" width="696px" height="288px" style=" display:none" id="div4" border="0" />
					</div>
					<div style=" position:absolute; left:910px; top:496px;" align="center">
						<a href="javascript:show(1)">1</a>&nbsp;
						<a href="javascript:show(2)">2</a>&nbsp;
						<a href="javascript:show(3)">3</a>&nbsp;
						<a href="javascript:show(4)">4</a>&nbsp;
					</div>
                </div>	
                <div class="c3_b1_c_bottom">
                    <ul>
                    	<c:forEach items="${hotProduct_list }" var="product" begin="0" step="1" end="2">
	                        <li style="width: 33%; text-align: center;">
	                           <a href="ViewBook/detailView?productId=${product.id }"><img style="margin: auto" src="${product.images.split('#')[0] }" width="120px" height="160px" /></a>
	                           <a href="ViewBook/detailView?productId=${product.id }">${product.name }</a>  
	                        </li> 
                    	</c:forEach>
                    </ul>
            	</div>
            </div>
            <div class="c3_b1_right">
            	<h1>杰普快报<a href="#">更多</a></h1>
            	<ul>
                	<li><a href="#">〈加措〉相信这一切都是对我们最好的安排  </a></li>
                	<li><a href="#">〈加措〉相信这一切都是对我们最好的安排  </a></li>
                	<li><a href="#">〈加措〉相信这一切都是对我们最好的安排  </a></li>
                	<li><a href="#">〈加措〉相信这一切都是对我们最好的安排  </a></li>
                	<li><a href="#">〈加措〉相信这一切都是对我们最好的安排  </a></li>
                	<li><a href="#">〈加措〉相信这一切都是对我们最好的安排  </a></li>
                	<li><a href="#">〈加措〉相信这一切都是对我们最好的安排  </a></li>
                	<li><a href="#">〈加措〉相信这一切都是对我们最好的安排  </a></li>
                	<li><a href="#">〈加措〉相信这一切都是对我们最好的安排  </a></li>
                	<li><a href="#">〈加措〉相信这一切都是对我们最好的安排  </a></li>
                	<li><a href="#">〈加措〉相信这一切都是对我们最好的安排  </a></li>
                	<li><a href="#">〈加措〉相信这一切都是对我们最好的安排  </a></li>
                	<li><a href="#">〈加措〉相信这一切都是对我们最好的安排  </a></li>
                	<li><a href="#">〈加措〉相信这一切都是对我们最好的安排  </a></li>
                	<li><a href="#">〈加措〉相信这一切都是对我们最好的安排  </a></li>
                </ul>
            </div>
            <div style="clear:both"></div>
        </div>
        <div class="c3_b2">
        	<ul>
        	<c:forEach items="${indexBottom_list }" var="indexbottom" varStatus="var" begin="1" step="1" end="8">
        		<li class="no_mr">
                	<div class="c3_b2_txt">
                    	<h1>${indexbottom.name }</h1>
                        <h2>${indexbottom.title }</h2>
                        <h2>${indexbottom.explain }</h2>
                        <p><a href="ViewBook/detailView?productId=${indexbottom.id }">更多精彩，点击进入</a></p>
                    </div>
                </li>
        	</c:forEach>
            </ul>
        </div>
    <div class="c20"></div>
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