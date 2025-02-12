<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/template/common.jsp"></c:import>
<link rel="styleSheet" href="/resources/css/form.css">
</head>
<body>
	<c:import url="/WEB-INF/views/template/header.jsp"></c:import>
	<section class="wrap_left contents">
		<c:import url="/WEB-INF/views/template/nav.jsp"></c:import>
		<div class="right contents_right">
			<!-- 컨텐츠 내용 서술 -->
			<div class=info>
				<form action="./update.do" method="post" id="info_box">
					<input type="hidden" name="employee_id" value="${sessionScope.user.employee_id}">
					<input type="text" name="first_name" value="${sessionScope.user.first_name}">
					<input type="text" name="last_name" value="${requestScope.user.last_name }">
					<input type="submit" value="수정">
				</form>
			</div>
		</div>
	</section>
	<c:import url="/WEB-INF/views/template/footer.jsp"></c:import>
</body>
</html>