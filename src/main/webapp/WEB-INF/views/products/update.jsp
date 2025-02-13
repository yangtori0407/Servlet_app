<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/templates/common.jsp"></c:import>
<link rel="styleSheet" href="/resources/css/form.css">
</head>
<body>
    <c:import url="/WEB-INF/views/templates/header.jsp"></c:import>
    <c:import url="/WEB-INF/views/templates/nav.jsp"></c:import>
    <section class="main">
    	<!-- 내용 넣는 부분 -->
        <section class="product-form-section">
            <div class="product-form-wrapper">
                <h2 class="product-form-title">상품 내용 수정</h2>
                <form action="/products/update.do" method="POST" class="product-form">
                	<input type="hidden" name="productNum" value="${updateDTO.productNum }">
                    <div class="form-group">
                        <label for="name" class="form-label">상품 이름</label>
                        <input type="text" id="name" name="productName" class="form-input" placeholder="상품 이름 입력" value="${updateDTO.productName }">
                    </div>
                    <div class="form-group">
                        <label for="rate" class="form-label">이자율</label>
                        <input type="number" id="rate" name="productRate" class="form-input" placeholder="이자율 입력 (%)" step="0.01" value="${updateDTO.productRate }">
                    </div>
                    <div class="form-group">
                        <label for="details" class="form-label">상품 상세내용</label>
                        <textarea id="details" name="productDetail" class="form-input" placeholder="상품 상세내용 입력" rows="5" >${updateDTO.productDetail }</textarea>
                    </div>
        
                    <button type="submit" class="form-submit-btn">수정하기</button>
                </form>
            </div>
        </section>
    </section>
</body>
</html>