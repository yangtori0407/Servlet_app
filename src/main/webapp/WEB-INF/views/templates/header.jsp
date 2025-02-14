<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="header">
	<div class="header_center">
		<div class="logo">
			<a href="/index.do"><img src="/resources/images/shihan_bank_logo.svg.@ERESIZE@.preview.png"></a>
		</div>
		<div class="sign">
			<c:if test="${empty sessionScope.loginDTO }">
				<ul>
					<li><a href="/users/login.do">로그인</a></li>
					<li><a href="/users/join.do">회원가입</a></li>
				</ul>
			</c:if>
			<c:if test="${not empty sessionScope.loginDTO}">
				<ul>
					<li><a href="/users/logout.do">로그아웃</a></li>
					<li><a href="/users/mypage.do">마이페이지</a></li>
				</ul>
			</c:if>
		</div>
	</div>
</header>