@@ -0,0 +1,36 @@
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
				<form action="./join.do" method="post" id=info_box>
					<input type="text" name="first_name" placeholder="이름">
					<input type="text" name="last_name" placeholder="성">
					<input type="text" name="email" placeholder="이메일">
					<input type="text" name="phone_number" placeholder="전화번호">
					<input type="text" name="job_id" placeholder="직장 ID">
					<input type="text" name="salary" placeholder="급여">
					<input type="text" name="commission_pct" placeholder="급여">
					<input type="text" name="manager_id" placeholder="매니저 ID">
					<input type="text" name="department_id" placeholder="부서 ID">
					<input type="password" name="password" placeholder="비밀번호">
					<input type="submit" value="등록">
				</form>
			</div>
		</div>
	</section>
	<c:import url="/WEB-INF/views/template/footer.jsp"></c:import>
</body>
</html>