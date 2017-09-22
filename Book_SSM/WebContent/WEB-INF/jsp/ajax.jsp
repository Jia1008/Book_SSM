<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path=request.getContextPath();
	String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basepath %>" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="c4_b5_content">
     	<ul class="c4_b5_c_boxes">
     	<c:forEach items="${ajaxProduct_list }" var="product">
         	<li class="c4_b5_c_box">
             	<!--图片-->
             	<div class="c4_b5_c_box_pic">
                 	<div class="c4b5_pic_view">
                     	<a href="viewBook.html"><img src="${product.images.split('#')[0] }"></a>
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
</body>
</html>