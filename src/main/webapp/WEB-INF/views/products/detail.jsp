<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/templates/common.jsp"></c:import>
<link rel="styleSheet" href="/resources/css/detail.css">
</head>
<body>
    <c:import url="/WEB-INF/views/templates/header.jsp"></c:import>
    <c:import url="/WEB-INF/views/templates/nav.jsp"></c:import>
    <section class="main">
    	<div class="main_detail">
            <div class="main_title">
                <span>상품안내</span>
                <a href="/products/update.do?productNum=${dto.productNum}">수정하기</a>
            </div>
            <div class="product_detail">
                <div class="product_detail_detailBox">
                    <div class="product_detail_name">
                        <span>${dto.productName}</span>
                    </div>
                    <div class="product_detail_detail">
                        <span>${dto.productDetail}</span>
                    </div>
                </div>
                <div class="product_detail_rateBox">
                    <div class="product_detail_rateImg"><img src="/resources/images/free-icon-passbook-9236169.png"></div>
                    <div class="product_detail_rate"><span>${dto.productRate}%</span></div>
                </div>
            </div>
            
            <a href="#" class="btn">가입하기</a>
		</div>
    </section>
</body>
</html>