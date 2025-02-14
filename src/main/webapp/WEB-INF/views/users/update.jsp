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
        <section class="product-form-section" style="margin-top: 80px;">
            <div class="product-form-wrapper">
                <form action="/users/update.do" method="POST" class="product-form">
                    <h2 class="product-form-title">회원 정보 수정</h2>
                    <div class="user-info">
                        <div class="form-group">
                            <label for="userId" class="form-label">아이디</label>
                            <input type="text" id="userId" name="userName" class="form-input" value="${sessionScope.loginDTO.userName }" readonly>
                        </div>
                        <div class="form-group">
                            <label for="userName" class="form-label">이름</label>
                            <input type="text" id="userName" name="name" class="form-input" value="${sessionScope.loginDTO.name }">
                        </div>
                        <div class="form-group">
                            <label for="userPhone" class="form-label">핸드폰 번호</label>
                            <input type="text" id="userPhone" name="phone" class="form-input" value="${sessionScope.loginDTO.phone }">
                        </div>
                        <div class="form-group">
                            <label for="userEmail" class="form-label">이메일</label>
                            <input type="email" id="userEmail" name="email" class="form-input" value="${sessionScope.loginDTO.email }">
                        </div>
                    </div>
                    <button class="form-submit-btn">수정하기</button>
                </form>
            </div>
        </section>
    </section>
</body>
</html>