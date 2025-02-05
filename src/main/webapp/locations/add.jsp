<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Location 등록 페이지</h1>
	<form action="./addProcess.jsp" method="post">
		주소<input type="text" name="street_address">
		우편번호<input type="text" name="postal_code">
		도시명<input type="text" name="city">
		도<input type="text" name="state_province">
		나라id<input type="text" name="country_id">
		
		<input type="submit">
	</form>
</body>
</html>