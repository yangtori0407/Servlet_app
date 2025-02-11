<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<h2>Location 등록 페이지</h2>
				<form action="./add.do" method="post" id=info_box>
					<input type="text" name="street_address" placeholder="주소"> 
					<input type="text" name="postal_code" placeholder="우편번호"> 
					<input type="text" name="city" placeholder="도시명"> 
					<input type="text" name="state_province" placeholder="도">
					<input type="text" name="country_id" placeholder="나라 ID"> 
					<input type="submit">
				</form>
			</div>
			
		</div>
	</section>
	<c:import url="/WEB-INF/views/template/footer.jsp"></c:import>
</body>
</html>

