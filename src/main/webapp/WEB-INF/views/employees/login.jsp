<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<div class=info>
				<form action="./login.do" method="post" id=info_box>
					<input type="text" name="employee_id" placeholder="아이디">
					<input type="password" name="password" placeholder="비밀번호">
					<input type="submit" value="등록">
				</form>
			</div>
		</div>
	</section>
	<c:import url="/WEB-INF/views/template/footer.jsp"></c:import>
</body>
</html>