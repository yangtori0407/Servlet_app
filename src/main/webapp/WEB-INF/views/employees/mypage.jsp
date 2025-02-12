<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/template/common.jsp"></c:import>
</head>
<body>
	<c:import url="/WEB-INF/views/template/header.jsp"></c:import>
	<section class="wrap_left contents">
		<c:import url="/WEB-INF/views/template/nav.jsp"></c:import>
		<div class="right contents_right">
			<!-- 컨텐츠 내용 서술 -->
			
			<div>
				<h3>ID : ${sessionScope.user.employee_id}</h3>
				<h3>First Name: ${sessionScope.user.first_name}</h3> <!-- session -->
				<h3>Last Name: ${requestScope.user.last_name}</h3> <!-- request --> 
				<!-- 이런 식으로 속성값이 동일할 경우 생략을 안하는게 좋음! 생명주기가 제일 짧은 순서대로 찾기 시작한다. -->
			</div>
			<div>
				<a href="./update.do">정보 수정</a>
			</div>
			
		</div>
	</section>
	<c:import url="/WEB-INF/views/template/footer.jsp"></c:import>
</body>
</html>