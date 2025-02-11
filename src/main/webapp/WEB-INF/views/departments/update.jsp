<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/form.css">
</head>
<body>
	<h1>Update Form</h1>
	<div class="info">
		<form action="./update.do" method="post">
			<input type="hidden" name="department_id" value=${requestScope.dto.department_id}>
			<fieldset class="info_box">
				<legend>부서명</legend>
				<input type="text" name="department_name" value=${requestScope.dto.department_name}>
			</fieldset>
			<fieldset class="info_box">
				<legend>매니저 ID</legend>
				<input type="text" name="manager_id" value=${dto.manager_id }>
			</fieldset>
			<fieldset class="info_box">
				<legend>지역 ID</legend>
				<input type="text" name="location_id" value=${dto.location_id }>
			</fieldset>
			<button type="submit">수정</button>
		</form>
	</div>
	
</body>
</html>
