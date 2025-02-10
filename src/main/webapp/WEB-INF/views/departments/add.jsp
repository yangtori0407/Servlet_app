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
	
	<div class=info>
		<h1>부서 추가 페이지</h1>
		<form action="./add.do" method="post">
			<fieldset>
				<legend>부서명</legend>
				<input type="text" name="department_name">
			</fieldset>
			<fieldset>
				<legend>매니저 id</legend>
				<input type="text" name="manager_id">
			</fieldset>
			<fieldset>
				<legend>로케이션 id</legend>
				<input type="text" name="location_id">
			</fieldset>
			
			<input type="submit" value="등록" id="submit">
			<!-- <button type="submit">등록</button> -->		
		</form>
	</div>
</body>
</html>