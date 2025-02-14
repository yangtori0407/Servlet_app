<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/templates/common.jsp"></c:import>
<link rel="styleSheet" href="/resources/css/mypage.css">
</head>
<body>
	<c:import url="/WEB-INF/views/templates/header.jsp"></c:import>
	<c:import url="/WEB-INF/views/templates/nav.jsp"></c:import>
	<section class="main">
		<!-- 내용 넣는 부분 -->
		<section class="product-form-section">
            <div class="product-form-wrapper">
                <h2 class="product-form-title">마이페이지</h2>
                <div class="user-info">
                    <div class="user-photo">
                        <img src="/resources/images/mypageImg.jpg" alt="프로필 사진">
                    </div>
                    <div class="user-details">
                        <div class="detail-item">
                            <span class="detail-label">아이디:</span>
                            <span class="detail-value">${sessionScope.loginDTO.userName}</span>
                        </div>
                        <div class="detail-item">
                            <span class="detail-label">이름:</span>
                            <span class="detail-value">${sessionScope.loginDTO.name }</span>
                        </div>
                        <div class="detail-item">
                            <span class="detail-label">핸드폰 번호:</span>
                            <span class="detail-value">${sessionScope.loginDTO.phone }</span>
                        </div>
                        <div class="detail-item">
                            <span class="detail-label">이메일:</span>
                            <span class="detail-value">${sessionScope.loginDTO.email }</span>
                        </div>
                    </div>
                </div>
                <a href="/accounts/list.do"class="detail_accounts">계좌정보</a>
                <a href="./update.do" class="form-submit-btn">수정하기</a>
            </div>
        </section>
	</section>
</body>
</html>