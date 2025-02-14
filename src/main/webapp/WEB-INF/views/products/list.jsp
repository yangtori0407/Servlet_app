<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/templates/common.jsp"></c:import>
<link rel="styleSheet" href="/resources/css/list.css">
</head>
<body>
    <c:import url="/WEB-INF/views/templates/header.jsp"></c:import>
    <c:import url="/WEB-INF/views/templates/nav.jsp"></c:import>
    <section class="main">
    	<!-- 내용 넣는 부분 -->
        <div class="main_list">
            <div class="main_title">
                <span>금융 상품</span>
                <a href="/products/add.do">상품 추가하기</a>
            </div>
            <div class="product_list">
            	<!-- 반복 시키기 -->
            	<c:forEach items="${list}" var="dto" >
	                <div class="product_list_main">
	                    <div class="product_rate">
	                        <div class="product_rate_circle">
								<!-- rate 값 넣기 -->
								<div>${dto.productRate}%</div>
	                        </div>
	                    </div>
	                    <div class="product_name">
							<!-- 상품이름 넣기! -->
							<div>${dto.productName}</div>
	                    </div>
	                    <div class="product_detail">
	                        <a href="./detail.do?productNum=${dto.productNum}">자세히 보기</a>
	                    </div>
	                </div>
                </c:forEach>
            </div>
        </div>
    </section>
</body>
</html>