<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<h2 class="product-form-title">회원가입</h2>
				<form action="/users/join.do" method="POST" class="product-form">
					<div class="form-group">
						<label for="username" class="form-label">아이디</label> <input
							type="text" id="username" name="userName" class="form-input"
							placeholder="아이디 입력" required >
					</div>
					<div class="form-group">
						<label for="password" class="form-label">비밀번호</label> <input
							type="password" id="password" name="password" class="form-input"
							placeholder="비밀번호 입력" required >
					</div>
					<div class="form-group">
						<label for="name" class="form-label">이름</label> <input type="text"
							id="name" name="name" class="form-input" placeholder="이름 입력"
							required >
					</div>
					<div class="form-group">
						<label for="phone" class="form-label">핸드폰번호</label> <input
							type="tel" id="phone" name="phone" class="form-input"
							placeholder="핸드폰번호 입력" required>
					</div>
					<div class="form-group">
						<label for="email" class="form-label">이메일</label> <input
							type="email" id="email" name="email" class="form-input"
							placeholder="이메일 입력" required>
					</div>
					<button type="submit" class="form-submit-btn">회원가입</button>
				</form>
			</div>
		</section>
	</section>
</body>
</html>