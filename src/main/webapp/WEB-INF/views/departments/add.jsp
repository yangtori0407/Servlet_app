<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<c:import url="/WEB-INF/views/template/common.jsp"></c:import>
	<link rel="stylesheet" href="/resources/css/form.css">
</head>
<body>
	<c:import url="/WEB-INF/views/template/header.jsp"></c:import>
	<section class="wrap_left contents">
		<c:import url="/WEB-INF/views/template/nav.jsp"></c:import>
		<div class="right contents_right">
			<!-- 컨텐츠 내용 서술 -->
			<div class=info>
				<h2>부서 추가 페이지</h2>
				<form action="./add.do" method="post" id=info_box>
					<input type="text" name="department_name" placeholder="부서명">
					<input type="text" name="manager_id" placeholder="매니저 ID">
					<input type="text" name="location_id" placeholder="로케이션 ID">
					<input type="submit" value="등록">
					<!-- <button type="submit">등록</button> -->
				</form>
			</div>
		</div>
	</section>
	<c:import url="/WEB-INF/views/template/footer.jsp"></c:import>
</body>
</html>


