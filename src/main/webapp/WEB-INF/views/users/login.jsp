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
        <section class="product-form-section">
            <div class="product-form-wrapper">
                <h2 class="product-form-title">로그인</h2>
                <form action="./login.do" method="post" class="product-form">
                    <div class="form-group">
                        <label class="form-label" for="userId">아이디</label>
                        <input class="form-input" name="userName" type="text" id="userId" placeholder="아이디를 입력하세요" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="userPassword">비밀번호</label>
                        <input class="form-input" name="password" type="password" id="userPassword" placeholder="비밀번호를 입력하세요" required>
                    </div>
                    <button class="form-submit-btn" type="submit">로그인</button>
                </form>
            </div>
        </section>
    </section>
</body>
</html>